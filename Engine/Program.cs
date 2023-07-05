using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BinInfo;
using FiSim.Engine.Extensions;
using FiSim.FaultModels;
using PlatformSim;
using PlatformSim.HwPeripherals;
using PlatformSim.Simulation;
using PlatformSim.Simulation.Platform.AArch32;
using UnicornManaged.Const;
using Trace = PlatformSim.Trace;

namespace FiSim.Engine {
    internal class Program {
        class MyConfig : Config {
            public bool UseAltData;

            public MyConfig(MyConfig config = null) : base(config) {
            }

            public override Config Clone() => new MyConfig(this) { UseAltData = UseAltData };
        }
        
        public static void Main(string[] args) {
            _initProcess(); 
            
            if(args.Length == 0)
            {
                Console.WriteLine("Empty args!");
                args = new string[2] { "Example", "p" }; 
            }

            var projectName = "Example";
            RunMode runMode = RunMode.NormalExecution;

            string[] result = args[1].Split(',');
            string run = result[0]; 
            string filePath = result[1];

            //Console.WriteLine(run + " " + filePath); 

            if (args.Length == 2) {
                projectName = args[0];

                switch (run.ToLower()) {
                    case "r":
                    case "run":
                        runMode = RunMode.NormalExecution;
                        break;
                    
                    case "v":
                    case "verify":
                        runMode = RunMode.VerifyExecution;
                        break;
                    
                    case "fault":
                        runMode = RunMode.FaultSimTUI;
                        break;
                    
                    case "fault-gui":
                        runMode = RunMode.FaultSimGUI;
                        break;

                    case "p":
                    case "program":
                        runMode = RunMode.ProgramExecution;
                        break;

                    default:
                        throw new Exception("Unknown run mode \""+args[1]+"\" provided!"); 
                }
            }

            Console.WriteLine("Starting...");

            string rootPath;

            if (Directory.Exists("Content")) {
                rootPath = Path.GetFullPath("Content");
            }
            else if (Directory.Exists("../../../Content")) {
                rootPath = Path.GetFullPath("../../../Content");
            }
            else {
                throw new Exception(
                    $"Cannot find exercise folder ({Path.GetFullPath("Content")} or {Path.GetFullPath("../../../Content")})");
            }
            
            var projectPath = Path.Combine(rootPath, projectName);
            
            if (!Directory.Exists(Path.Combine(projectPath, "bin"))) {
                throw new Exception("Project path missing: " + projectPath);
            }

            var flashBin = File.ReadAllBytes(Path.Combine(projectPath, "bin/aarch32/bl1.bin")); 
            var binInfo = BinInfoFactory.GetBinInfo(Path.Combine(projectPath, "bin/aarch32/bl1.elf"));


            //var a = File.ReadAllBytes(Path.Combine(projectPath, "bin/aarch32/bl1.bin"));
            //Console.WriteLine(".................................................................");
            //var b = File.ReadAllBytes(Path.Combine(projectPath, "bin/aarch32/bl1.elf"));

            //Console.WriteLine(GccExtensionMethods.areBinaryFilesEqual(Path.Combine(projectPath, "bin/aarch32/bl1.bin"), Path.Combine(projectPath, "bin/aarch32/bl1.elf"))); 

            //GccExtensionMethods.printBinInfo(binInfo);

            var otpPeripheral = new OtpPeripheral(Path.Combine(projectPath, "bin/otp.bin"));

            if (!File.Exists(Path.Combine(projectPath, "bin/otp.bin"))) {
                byte[] defaultOtpContent = {
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x72, 0x67, 0x44, 0xC0,
                    0x80, 0x7D, 0xA5, 0x82, 0xD5, 0xEA, 0xB0, 0xF7, 0xFA, 0x68, 0xD1, 0x8B,
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                };
                
                File.WriteAllBytes(Path.Combine(projectPath, "bin/otp.bin"), defaultOtpContent);
            }

            var startAddress = binInfo.Symbols["_start"].Address;

            //Console.WriteLine("startAddress: " + startAddress);

            var binLength = flashBin.Length;

            //Console.WriteLine("binLength: " + binLength); 

            //Console.WriteLine(Encoding.ASCII.GetString(flashBin));

            //var simConfig = new MyConfig();


            var simConfig = new MyConfig
            {
                Platform = Architecture.AArch32,
                EntryPoint = binInfo.Symbols["_start"].Address,
                StackBase = 0x80100000,
                MaxInstructions = 20000000,
                AddressSpace = new AddressSpace {
                    // OTP
                    { 0x12000000, otpPeripheral },
                    
                    // Next boot stage mem
                    { 0x32000000, new MemoryRegion { Size = 0x1000, Permission = MemoryPermission.RW  }  },
                    
                    // Code
                    { 0x80000000, new MemoryRegion { Data = flashBin, Size = 0x20000, Permission = MemoryPermission.RWX } },

                    // Stack
                    { 0x80100000, new MemoryRegion { Size = 0x10000, Permission = MemoryPermission.RW } },
                    
                    // Auth success / failed trigger
                    { 0xAA01000, new HwPeripheral((eng, address, size, value) => { eng.RequestStop(value == 1 ? Result.Completed : Result.Failed); }) },
                },
                BreakPoints = {
                    { binInfo.Symbols["flash_load_img"].Address, eng => {
                        var useAltData = ((MyConfig) eng.Config).UseAltData;

                        if (useAltData) {
                            eng.Write(0x32000000, Encoding.ASCII.GetBytes("!! Pwned boot !!"));
                        }
                        else {
                            eng.Write(0x32000000, Encoding.ASCII.GetBytes("Test Payload!!!!"));
                        }
                    } },
                    
                    // { binInfo.Symbols["memcmp"].Address, eng => {
                    //     var reg_r0 = eng.RegRead(Arm.UC_ARM_REG_R0);
                    //     var reg_r1 = eng.RegRead(Arm.UC_ARM_REG_R1);
                    //     var reg_r2 = eng.RegRead(Arm.UC_ARM_REG_R2);
                    //
                    //     var buf1 = eng.Read(reg_r0, new byte[reg_r2]);
                    //     var buf2 = eng.Read(reg_r1, new byte[reg_r2]);
                    //
                    //     Console.WriteLine(Utils.HexDump(buf1, reg_r0));
                    //     Console.WriteLine(Utils.HexDump(buf2, reg_r1));
                    // } },
                },
                Patches = {
                    { binInfo.Symbols["serial_putc"].Address, AArch32Info.A32_RET },
                },

                //OnCodeExecutionTraceEvent = eng => {
                //    Console.WriteLine($"I: {eng.CurrentInstruction.Address:x16} {eng.CurrentInstruction} {Utils.HexDump(eng.CurrentInstruction.Data)}");
                //    Console.WriteLine($"I: {eng.CurrentInstruction.Address:x16} {eng.CurrentInstruction}");
                //}
            };

            try {
                switch (runMode) {
                    case RunMode.NormalExecution:
                        otpPeripheral.PersistentChanges = true; 
                        _doNormalExecutionSim(simConfig, binInfo); 
                        break;
                    
                    case RunMode.VerifyExecution:
                        otpPeripheral.PersistentChanges = true;
                        _doABVerificationTestSim(simConfig, binInfo);
                        break; 

                    case RunMode.ProgramExecution:
                        //otpPeripheral.PersistentChanges = true; 
                        //_doCryptoAlgorithmFaultInjection(); 
                        _doProgramFaultInjection(filePath);  
                        break;

                    case RunMode.FaultSimGUI:
                    case RunMode.FaultSimTUI:
                        var glitchRange = new List<TraceRange>();

                        // Only simulate faults in glitchRange
                        // glitchRange.Add(new SymbolTraceRange(binInfo.Symbols["some_func"]));

                        // Simulate faults using the following fault models:
                        var faultModels = new IFaultModel[] {
                            //new CachedNopFetchInstructionModel(), 
                            new TransientNopInstructionModel(),
                            //new CachedSingleBitFlipInstructionModel(),
                            new TransientSingleBitFlipInstructionModel(),
                            //new CachedBusFetchNopInstructionModel()
                        };
                        
                        if (runMode == RunMode.FaultSimGUI)
                            _doGUIFaultSim(simConfig, binInfo, faultModels, glitchRange);
                        else
                            _doTUIFaultSim(simConfig, binInfo, faultModels, glitchRange);

                        break;

                    default:
                        Console.WriteLine("Internal error: not supported run mode");
                        Environment.Exit(-1);
                        break;
                }
            }
            catch (SimulationException ex) when (!Debugger.IsAttached) {
                Console.Error.WriteLine();
                Console.Error.WriteLine("Error: " + ex.Message);
                Console.Error.WriteLine();

                if (ex is PlatformEngineException exception) {
                    exception.Engine.DumpState(Console.Error, binInfo);
                }
            }
            catch (Exception e) when (!Debugger.IsAttached)  {
                Console.Out.WriteLine("Internal error: " + e.Message);
                Console.Out.WriteLine(e);

                Environment.Exit(-1);
            }
        }




        public static async void _doCryptoAlgorithmFaultInjection() 
        {

            Console.Out.WriteLine("Program Fault Injection");

            string filePath;

            if (Directory.Exists("../../../Content/Example/crypto"))
            {
                filePath = "../../../Content/Example/crypto";
            }
            else
            {
                throw new Exception("File path missing");
            }


            string[] algorithms = { "sha1", "sha256", "TripleDES", "AES" };

            //string fileName = "aes-256";
            //string fileName = "TripleDES";
            //string fileName = "sha1";
            string fileName = "sha256"; 
            //string fileName = "test"; 

            //foreach (string fileName in algorithms)
            //{
            Console.WriteLine("Running " + fileName); 

                string cFilePath = Path.Combine(filePath, fileName + ".c");
                string asmFilePath = Path.Combine(filePath, fileName + ".S");
                string outputPath = Path.Combine(filePath, fileName + ".out");


                ExtensionMethods.compileCProgramToAssembly(cFilePath, asmFilePath);
                ExtensionMethods.compileAssemblyProgramToBinary(asmFilePath, outputPath);
                string output = await ExtensionMethods.runBinary(outputPath);
                
                //Console.WriteLine(output);

                //string assemblyCode = File.ReadAllText(asmFilePath);

                //// Split the assembly code into individual instructions
                //string[] instructions = assemblyCode.Split(new[] { '\n', '\r' }, StringSplitOptions.RemoveEmptyEntries);


                //foreach (var x in instructions)
                //{
                //    Console.WriteLine(x);
                //}


                Dictionary<string, bool> skipDictionary = InstructionSkippingFaultModel.skipInstructions(asmFilePath, filePath, output).Result;
                Dictionary<string, bool> flipDictionary = new Dictionary<string, bool>();

                int flipRunCount = 100; 

                
                for (int i = 0; i < flipRunCount; i++)
                    {
                        Console.WriteLine("Loop iteration: " + i);
                        flipDictionary = BitFlippingFaultModel.instrcutionBitFlip(filePath, outputPath, output).Result;
                    }
            //}


            List<ExecutedFaultModels> faultModels = new List<ExecutedFaultModels>
            {
                new ExecutedFaultModels
                {
                    RunCount = File.ReadAllText(asmFilePath).Split(new[] { '\n', '\r' }, StringSplitOptions.RemoveEmptyEntries).Length,
                    Instrcution = skipDictionary, 
                    SuccessfulFaults = skipDictionary.Count(kv => kv.Value == true)
                },
                new ExecutedFaultModels { RunCount = flipRunCount, 
                    Instrcution = flipDictionary, 
                    SuccessfulFaults =  flipDictionary.Count(kv => kv.Value == true)}
            };


            PDFGenerator.generatePDF(Path.Combine(filePath, "../"+fileName+".pdf"), new PDFModel { Name = fileName, FaultModels = faultModels }); 
        }




        private async static void _doProgramFaultInjection(string filePath) //MyConfig simConfig, IBinInfo binInfo, IFaultModel[] faultModels, IEnumerable<TraceRange> glitchRange
        {

            if (filePath.Equals(""))
            {
                Console.WriteLine("bin or elf file could not be found!");
                throw new FileNotFoundException("bin or elf file could not be found!");
            }
            else
            {
                string fileNameWithoutExtension = Path.GetFileNameWithoutExtension(filePath);
                string directoryPath = Path.GetDirectoryName(filePath);
                string elfFilePath = Path.Combine(directoryPath, fileNameWithoutExtension + ".elf");
                string binFilePath = Path.Combine(directoryPath, fileNameWithoutExtension + ".bin");



                if (File.Exists(elfFilePath) && File.Exists(binFilePath))
                {

                    IBinInfo binInfo = BinInfoFactory.GetBinInfo(elfFilePath);


                    var otpPeripheral = new OtpPeripheral(Path.Combine(directoryPath, "otp.bin"));

                    if (!File.Exists(Path.Combine(directoryPath, "otp.bin")))
                    {
                        byte[] defaultOtpContent = {
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x72, 0x67, 0x44, 0xC0,
                        0x80, 0x7D, 0xA5, 0x82, 0xD5, 0xEA, 0xB0, 0xF7, 0xFA, 0x68, 0xD1, 0x8B,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    };

                        File.WriteAllBytes(Path.Combine(directoryPath, "otp.bin"), defaultOtpContent);
                    }

                    try
                    {
                        MyConfig simConfig = new MyConfig
                        {
                            Platform = Architecture.AArch32,
                            EntryPoint = binInfo.Symbols["_start"].Address,
                            StackBase = 0x108000,
                            MaxInstructions = 2000000000,
                            AddressSpace = new AddressSpace { 
                         // OTP
                        { 0x1000, otpPeripheral },                 
                        // Code 
                        { 0x8000, new MemoryRegion { Data = File.ReadAllBytes(binFilePath), Size = 0x100000, Permission = MemoryPermission.RWX } },
                        // Stack 
                        { 0x108000, new MemoryRegion { Size = 0x100000, Permission = MemoryPermission.RW } },
                        //Data Segments 
                        { 0x208000, new MemoryRegion { Size = 0x10000, Permission = MemoryPermission.RW  }  }
                    },
                            BreakPoints = { },
                            Patches = { }
                        };


                        var glitchRange = new List<TraceRange>();
                        var faultModels = new IFaultModel[] {
                                new TransientNopInstructionModel(),
                                new TransientSingleBitFlipInstructionModel()};


                        Console.WriteLine("Starting the generation of the execution trace...");

                        Trace programTrace = _getSimulationTrace(simConfig, binInfo, faultModels, glitchRange);

                        Console.WriteLine("Trace: " + programTrace);
                        Console.WriteLine("Trace.AmountInstuctionsExecuted: " + programTrace.AmountInstuctionsExecuted);
                        Console.WriteLine("Trace.AmountUniqueInstuctionsExecuted: " + programTrace.AmountUniqueInstuctionsExecuted);
                        Console.WriteLine(programTrace.InstructionTrace.Count);



                        var totalRuns = 0ul;
                        foreach (var faultModel in faultModels)
                        {
                            totalRuns += faultModel.CountUniqueFaults(programTrace);
                        }

                        Console.Out.WriteLine(" " + faultModels.Length + "/" + totalRuns);
                        Console.Error.WriteLine(totalRuns);

                        //simConfig.UseAltData = true;

                        var faultSim = new FaultSimulator(simConfig);

                        faultSim.OnGlitchSimulationCompleted += (runs, eng, result) =>
                        {
                            Console.Error.WriteLine($"{result.Fault.FaultModel.Name}::{result.Result}::{result.Fault.FaultAddress:x8}::" +
                                                    $"{result.Fault.ToString()}::{(result.Result == Result.Exception ? result.Exception.Message : "")}");

                            return false;
                        };

                        faultSim.RunSimulation(faultModels, programTrace);

                        Environment.Exit(0);

                    }
                    catch (Exception e)
                    {
                        Console.WriteLine("Error!");
                        Console.WriteLine(e);
                    }



                }
                else
                {
                    Console.WriteLine("bin or elf file could not be found!");
                    throw new FileNotFoundException("bin or elf file could not be found!");
                }

            }


        }



        private static Trace _getSimulationTrace(MyConfig simConfig, IBinInfo binInfo, IFaultModel[] faultModels, IEnumerable<TraceRange> glitchRange)
        {
            Trace trace = null;
            try
            {
                var normalFipSim = new Simulator(simConfig);

                //simConfig.UseAltData = true;
                //var altFipSim = new Simulator(simConfig);

                    //Console.WriteLine("Starting program trace...");


                    Result result;
                    (result, trace) = normalFipSim.TraceSimulation2();

                    if (result != Result.Completed)
                    {
                        Console.Out.WriteLine("Simulation did not complete; result: " + result);
                        Environment.Exit(-1);
                    }

                    Console.WriteLine("Finished sign trace"); 

            }
            catch (SimulationException ex)
            {
                Console.Out.WriteLine("Exception: " + ex.Message);
                Console.Out.WriteLine();

                if (ex is PlatformEngineException exception)
                {
                    Console.Out.WriteLine("PlatformEngineException: ");
                    exception.Engine.DumpState(Console.Out, binInfo);
                }
            }

            return trace; 
        }



        private static void _initProcess() {
            // Make this process low priority
            var thisProc = Process.GetCurrentProcess();
            thisProc.PriorityClass = ProcessPriorityClass.Idle;
        }

        private static void _doNormalExecutionSim(MyConfig simConfig, IBinInfo binInfo) {
            // enable serial
            simConfig.BreakPoints.Add(binInfo.Symbols["serial_putc"].Address, eng => {
                Console.Write((char) eng.RegRead(Arm.UC_ARM_REG_R0));
            });
            
            var sim = new Simulator(simConfig);
            
            var simResult = sim.RunSimulation();

            Console.WriteLine("Result: " + simResult);
        }
        
        private static void _doABVerificationTestSim(MyConfig simConfig, IBinInfo binInfo) {
            try {
                Console.Out.WriteLine("Verify functional behavior...");

                // *** GOOD SIGN *** //
                var sim = new Simulator(simConfig);
                
                sim.Config.BreakPoints.Add(binInfo.Symbols["serial_putc"].Address, eng => {
                    Console.Out.Write((char) eng.RegRead(Arm.UC_ARM_REG_R0));
                });

                var simResult = sim.RunSimulation();

                if (simResult != Result.Completed) {
                    Console.Out.WriteLine("Incorrect behavior ("+simResult+") with signed payload!");
                    Environment.Exit(-1);
                }
                
                // *** Incorrect SIGN *** //
                simConfig.UseAltData = true;

                ((OtpPeripheral) simConfig.AddressSpace[0x12000000]).PersistentChanges = false;

                sim = new Simulator(simConfig);
                
                sim.Config.BreakPoints.Add(binInfo.Symbols["serial_putc"].Address, eng => {
                    Console.Out.Write((char) eng.RegRead(Arm.UC_ARM_REG_R0));
                });

                simResult = sim.RunSimulation();

                if (simResult != Result.Failed && simResult != Result.Timeout) {
                    Console.Out.WriteLine($"Incorrect behavior ({simResult.ToString()}) with incorrectly signed payload!");
                    Environment.Exit(-1);
                }

                Console.Out.WriteLine("Verification finished. Bootloader is verified to work as intended.");
                Environment.Exit(0);
            }
            catch (SimulationException ex) {
                Console.Out.WriteLine(ex.Message);
                Console.Out.WriteLine();
                    
                if (ex is PlatformEngineException exception) {
                    exception.Engine.DumpState(Console.Out, binInfo);
                }

                Environment.Exit(-1);
            }
        }
        
         private static void _doGUIFaultSim(MyConfig simConfig, IBinInfo binInfo, IFaultModel[] faultModels, IEnumerable<TraceRange> glitchRange) {
             Console.WriteLine("Starting simulation... This will take several minutes.");
            
             // Good / Bad simulation
             _doFaultSimTrace(simConfig, binInfo, glitchRange, out var correctSignTraceData, out var wrongSignTraceData);
            
             Console.Out.Write($"{correctSignTraceData.AmountInstuctionsExecuted}/{correctSignTraceData.AmountUniqueInstuctionsExecuted} " + 
                               $"{wrongSignTraceData.AmountInstuctionsExecuted}/{wrongSignTraceData.AmountUniqueInstuctionsExecuted}");

            //foreach (var x in correctSignTraceData.InstructionTrace)
            //{
            //    Console.WriteLine(x.ToString());
            //}

                var totalRuns = 0ul;
            foreach (var faultModel in faultModels) {
                totalRuns += faultModel.CountUniqueFaults(wrongSignTraceData);
            }
            
            Console.Out.WriteLine(" " + faultModels.Length + "/" +totalRuns);
            Console.Error.WriteLine(totalRuns);
            
            simConfig.UseAltData = true;
            
            var faultSim = new FaultSimulator(simConfig);

            faultSim.OnGlitchSimulationCompleted += (runs, eng, result) => {
                Console.Error.WriteLine($"{result.Fault.FaultModel.Name}::{result.Result}::{result.Fault.FaultAddress:x8}::"+
                                        $"{result.Fault.ToString()}::{(result.Result == Result.Exception?result.Exception.Message:"")}");

                return false;
            };

            faultSim.RunSimulation(faultModels, wrongSignTraceData);
            
            Environment.Exit(0);
        }
         
         private static void _doTUIFaultSim(MyConfig simConfig, IBinInfo binInfo, IFaultModel[] faultModels, IEnumerable<TraceRange> glitchRange) {
            Console.WriteLine("Starting simulation... This will take several minutes.");
            
            // Good / Bad simulation
            _doFaultSimTrace(simConfig, binInfo, glitchRange, out var correctSignTraceData, out var wrongSignTraceData);
            
            simConfig.UseAltData = true;
            
            var faultSim = new FaultSimulator(simConfig);

            faultSim.OnGlitchSimulationCompleted += (runs, eng, result) => {
                if (result.Result == Result.Completed) {
                    Console.WriteLine($"{result.Fault.FaultModel.Name} {result.Fault.ToString()} {binInfo.Symbolize(result.Fault.FaultAddress)}");
                }

                return false;    
            };

            faultSim.RunSimulation(faultModels, wrongSignTraceData);
            
            Environment.Exit(0);
        }

         private static void _doFaultSimTrace(MyConfig simConfig, IBinInfo binInfo, IEnumerable<TraceRange> glitchRange, 
                                              out Trace correctSignTraceDataOut, out Trace wrongSignTraceDataOut) { 

             Trace correctSignTraceData = null;
             Trace wrongSignTraceData = null;
             
             try {
                var normalFipSim = new Simulator(simConfig);
                
                simConfig.UseAltData = true;
                var altFipSim = new Simulator(simConfig);

                var task1 = Task.Run(() => {
                    Console.WriteLine("Start correct sign trace");
                    
                    Result correctSignResult;
                    (correctSignResult, correctSignTraceData) = normalFipSim.TraceSimulation();

                    if (correctSignResult != Result.Completed) {
                        Console.Out.WriteLine("Simulation did not complete; result: " + correctSignResult);
                        Environment.Exit(-1);
                    }
                    
                    Console.WriteLine("Finished correct sign trace");
                });
                
                var task2 = Task.Run(() => {
                    Console.WriteLine("Start wrong sign trace");
                    
                    Result wrongSignResult;
                    (wrongSignResult, wrongSignTraceData) = altFipSim.TraceSimulation(glitchRange);

                    if (wrongSignResult != Result.Failed && wrongSignResult != Result.Timeout) {
                        Console.Out.WriteLine("Simulation did not fail; result: " + wrongSignResult);
                        Environment.Exit(-1);
                    }
                    
                    Console.WriteLine("Finished wrong sign trace");
                });

                task1.Wait();
                task2.Wait();
             }
            catch (SimulationException ex) {
                Console.Out.WriteLine(ex.Message);
                Console.Out.WriteLine();

                if (ex is PlatformEngineException exception) {
                    exception.Engine.DumpState(Console.Out, binInfo);
                }

                Environment.Exit(-1);
            }

            correctSignTraceDataOut = correctSignTraceData;
            wrongSignTraceDataOut = wrongSignTraceData;

            //Console.Write("Printing the Trace object. ");

            //Console.Write(" correctSignTraceDataOut.AmountInstuctionsExecuted: ");
            //Console.Write(correctSignTraceDataOut.AmountInstuctionsExecuted);
            //Console.Write(" correctSignTraceDataOut.AmountUniqueInstuctionsExecuted: ");
            //Console.Write(correctSignTraceDataOut.AmountUniqueInstuctionsExecuted);
            //Console.Write("      ");

            //foreach (var x in correctSignTraceDataOut.InstructionTrace)
            //{
            //    Console.Write(x);
            //} 


            //foreach (var x in correctSignTraceDataOut.InstructionHitCount)
            //{
            //    Console.Write("Key");
            //    Console.Write(x.Key);
            //    foreach (var y in x.Value)
            //    {
            //        Console.Write("Value");
            //        Console.Write(y);
            //    }
            //}



        }

        public void programSimulationMethod()
        {

            //Console.Out.WriteLine(simConfig); 
            //Console.Out.WriteLine(binInfo);
            //Console.Out.WriteLine("Program Fault Injection");

            //string filePath;

            //if (Directory.Exists("../../../Content/Example/programs"))
            //{
            //    filePath = "../../../Content/Example/programs";
            //}
            //else
            //{
            //    throw new Exception("File path missing");
            //}


            //string file = File.ReadAllText(Path.Combine(filePath, "test.c"));
            //Console.WriteLine(file);

            // Specify the input C code file
            //string cFilePath = Path.Combine(filePath, "test.c");
            //string cFilePath = Path.Combine(filePath, "test-1.c");
            //string cFilePath = Path.Combine(filePath, "test-2.c");

            // Specify the output assembly file
            //string asmFilePath = Path.Combine(filePath, "output.asm");
            //string asmFilePath = Path.Combine(filePath, "output.S"); 
            //string asmFilePath = Path.Combine(filePath, "test.asm");


            //Specify the output out file 
            //string outputPath = Path.Combine(filePath, "output.o");
            //string outputPath = Path.Combine(filePath, "output.out"); 
            //string outputPath = Path.Combine(filePath, "test.out");


            //Specify the output elf file 
            //string elfFilePath = Path.Combine(filePath, "elfOutput.elf");
            //string elfFilePath = Path.Combine(filePath, "ccout.elf"); 
            //string elfFilePath = Path.Combine(filePath, "example.elf"); 
            //string elfFilePath = Path.Combine(filePath, "test-arm.elf");
            //string elfFilePath = Path.Combine(filePath, "test-win.elf"); 

            //string binFilePath = Path.Combine(filePath, "test-arm.bin");


            //string elfFilePath = Path.Combine(filePath, "elf-aarch64.elf");  
            //string binFilePath = Path.Combine(filePath, "bin-aarch64.bin");




            //string elfFilePath = Path.Combine(filePath, "elf-arm.elf");
            //string binFilePath = Path.Combine(filePath, "bin-arm.bin");




            //GccExtensionMethods.compileCProgramToAssembly(cFilePath, asmFilePath);
            //GccExtensionMethods.compileAssemblyProgramToBinary(asmFilePath, outputPath); 
            //GccExtensionMethods.compileCProgramToBinary(cFilePath, outputPath); 
            //GccExtensionMethods.compileCProgramToBinary(cFilePath, elfFilePath); //Cross Compilation is not yet supported in this method 
            //string output = await GccExtensionMethods.runBinary(outputPath);
            //string output = GccExtensionMethods.runBinary(elfFilePath); 
            //Console.WriteLine(output);


            //Uncomment this piece of code to run a simple example 
            //string outputPath = Path.Combine(filePath, "output.out"); 
            //string output = GccExtensionMethods.runBinary(outputPath).Result;
            //Console.WriteLine(output);
            //skipInstructions(asmFilePath, filePath, output); 
            //for (int i = 0; i < 100; i++)
            //{
            //    Console.WriteLine("Loop iteration: " + i);
            //    instrcutionBitFlip(filePath, outputPath, output);
            //}


            //PDFGenerator.generatePDF(Path.Combine(filePath, "output.pdf"), new PDFModel { Name = "Test PDF File"}); 

            //File.WriteAllText(Path.Combine(filePath, "1.txt"), string.Join(" ", File.ReadAllBytes(elfFilePath).Select(b => "0x" + b.ToString("X2"))));
            //File.WriteAllText(Path.Combine(filePath, "2.txt"), string.Join(" ", File.ReadAllBytes(binFilePath).Select(b => "0x" + b.ToString("X2"))));



            //Crypto file paths 
            //string elfFilePath = Path.Combine(filePath, "../crypto/elf-arm-aes.elf");
            //string binFilePath = Path.Combine(filePath, "../crypto/bin-arm-aes.bin");


            //string elfFilePath = Path.Combine(filePath, "../crypto/AES_elf.elf");
            //string binFilePath = Path.Combine(filePath, "../crypto/AES_bin.bin");



            //string elfFilePath = Path.Combine(filePath, "../crypto/bl1.elf");
            //string binFilePath = Path.Combine(filePath, "../crypto/bl1.bin");


            //string elfFilePath = Path.Combine(filePath, "../crypto/crypto_kem_kyber768_m4_test.elf");
            //string binFilePath = Path.Combine(filePath, "../crypto/crypto_kem_kyber768_m4_test.bin");




            //string elfFilePath = Path.Combine(filePath, "../files/aes-in-c.elf");
            //string binFilePath = Path.Combine(filePath, "../files/aes-in-c.bin");



            //string elfFilePath = Path.Combine(filePath, "../files/aes-256.elf");
            //string binFilePath = Path.Combine(filePath, "../files/aes-256.bin"); 


            //IBinInfo binInfo = BinInfoFactory.GetBinInfo(elfFilePath);

            //GccExtensionMethods.printBinInfo(binInfo); 
            //Console.WriteLine(binInfo.Symbols.All.FirstOrDefault());  
            //Console.WriteLine(binInfo);

            //foreach (var item in binInfo.Symbols.All) 
            //{
            //    Console.WriteLine(item.Address);
            //    Console.WriteLine(item.Name);
            //    Console.WriteLine(item.Size); 
            //}

            //var otpPeripheral = new OtpPeripheral(Path.Combine(filePath, "otp.bin"));

            //if (!File.Exists(Path.Combine(filePath, "otp.bin")))
            //{
            //    byte[] defaultOtpContent = {
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x72, 0x67, 0x44, 0xC0,
            //        0x80, 0x7D, 0xA5, 0x82, 0xD5, 0xEA, 0xB0, 0xF7, 0xFA, 0x68, 0xD1, 0x8B,
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            //    };

            //    File.WriteAllBytes(Path.Combine(filePath, "otp.bin"), defaultOtpContent);
            //}

            ////Console.WriteLine("Creating config!");


            //var startAddress = binInfo.Symbols["_start"].Address;

            ////Console.WriteLine("startAddress: " + startAddress);

            //var binLength = File.ReadAllBytes(binFilePath).Length;

            ////Console.WriteLine("binLength: " + binLength);

            ////Console.WriteLine(Encoding.ASCII.GetString(File.ReadAllBytes(binFilePath))); 

            ////MyConfig simConfig = new MyConfig();


            ////byte[] binaryData = {
            ////    0xE3, 0xA0, 0x00, 0x00, // mov r0, #0
            ////    0xE3, 0xA0, 0x0C, 0xFF, // mov r0, #0xFF0C
            ////    0xE0, 0x2F, 0xFF, 0x1E, // mvn r15, #0xFF00
            ////    0x00, 0x00, 0x00, 0x00  // nop
            ////}; 

            //try
            //{
            //    MyConfig simConfig = new MyConfig
            //    {
            //        Platform = Architecture.AArch32,
            //        EntryPoint = binInfo.Symbols["_start"].Address,
            //        StackBase = 0x108000,
            //        //StackBase = 0x90000000,
            //        MaxInstructions = 2000000000,
            //        AddressSpace = new AddressSpace { 
            //         // OTP
            //        { 0x1000, otpPeripheral },

            //        // Next boot stage mem
            //        //{ 0x32000000, new MemoryRegion { Size = 0x1000, Permission = MemoryPermission.RW  }  },

            //        // Code 
            //        //{ 0x7FF00000, new MemoryRegion { Data = File.ReadAllBytes(binFilePath), Size = 0x20000000, Permission = MemoryPermission.RWX } },
            //        { 0x8000, new MemoryRegion { Data = File.ReadAllBytes(binFilePath), Size = 0x100000, Permission = MemoryPermission.RWX } },
            //        //{ 0x8100, new MemoryRegion { Data = binaryData, Size = 0x100000, Permission = MemoryPermission.RWX } },

            //        // Stack 
            //        //{ 0x90000000, new MemoryRegion { Size = 0x10000000, Permission = MemoryPermission.RW } },
            //        { 0x108000, new MemoryRegion { Size = 0x100000, Permission = MemoryPermission.RW } },


            //        //Unmapped Error Memory                     
            //        //{ 0x100000000, new MemoryRegion { Size = 0x10000000, Permission = MemoryPermission.RW  }  }
            //        { 0x208000, new MemoryRegion { Size = 0x10000, Permission = MemoryPermission.RW  }  }

            //        // Auth success / failed trigger
            //        //{ 0xAA01000, new HwPeripheral((eng, address, size, value) => { eng.RequestStop(value == 1 ? Result.Completed : Result.Failed); }) }, 
            //    },
            //        BreakPoints = {
            //        //{ binInfo.Symbols["flash_load_img"].Address, eng => {
            //        //    var useAltData = ((MyConfig) eng.Config).UseAltData;

            //        //    if (useAltData) {
            //        //        eng.Write(0x32000000, Encoding.ASCII.GetBytes("!! Pwned boot !!"));
            //        //    }
            //        //    else {
            //        //        eng.Write(0x32000000, Encoding.ASCII.GetBytes("Test Payload!!!!"));
            //        //    }
            //        //} }, 
            //    },
            //        Patches = {
            //        //{ binInfo.Symbols["serial_putc"].Address, AArch64Info.RET },
            //    }
            //    };


            //    var glitchRange = new List<TraceRange>();
            //    var faultModels = new IFaultModel[] {
            //                new TransientNopInstructionModel(),
            //                new TransientSingleBitFlipInstructionModel()};


            //    Console.WriteLine("Starting the generation of the execution trace...");

            //    Trace programTrace = _getSimulationTrace(simConfig, binInfo, faultModels, glitchRange);

            //    Console.WriteLine("Trace: " + programTrace);
            //    Console.WriteLine("Trace.AmountInstuctionsExecuted: " + programTrace.AmountInstuctionsExecuted);
            //    Console.WriteLine("Trace.AmountUniqueInstuctionsExecuted: " + programTrace.AmountUniqueInstuctionsExecuted);


            //    Console.WriteLine(programTrace.InstructionTrace.Count); 

            //    //string s = ""; 
            //    foreach (var x in programTrace.InstructionTrace)
            //    {
            //        //Console.WriteLine("Instruction: " + x.ToString());
            //        //s += x.ToString() + Environment.NewLine;                    

            //        //Console.WriteLine(x.Address);
            //        //Console.WriteLine(string.Join("", x.Data.Select(b => Convert.ToString(b, 2).PadLeft(8, '0'))));
            //        //Console.WriteLine(x.Mnemonic);
            //        //Console.WriteLine(x.Operand);  
            //    }

            //    //File.WriteAllText(Path.Combine(filePath, "s.txt"), s); 


            //    //Uncomment this code later 
            //    var totalRuns = 0ul;
            //    foreach (var faultModel in faultModels)
            //    {
            //        totalRuns += faultModel.CountUniqueFaults(programTrace);
            //    }

            //    Console.Out.WriteLine(" " + faultModels.Length + "/" + totalRuns);
            //    Console.Error.WriteLine(totalRuns);

            //    //simConfig.UseAltData = true;

            //    var faultSim = new FaultSimulator(simConfig);

            //    faultSim.OnGlitchSimulationCompleted += (runs, eng, result) =>
            //    {
            //        Console.Error.WriteLine($"{result.Fault.FaultModel.Name}::{result.Result}::{result.Fault.FaultAddress:x8}::" +
            //                                $"{result.Fault.ToString()}::{(result.Result == Result.Exception ? result.Exception.Message : "")}");

            //        return false;
            //    };

            //    faultSim.RunSimulation(faultModels, programTrace);

            //    Environment.Exit(0);

            //}
            //catch (Exception e)
            //{
            //    Console.WriteLine("Error!");
            //    Console.WriteLine(e);
            //}










            //byte[] byteArray = File.ReadAllBytes(outputPath); 
            //string hexString = BitConverter.ToString(byteArray);
            //hexString = hexString.Replace("-", " "); 
            //Console.WriteLine(hexString);  // Print the byte array as a space-separated hexadecimal string 
            //string binaryString = Convert.ToString(Convert.ToInt32(hexString, 16), 2).PadLeft(hexString.Length * 4, '0');
            //Console.WriteLine(binaryString);





            //// Read the C file
            //byte[] fileBytes = File.ReadAllBytes(cFilePath);

            //Console.WriteLine(fileBytes);

            //for (int i = 0; i < fileBytes.Length; i++)
            //{
            //    Console.Write(fileBytes[i] + " ");  // Print each byte with a space separator
            //}
            //Console.WriteLine(); 

            //// Convert each byte to binary string representation
            //string binaryString = "";
            //foreach (byte b in fileBytes)
            //{
            //    string byteBinary = Convert.ToString(b, 2).PadLeft(8, '0');  // Convert byte to binary string
            //    binaryString += byteBinary;
            //}

            //// Display the binary contents
            //Console.WriteLine(binaryString);










            //var flashBinProgram = File.ReadAllBytes(Path.Combine(filePath, "bin/aarch32/bl1.bin"));
            //var binInfoProgram = BinInfoFactory.GetBinInfo(Path.Combine(filePath, "bin/aarch32/bl1.elf"));
            //var otpPeripheral = new OtpPeripheral(Path.Combine(filePath, "bin/otp.bin"));


            //try { 
            //} 
            //catch (SimulationException ex)
            //{
            //    Console.Out.WriteLine(ex.Message);
            //    Console.Out.WriteLine();

            //    if (ex is PlatformEngineException exception)
            //    {
            //        exception.Engine.DumpState(Console.Out, binInfoProgram); 
            //    }

            //}


            //if (!File.Exists(Path.Combine(filePath, "bin/otp.bin")))
            //{
            //    byte[] defaultOtpContent = {
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x72, 0x67, 0x44, 0xC0,
            //        0x80, 0x7D, 0xA5, 0x82, 0xD5, 0xEA, 0xB0, 0xF7, 0xFA, 0x68, 0xD1, 0x8B,
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            //        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            //    };

            //    File.WriteAllBytes(Path.Combine(filePath, "bin/otp.bin"), defaultOtpContent);
            //}



            //var simConfigProgram = new MyConfig
            //{
            //    Platform = Architecture.AArch32,
            //    EntryPoint = binInfoProgram.Symbols["_start"].Address,
            //    StackBase = 0x80100000,
            //    MaxInstructions = 20000000,
            //    AddressSpace = new AddressSpace {
            //        // OTP
            //        { 0x12000000, otpPeripheral },

            //        // Next boot stage mem
            //        { 0x32000000, new MemoryRegion { Size = 0x1000, Permission = MemoryPermission.RW }  },

            //        // Code
            //        { 0x80000000, new MemoryRegion { Data = flashBinProgram, Size = 0x20000, Permission = MemoryPermission.RWX } },

            //        // Stack
            //        { 0x80100000, new MemoryRegion { Size = 0x10000, Permission = MemoryPermission.RW } },

            //        // Auth success / failed trigger
            //        { 0xAA01000, new HwPeripheral((eng, address, size, value) => { eng.RequestStop(value == 1 ? Result.Completed : Result.Failed); }) },
            //    },
            //    BreakPoints = {
            //        { binInfoProgram.Symbols["flash_load_img"].Address, eng => {
            //            var useAltData = ((MyConfig) eng.Config).UseAltData;

            //            if (useAltData) {
            //                eng.Write(0x32000000, Encoding.ASCII.GetBytes("!! Pwned boot !!"));
            //            }
            //            else {
            //                eng.Write(0x32000000, Encoding.ASCII.GetBytes("Test Payload!!!!"));
            //            }
            //        } },
            //    },
            //    Patches = {
            //        { binInfoProgram.Symbols["serial_putc"].Address, AArch32Info.A32_RET },
            //    },
            //};


            //var glitchRangeProgram = new List<TraceRange>();
            //// Simulate faults using the following fault models:
            //var faultModelsProgram = new IFaultModel[] {
            //                new TransientNopInstructionModel(),
            //                new TransientSingleBitFlipInstructionModel(),
            //            };




            //Console.WriteLine("Starting Program simulation. ");

            ////Simulation 
            //// Good / Bad simulation
            ////_doFaultSimTrace(simConfig, binInfo, glitchRange, out var correctSignTraceData, out var wrongSignTraceData);

            //var trace = _getSimulationTrace(simConfigProgram, binInfoProgram, glitchRangeProgram); 


            //var totalRuns = 0ul;
            //foreach (var faultModel in faultModelsProgram)
            //{
            //    totalRuns += faultModel.CountUniqueFaults(trace);
            //}

            ////Console.Out.WriteLine(" " + faultModels.Length + "/" + totalRuns);
            ////Console.Error.WriteLine(totalRuns);

            //simConfigProgram.UseAltData = true;

            //var faultSim = new FaultSimulator(simConfigProgram);

            ////faultSim.OnGlitchSimulationCompleted += (runs, eng, result) => {
            ////    Console.Error.WriteLine($"{result.Fault.FaultModel.Name}::{result.Result}::{result.Fault.FaultAddress:x8}::" +
            ////                            $"{result.Fault.ToString()}::{(result.Result == Result.Exception ? result.Exception.Message : "")}");

            ////    return false;
            ////};

            //faultSim.RunSimulation(faultModelsProgram, trace);

            //Environment.Exit(0);
        }

    }
}