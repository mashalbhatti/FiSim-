using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiSim.FaultModels
{
    public static class BitFlippingFaultModel
    {
        public static async Task<Dictionary<string, bool>> instrcutionBitFlip(string filePath, string outputFilePath, string correctOutput)
        {

            Dictionary<string, bool> outputDict = new Dictionary<string, bool>();
            // Read the binary file as bytes
            byte[] binaryData = File.ReadAllBytes(outputFilePath);
            // Convert binary data to 01 format
            string binaryString = ExtensionMethods.convertToBinaryString(binaryData);
            // Pick a random bit index to flip 
            int randomBitIndex = new Random().Next(0, binaryString.Length);
            // Flip the randomly selected bit 
            char[] binaryArray = binaryString.ToCharArray();
            binaryArray[randomBitIndex] = (binaryArray[randomBitIndex] == '0') ? '1' : '0';
            string flippedBinaryString = new string(binaryArray);
            // Convert the flipped binary string back to bytes 
            byte[] flippedBinaryData = ExtensionMethods.convertToBinaryData(flippedBinaryString);
            //Write the output to a new file 
            File.WriteAllBytes(Path.Combine(filePath, "flippedOutput.out"), flippedBinaryData);
            //Run the new output file 
            string output = await ExtensionMethods.runBinary(Path.Combine(filePath, "flippedOutput.out"));
            try
            {
                if (output.Equals(correctOutput))
                {
                    outputDict.Add("", false);
                    Console.WriteLine("Flipping the bit produces same output");

                }
                else
                {
                    outputDict.Add("", true);
                    Console.WriteLine("Fault Injected Successfully! Program halted! ");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Output crashed!");
            }
            //Console.WriteLine(output); 
            return outputDict;
        }


    }
}
