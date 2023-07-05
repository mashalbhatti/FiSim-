
using Aspose.Pdf.Text;
using Aspose.Pdf;
using System.Collections.Generic;
using System;

namespace FiSim.Engine.Extensions
{
    public static class PDFGenerator
    {

        public static void generatePDF(string outputFileName, PDFModel model)
        {

            List<ExecutedFaultModels> listModels = model.FaultModels; 
            try
            {

                Document document = new Document();

                // Create a page in the document
                Page page = document.Pages.Add();

                // Add a heading to the page
                TextFragment heading = new TextFragment("Fault Injection Simulation report for " + model.Name);
                heading.TextState.FontSize = 20;
                page.Paragraphs.Add(heading);

                // Create a blank paragraph
                TextFragment blankParagraph = new TextFragment();
                blankParagraph.TextState.FontSize = 12;
                // Add the blank paragraph to the document
                page.Paragraphs.Add(blankParagraph);


                TextFragment name1 = new TextFragment("Fault Model 1: Single Instruction Skip");
                name1.TextState.FontSize = 12;
                page.Paragraphs.Add(name1);

                TextFragment run1 = new TextFragment("Instruction Count: " + listModels[0].RunCount);
                run1.TextState.FontSize = 12;
                page.Paragraphs.Add(run1);

                TextFragment sucrun1 = new TextFragment("Successful Glitches: " + listModels[0].SuccessfulFaults);
                sucrun1.TextState.FontSize = 12;
                page.Paragraphs.Add(sucrun1);


                page.Paragraphs.Add(blankParagraph);

                // Add a table to the page 
                Table table1 = new Table
                {
                    // Set the table border color as LightGray
                    Border = new BorderInfo(BorderSide.All, .5f, Color.Black),
                    // Set the border for table cells
                    DefaultCellBorder = new BorderInfo(BorderSide.All, .5f, Color.Black)
                };


                table1.ColumnWidths = "200 200"; // Adjust column widths as needed

                // Add table cells
                Row headerRow1 = table1.Rows.Add();
                headerRow1.Cells.Add("Instruction");
                headerRow1.Cells.Add("Halt");

                foreach (var kvp in listModels[0].Instrcution)
                {
                    Row dataRow = table1.Rows.Add();
                    dataRow.Cells.Add(kvp.Key);
                    dataRow.Cells.Add(kvp.Value.ToString());

                }

                // Add the table to the page
                page.Paragraphs.Add(table1);


                page.Paragraphs.Add(blankParagraph);


                TextFragment name2 = new TextFragment("Fault Model 2: Single Bit Flip");
                name2.TextState.FontSize = 12;
                page.Paragraphs.Add(name2);

                TextFragment run2 = new TextFragment("Instruction Count: " + listModels[1].RunCount);
                run2.TextState.FontSize = 12;
                page.Paragraphs.Add(run2);

                TextFragment sucrun2 = new TextFragment("Successful Glitches: " + listModels[1].SuccessfulFaults);
                sucrun2.TextState.FontSize = 12;
                page.Paragraphs.Add(sucrun2); 


                page.Paragraphs.Add(blankParagraph);



                // Add a table to the page
                Table table2 = new Table
                {
                    // Set the table border color as LightGray
                    Border = new BorderInfo(BorderSide.All, .5f, Color.Black),
                    // Set the border for table cells
                    DefaultCellBorder = new BorderInfo(BorderSide.All, .5f, Color.Black)
                };


                table2.ColumnWidths = "200 200"; // Adjust column widths as needed

                // Add table cells
                Row headerRow2 = table1.Rows.Add();
                headerRow2.Cells.Add("Instruction");
                headerRow2.Cells.Add("Halt");

                foreach (var kvp in listModels[1].Instrcution)
                {
                    Row dataRow = table2.Rows.Add();
                    dataRow.Cells.Add(kvp.Key);
                    dataRow.Cells.Add(kvp.Value.ToString());

                }

                // Add the table to the page
                page.Paragraphs.Add(table2);



                // Save the PDF document
                document.Save(outputFileName);
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex); 
            }
        }
    }


    public class PDFModel {
        public string Name { get; set; } 
        public List<ExecutedFaultModels> FaultModels { get; set; }

    }


    public class ExecutedFaultModels {

    public int RunCount { get; set; }

    public int SuccessfulFaults { get; set; }

    public Dictionary<string, bool> Instrcution { get; set; }

    //public string Name { get; set; } 

    }




}