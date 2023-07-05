using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiSim.FaultModels
{
    public static class InstructionSkippingFaultModel
    {
        public static async Task<Dictionary<string, bool>> skipInstructions(string assemblyCodeFilePath, string filePath, string correctOutput)
        {

            Dictionary<string, bool> outputDict = new Dictionary<string, bool>();

            // Read the assembly code file
            string assemblyCode = File.ReadAllText(assemblyCodeFilePath);

            // Split the assembly code into individual instructions
            string[] instructions = assemblyCode.Split(new[] { '\n', '\r' }, StringSplitOptions.RemoveEmptyEntries);

            string modifiedAssemblyCodeFile = Path.Combine(filePath, "modOutput.S");
            string outputPath = Path.Combine(filePath, "modOutput.out");

            //Console.WriteLine(instructions.Length); 

            // Loop through each instruction and inject faults by skipping them 
            for (int i = 0; i < instructions.Length; i++)
            {
                //Console.WriteLine(i); 
                List<string> instructionsList = new List<string>(instructions);
                instructionsList.RemoveAt(i);
                // Create a StringBuilder to store the modified assembly code
                StringBuilder modifiedAssemblyCode = new StringBuilder();
                foreach (string value in instructionsList)
                {
                    modifiedAssemblyCode.AppendLine(value);
                }

                if (File.Exists(modifiedAssemblyCodeFile))
                {
                    try
                    {
                        File.Delete(modifiedAssemblyCodeFile);
                        //Console.WriteLine("File deleted successfully.");
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"An error occurred while deleting the file: {ex.Message}");
                    }
                }
                else
                {
                    //Console.WriteLine("The file does not exist.");
                }
                if (File.Exists(outputPath))
                {
                    try
                    {
                        File.Delete(outputPath);
                        //Console.WriteLine("File deleted successfully.");
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"An error occurred while deleting the file: {ex.Message}");
                    }
                }
                else
                {
                    //Console.WriteLine("The file does not exist.");
                }

                File.WriteAllText(modifiedAssemblyCodeFile, modifiedAssemblyCode.ToString());
                ExtensionMethods.compileAssemblyProgramToBinary(modifiedAssemblyCodeFile, outputPath);
                string output = await ExtensionMethods.runBinary(outputPath);

                Console.WriteLine(output);

                Console.WriteLine("Skipping instruction at " + i);
                try
                {
                    if (correctOutput.Equals(output))
                    {
                        outputDict.Add(instructions[i], false);
                        //Console.WriteLine(output);
                        //Console.WriteLine("Skipping instruction at " + i + " does not halt the program.");
                    }
                    else
                    {
                        outputDict.Add(instructions[i], true);
                        Console.WriteLine("Fault Injected Successfully! Program halted! ");
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Output crashed!");
                }

            }
            //Delete the files 
            File.Delete(modifiedAssemblyCodeFile);
            File.Delete(outputPath);
            //Console.WriteLine("Simulation completed successfully!"); 
            return outputDict;
        }


    }
}
