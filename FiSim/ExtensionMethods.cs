using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace FiSim
{
    public static class ExtensionMethods
    {
        static readonly string gccPath = @"C:\MinGW\bin\gcc.exe";
        //static readonly string nasmPath = @"C:\Program Files\NASM\nasm.exe";

        //GCC for Cross Compilation 
        //static readonly string gccPath = @"C:\Users\User\Downloads\gcc-arm-10.3-2021.07-mingw-w64-i686-arm-none-linux-gnueabihf\bin\arm-none-linux-gnueabihf-gcc.exe";

        public static void compileCProgramToAssembly(string cFilePath, string asmFilePath)
        {
            try
            {
                string compilerArguments = "-S " + cFilePath + " -o " + asmFilePath;
                ProcessStartInfo startInfo = new ProcessStartInfo(gccPath, compilerArguments);
                startInfo.RedirectStandardOutput = true;
                startInfo.RedirectStandardError = true;
                startInfo.UseShellExecute = false;
                Process compilerProcess = Process.Start(startInfo);
                compilerProcess.WaitForExit();

                if (compilerProcess.ExitCode == 0)
                {
                    return;
                }
                else
                {
                    Console.WriteLine("Compilation failed. Exit code: " + compilerProcess.ExitCode);
                    Console.WriteLine("Error message:\n" + compilerProcess.StandardError.ReadToEnd());
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error compiling the C program: " + e.Message);
            }
        }


        public static void compileAssemblyProgramToBinary(string asmFilePath, string outputPath)
        {
            try
            {
                string executionArguments = asmFilePath + " -o " + outputPath;
                ProcessStartInfo startInfoExecution = new ProcessStartInfo(gccPath, executionArguments);
                startInfoExecution.RedirectStandardOutput = true;
                startInfoExecution.RedirectStandardError = true;
                startInfoExecution.UseShellExecute = false;
                Process compilerProcessExecution = Process.Start(startInfoExecution);
                compilerProcessExecution.WaitForExit();


                if (compilerProcessExecution.ExitCode == 0)
                {
                    return;
                }
                else
                {
                    Console.WriteLine("Compilation failed. ");
                    Console.WriteLine("Error message:\n" + compilerProcessExecution.StandardOutput.ReadToEnd());
                    return;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error compiling the C program: " + e.Message);
                return;
            }
        }


        public static void compileCProgramToBinary(string cFilePath, string elfFilePath)
        {
            try
            {
                string compilerArguments = " -o " + elfFilePath + " " + cFilePath;
                ProcessStartInfo startInfo = new ProcessStartInfo(gccPath, compilerArguments);
                startInfo.RedirectStandardOutput = true;
                startInfo.RedirectStandardError = true;
                startInfo.UseShellExecute = false;
                Process compilerProcess = Process.Start(startInfo);
                compilerProcess.WaitForExit();

                if (compilerProcess.ExitCode == 0)
                {
                    return;
                }
                else
                {
                    Console.WriteLine("Compilation failed. Exit code: " + compilerProcess.ExitCode);
                    Console.WriteLine("Error message:\n" + compilerProcess.StandardError.ReadToEnd());
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error compiling the C program: " + e.Message);
            }
        }

        public async static Task<string> runBinary(string outputPath)
        {
            try
            {
                ProcessStartInfo startInfoRun = new ProcessStartInfo(outputPath);
                startInfoRun.RedirectStandardOutput = true;
                startInfoRun.RedirectStandardError = true;
                startInfoRun.UseShellExecute = false;
                //startInfoRun.WindowStyle = ProcessWindowStyle.Hidden;
                Process runProcess = Process.Start(startInfoRun);
                //runProcess.PriorityClass = ProcessPriorityClass.Idle;

                CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
                int timeoutMilliseconds = 30000; //30 seconds timeout 

                // Create a task to read the stream and pass the cancellation token
                var readTask = ReadStreamAsync(runProcess.StandardOutput, cancellationTokenSource.Token);

                // Wait for the task to complete or timeout
                if (!readTask.Wait(timeoutMilliseconds))
                {
                    // Timeout occurred, cancel the task
                    cancellationTokenSource.Cancel();
                    Console.WriteLine("Reading timed out.");
                    runProcess.Kill();
                    runProcess.WaitForExit();
                    return "Timeout";
                }
                else
                {
                    // Task completed within the timeout
                    //Console.WriteLine("Reading completed successfully.");

                    string output = readTask.Result;
                    runProcess.WaitForExit();

                    if (runProcess.ExitCode == 0)
                    {
                        return output;
                    }
                    else
                    {
                        runProcess.Kill();
                        //return output;
                        Console.WriteLine("Running failed. Error:");
                        Console.WriteLine("Error message:\n" + runProcess.StandardOutput.ReadToEnd());
                        return output;
                    }

                }

                //string output = runProcess.StandardOutput.ReadToEnd(); 

            }
            catch (EntryPointNotFoundException ex)
            {
                Console.WriteLine("EntryPointNotFoundException " + ex.Message);
                return ex.Message;
            }
            catch (Exception e)
            {
                //return e.Message; 
                Console.WriteLine("Error running the C program: " + e.Message);
                return e.Message;
            }

        }



        public static async Task<string> ReadStreamAsync(StreamReader reader, CancellationToken cancellationToken)
        {
            try
            {
                string content = await reader.ReadToEndAsync();
                // Check if cancellation is requested
                cancellationToken.ThrowIfCancellationRequested();
                return content;
            }
            catch (OperationCanceledException)
            {
                return "Timeout!";
            }
        }


        public static bool CheckMemoryAccess(string filePath)
        {
            string[] lines = File.ReadAllLines(filePath);

            foreach (string line in lines)
            {
                // Check for memory-related operations
                if (line.Contains("malloc") || line.Contains("calloc") ||
                    line.Contains("realloc") || line.Contains("&") ||
                    line.Contains("*"))
                {
                    return true;  // Memory access detected
                }
            }

            return false;  // No memory access detected
        }


        public static byte[] convertToBinaryData(string binaryString)
        {
            int numBytes = binaryString.Length / 8;
            byte[] binaryData = new byte[numBytes];

            for (int i = 0; i < numBytes; i++)
            {
                string byteString = binaryString.Substring(i * 8, 8);
                binaryData[i] = Convert.ToByte(byteString, 2);
            }

            return binaryData;
        }

        public static string convertToBinaryString(byte[] data)
        {
            //string binaryString = string.Join("", data);
            //return binaryString; 

            var s = new StringBuilder();
            foreach (byte b in data)
                s.Append(Convert.ToString(b, 2).PadLeft(8, '0'));

            return s.ToString();
        }

        public static bool areBinaryFilesEqual(string file1, string file2)
        {
            using (FileStream stream1 = File.OpenRead(file1))
            using (FileStream stream2 = File.OpenRead(file2))
            {
                if (stream1.Length != stream2.Length)
                    return false;

                int byte1, byte2;
                do
                {
                    byte1 = stream1.ReadByte();
                    byte2 = stream2.ReadByte();
                } while (byte1 == byte2 && byte1 != -1);

                return byte1 == byte2;
            }
        }



        //public static void printBinInfo(IBinInfo binInfo)
        //{
        //    //Console.WriteLine(binInfo.Path);
        //    //Console.WriteLine(binInfo.SourceLine); 
        //    foreach (var x in binInfo.Symbols.All)
        //    {
        //        //Console.WriteLine(x.ToString());
        //        Console.WriteLine(x.Name);
        //    }

        //}
    }
}
