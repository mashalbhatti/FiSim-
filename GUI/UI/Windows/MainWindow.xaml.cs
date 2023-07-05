using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using PlatformSim;
using FiSim.GUI.UI.Tabs;
using FiSim.Engine.Extensions;
using System.Windows.Forms;


namespace FiSim.GUI.UI.Windows {
    public partial class MainWindow {
        private readonly SimulationManager _simulationManager = new SimulationManager();

        private bool _isWorking;
        private bool _requestStopWorking;

        public string uploadedFile; 

        public MainWindow() {
            InitializeComponent();

            Window.Title = Config.WindowTitle;
            
            FileBrowser.Init(this, Path.GetFullPath(Config.ContentPath));
            
            foreach (var kv in Config.DefaultOpenedFiles) {
                OpenFileTab(kv.Key, new FileInfo(Path.Combine(Config.ContentPath, kv.Value)));                
            }

            Closing += (sender, args) => { _requestStopWorking = true; };

            SetValue(TextOptions.TextFormattingModeProperty, TextFormattingMode.Display);

            ProgressBar.Visibility = Visibility.Hidden;

            if (Config.Mode == RunMode.Minimal) {
                RightSplitter.Visibility = Visibility.Collapsed;
                RightPanel.Visibility = Visibility.Collapsed;

                RightGridPanelDefinition.Width = new GridLength(0);

                //ProgramButton
                VerifyButton.Visibility = Visibility.Collapsed;
                SimulateButton.Visibility = Visibility.Collapsed;
                ProgramButton.Visibility = Visibility.Collapsed;
                UploadButton.Visibility = Visibility.Collapsed;
                PDFButton.Visibility = Visibility.Collapsed;


            }
            else {
                RunButton.Visibility = Visibility.Collapsed;
            }

            StatusBarLabel.Text = "Ready";
            
            var isFileModifiedWatcherThread = new Thread(() => {
                while (true)
                {
                    try
                    {
                        Dispatcher.Invoke(() => {
                            if (FileTabControl.SelectedItem is FileEditTab codeTab && codeTab.IsModified)
                            {
                                SaveButton.IsEnabled = true;
                            }
                            else
                            {
                                SaveButton.IsEnabled = false;
                            }
                        });

                        Thread.Sleep(100);
                    } 
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex); 
                    }
                   
                }
            }) { IsBackground = true };
            
            isFileModifiedWatcherThread.Start();
            
            var newCmd = new RoutedCommand();
            newCmd.InputGestures.Add(new KeyGesture(Key.S, ModifierKeys.Control));
            CommandBindings.Add(new CommandBinding(newCmd, _saveFileButtonClick));

            new Thread((object window) =>
            {
                var mainWindow = (MainWindow)window;

                mainWindow.Dispatcher.Invoke(() =>
                {
                    if (Config.Mode == RunMode.Demo)
                    {
                        System.Windows.MessageBox.Show(mainWindow,
                            "Welcome to Riscure FiSim.\n\n" + "This is an open-source fault attack simulation tool that enables exploring the effects of fault injection attacks on an (imaginary) bootloader authenticating the next boot stage. " +
                            "It lets you change the code, recompile it and then run the simulation to see where a fault attack would allow bypassing the authentication logic.\n\n" +
                            "FiSim is part of Riscure's 'Designing Secure Bootloaders' training courses covering the state-of-the-art of modern bootloader attacks and countermeasures. " +
                            "This covers both hardware and software attack techniques and uses the tool to help students learn how to develop effective fault injection countermeasures on a realistic bootloader.\n\n" +
                            "For more information regarding our training or tool offering, go to https://www.riscure.com or contact us at inforequest@riscure.com for more information.",
                            "Riscure FiSim", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                });
            }); 
                //.Start(this); 
                //Uncomment this line to see the opening dialogue 
        }

        public FileEditTab OpenFileTab(string name, FileInfo fileInfo, bool isReadonly = false) {
            var found = false;

            FileEditTab foundTab = null;

            foreach (var tab in FileTabControl.Items) {
                if (tab is FileEditTab editTab) {
                    if (editTab.FileInfo.FullName == fileInfo.FullName) {
                        // Already open
                        foundTab = editTab;
                        found = true;
                        break;
                    }
                }
            }

            if (!found) {
                foundTab = new FileEditTab(FileTabControl, name, fileInfo, isReadonly);

                FileTabControl.Items.Add(foundTab);
            }

            FileTabControl.SelectedItem = foundTab;

            return foundTab;
        }

        void _saveFileButtonClick(object sender, RoutedEventArgs e) {
            if (FileTabControl.SelectedItem is FileEditTab codeTab && codeTab.IsModified) {
                codeTab.Save();
            }
        }
        
        private void _buttonClickDispatchAsync(Action onClickAction) {
            if (_isWorking) {
                _requestStopWorking = true;
            }
            else {
                if (_isWorking)
                    return;

                _isWorking = true;
                _requestStopWorking = false;
                
                Task.Run(() => {
                    try {
                        onClickAction();
                    }
                    catch (Exception ex) {
                        Debugger.Log(0, "", ex.Message + Environment.NewLine + ex.StackTrace + Environment.NewLine);
                    }
                });
            }
        }

        void _cleanButtonClick(object sender, RoutedEventArgs e) => _buttonClickDispatchAsync(_cleanButtonClickAsync);
        void _buildButtonClick(object sender, RoutedEventArgs e) => _buttonClickDispatchAsync(_buildButtonClickAsync);
        void _runButtonClick(object sender, RoutedEventArgs e) => _buttonClickDispatchAsync(_runButtonClickAsync);
        void _verifyButtonClick(object sender, RoutedEventArgs e) => _buttonClickDispatchAsync(_verifyButtonClickAsync);
        void _simulateButtonClick(object sender, RoutedEventArgs e) => _buttonClickDispatchAsync(_simulateButtonClickAsync);
        void _programButtonClick(object sender, RoutedEventArgs e) => _buttonClickDispatchAsync(_programButtonClickAsync);
        void _uploadButtonClick(object sender, RoutedEventArgs e) => _buttonClickDispatchAsync(_uploadButtonClickAsync);
        void _PDFButtonClick(object sender, RoutedEventArgs e) => _buttonClickDispatchAsync(_generatePDFButtonClickAsync);


        void _cleanButtonClickAsync() {
            using (var outputWriter = new OutputConsoleWriter(OutputConsole, OutputConsoleScrollViewer)) {
                OutputConsole.Dispatcher.Invoke(() => {
                    BuildButton.IsEnabled = false;
                    VerifyButton.IsEnabled = false;
                    SimulateButton.IsEnabled = false;
                    ProgramButton.IsEnabled = false;
                    UploadButton.IsEnabled = false;
                    PDFButton.IsEnabled = false;


                    RunButton.IsEnabled = false;

                    CleanButton.Content = "Stop";

                    StatusBarLabel.Text = "Cleaning...";
                });

                if (_simulationManager.Clean(outputWriter)) {
                    outputWriter.WriteLine("Cleaning finished.");
                }
                else {
                    outputWriter.WriteLine("Cleaning failed.");
                }
                
                outputWriter.Flush();
                
                OutputConsole.Dispatcher.Invoke(() => {
                    StatusBarLabel.Text = $"Ready";

                    CleanButton.IsEnabled = true;
                    BuildButton.IsEnabled = true;

                    CleanButton.Content = "Clean";

                    ProgressBar.Visibility = Visibility.Hidden;
                    
                    _isWorking = false;
                });
            }
        }

        void _buildButtonClickAsync() {
            // Compile binaries
            using (var outputWriter = new OutputConsoleWriter(OutputConsole, OutputConsoleScrollViewer)) {
                OutputConsole.Dispatcher.Invoke(() => {
                    CleanButton.IsEnabled = false;
                    VerifyButton.IsEnabled = false;
                    SimulateButton.IsEnabled = false;
                    RunButton.IsEnabled = false;
                    ProgramButton.IsEnabled = false;
                    UploadButton.IsEnabled = false;
                    PDFButton.IsEnabled = false; 

                    BuildButton.Content = "Stop";

                    StatusBarLabel.Text = "Building...";
                });

                var buildSucceeded = false;

                if (_simulationManager.CompileBinary(outputWriter)) {
                    buildSucceeded = true;

                    outputWriter.WriteLine("Compilation finished.");
                }
                else {
                    outputWriter.WriteLine("Compilation failed.");
                }

                outputWriter.Flush();

                OutputConsole.Dispatcher.Invoke(() => {
                    StatusBarLabel.Text = $"Ready";

                    CleanButton.IsEnabled = true;
                    BuildButton.IsEnabled = true;

                    if (buildSucceeded) {
                        VerifyButton.IsEnabled = true;
                        SimulateButton.IsEnabled = true;
                        RunButton.IsEnabled = true;
                        ProgramButton.IsEnabled = true;

                    }

                    BuildButton.Content = "Build";

                    ProgressBar.Visibility = Visibility.Hidden;

                    _isWorking = false;
                });
            }
        }

        void _runButtonClickAsync() {
            using (var outputWriter = new OutputConsoleWriter(OutputConsole, OutputConsoleScrollViewer)) {
                OutputConsole.Dispatcher.Invoke(() => {
                    CleanButton.IsEnabled = false;
                    BuildButton.IsEnabled = false;
                    VerifyButton.IsEnabled = false;
                    ProgramButton.IsEnabled = false;

                    RunButton.Content = "Stop";

                    StatusBarLabel.Text = "Running...";

                    ProgressBar.Value = 0;
                    ProgressBar.Visibility = Visibility.Visible;
                });

                try {
                    _simulationManager.RunSimulation(outputWriter);
                }
                catch (Exception ex) {
                    Debugger.Log(0, "", ex.Message + Environment.NewLine + ex.StackTrace + Environment.NewLine);
                    outputWriter.Write(ex);
                }

                OutputConsole.Dispatcher.Invoke(() => {
                    StatusBarLabel.Text = $"Ready";

                    CleanButton.IsEnabled = true;
                    BuildButton.IsEnabled = true;
                    VerifyButton.IsEnabled = true;
                    ProgramButton.IsEnabled = true;
                    UploadButton.IsEnabled = true;
                    PDFButton.IsEnabled = true; 

                    RunButton.Content = "Run";

                    ProgressBar.Visibility = Visibility.Hidden;
                    
                    _isWorking = false;
                });
            }
        }

        void _verifyButtonClickAsync() {
            using (var outputWriter = new OutputConsoleWriter(OutputConsole, OutputConsoleScrollViewer)) {
                
                OutputConsole.Dispatcher.Invoke(() => {
                    CleanButton.IsEnabled = false;
                    BuildButton.IsEnabled = false;
                    SimulateButton.IsEnabled = false;
                    ProgramButton.IsEnabled = false;
                    UploadButton.IsEnabled = false;
                    PDFButton.IsEnabled = false; 

                    VerifyButton.Content = "Stop";

                    StatusBarLabel.Text = "Running...";

                    GlitchResults.Items.Clear();
                });

                var result = _simulationManager.VerifyBinary(outputWriter);
                
                outputWriter.Flush();
                
                OutputConsole.Dispatcher.Invoke(() => {
                    if (result) {
                        SimulateButton.IsEnabled = true;

                        StatusBarLabel.Text = "Ready";
                    }
                    else {
                        StatusBarLabel.Text = "Verification failed";
                    }

                    CleanButton.IsEnabled = true;
                    BuildButton.IsEnabled = true;
                    VerifyButton.IsEnabled = true;
                    ProgramButton.IsEnabled = true;
                    UploadButton.IsEnabled = true;
                    PDFButton.IsEnabled = true; 

                    VerifyButton.Content = "Verify";

                    ProgressBar.Visibility = Visibility.Hidden;
                    
                    _isWorking = false;
                });
            }
        }

        void _simulateButtonClickAsync() {
            using (var outputWriter = new OutputConsoleWriter(OutputConsole, OutputConsoleScrollViewer)) {
                OutputConsole.Dispatcher.Invoke(() => {
                    CleanButton.IsEnabled = false;
                    BuildButton.IsEnabled = false;
                    VerifyButton.IsEnabled = false;
                    ProgramButton.IsEnabled = false;
                    UploadButton.IsEnabled = false;
                    PDFButton.IsEnabled = false; 

                    SimulateButton.Content = "Stop";

                    StatusBarLabel.Text = "Running...";

                    ProgressBar.Value = 0;
                    ProgressBar.Visibility = Visibility.Visible;

                    GlitchResults.Items.Clear();
                });

                var actualRuns = 0L;
                long successfullGlitches = 0;

                Dictionary<string, bool> flipDictionary = new Dictionary<string, bool>();
                Dictionary<string, bool> skipDictionary = new Dictionary<string, bool>();


                _simulationManager.RunFISimulation(outputWriter, (expectedRuns, eng, faultResult) => {
                    decimal currentRun = Interlocked.Increment(ref actualRuns);

                    if ((int) faultResult.Result == (int) Result.Completed) {
                        Interlocked.Increment(ref successfullGlitches);
                    }

                    var faultModel = faultResult.Fault.FaultModel;


                    ProgressBar.Dispatcher.Invoke(() => {
                        ProgressBar.Value = (double) ((currentRun / expectedRuns) * 100);

                        StatusBarLabel.Text = $"Running {faultModel.Name}...";

                        if ((int) faultResult.Result == (int) Result.Completed) {
                            FaultTreeViewItem item = _addSuccessfullFault(faultResult);

                            if (faultModel.Name.Equals("TransientNopInstructionModel"))
                            {
                                if (!skipDictionary.ContainsKey(item.FaultDescription))
                                {
                                    skipDictionary.Add(item.FaultDescription, true);
                                }
                            }
                            else if (faultModel.Name.Equals("TransientSingleBitFlipInstructionModel"))
                            {
                                if (!flipDictionary.ContainsKey(item.FaultDescription))
                                {
                                    flipDictionary.Add(item.FaultDescription, true);
                                }
                            }

                        }
                    }); 
                    return _requestStopWorking;
                });




                List<ExecutedFaultModels> faultModels = new List<ExecutedFaultModels>
                {
                    new ExecutedFaultModels { RunCount = (int)actualRuns, Instrcution = skipDictionary, SuccessfulFaults = (int)successfullGlitches },
                    new ExecutedFaultModels { RunCount = (int)actualRuns, Instrcution = flipDictionary, SuccessfulFaults = (int)successfullGlitches}
                };

                string name = Config.ProjectName;
                //string name = "AES-256"; 

                PDFGenerator.generatePDF(Path.Combine(Path.GetFullPath(Config.ContentPath),  name + ".pdf"),
                    new PDFModel { Name = name, FaultModels = faultModels });



 

                OutputConsole.Dispatcher.Invoke(() => {
                    StatusBarLabel.Text = $"Ready ({successfullGlitches} glitches)";

                    CleanButton.IsEnabled = true;
                    BuildButton.IsEnabled = true;
                    VerifyButton.IsEnabled = true;
                    ProgramButton.IsEnabled = true;
                    UploadButton.IsEnabled = true;
                    PDFButton.IsEnabled = true; 

                    SimulateButton.Content = "Simulate";

                    ProgressBar.Visibility = Visibility.Hidden;
                    
                    _isWorking = false;
                });
            }
        }



    
       void _programButtonClickAsync()
        {
            using (var outputWriter = new OutputConsoleWriter(OutputConsole, OutputConsoleScrollViewer))
            {
                OutputConsole.Dispatcher.Invoke(() => {
                    CleanButton.IsEnabled = false;
                    BuildButton.IsEnabled = false;
                    VerifyButton.IsEnabled = false;
                    SimulateButton.IsEnabled = false;
                    UploadButton.IsEnabled = false;
                    PDFButton.IsEnabled = false; 


                    ProgramButton.Content = "Stop";

                    StatusBarLabel.Text = "Running...";

                    ProgressBar.Value = 0;
                    ProgressBar.Visibility = Visibility.Visible;

                    GlitchResults.Items.Clear();
                });

                var actualRuns = 0L;
                long successfullGlitches = 0;

                Dictionary<string, bool> flipDictionary = new Dictionary<string, bool>();
                Dictionary<string, bool> skipDictionary = new Dictionary<string, bool>();


                _simulationManager.RunProgramSimulation(outputWriter, (expectedRuns, eng, faultResult) => {
                    decimal currentRun = Interlocked.Increment(ref actualRuns);

                    if ((int)faultResult.Result == (int)Result.Completed)
                    {
                        Interlocked.Increment(ref successfullGlitches);
                    }

                    IFaultModel faultModel = faultResult.Fault.FaultModel;


                    ProgressBar.Dispatcher.Invoke(() => {
                        ProgressBar.Value = (double)((currentRun / expectedRuns) * 100);

                        StatusBarLabel.Text = $"Running {faultModel.Name}...";

                        if ((int)faultResult.Result == (int)Result.Completed)
                        {
                            FaultTreeViewItem item = _addSuccessfullFault(faultResult);

                            if (faultModel.Name.Equals("TransientNopInstructionModel"))
                            {
                                if (!skipDictionary.ContainsKey(item.FaultDescription))
                                {
                                    skipDictionary.Add(item.FaultDescription, true);
                                }
                            }
                            else if (faultModel.Name.Equals("TransientSingleBitFlipInstructionModel"))
                            {
                                if (!flipDictionary.ContainsKey(item.FaultDescription))
                                {
                                    flipDictionary.Add(item.FaultDescription, true);
                                }
                            }

                        }
                    });
                    return _requestStopWorking;
                }, uploadedFile);

                List<ExecutedFaultModels> faultModels = new List<ExecutedFaultModels>
                {
                    new ExecutedFaultModels { RunCount = (int)actualRuns, Instrcution = skipDictionary, SuccessfulFaults = (int)successfullGlitches},
                    new ExecutedFaultModels { RunCount = (int)actualRuns, Instrcution = flipDictionary, SuccessfulFaults = (int)successfullGlitches }
                };


                PDFGenerator.generatePDF(Path.Combine(Path.GetFullPath(Config.ContentPath), Config.ProjectName + ".pdf"),
                    new PDFModel { Name = Config.ProjectName, FaultModels = faultModels });


                OutputConsole.Dispatcher.Invoke(() => {
                    StatusBarLabel.Text = $"Ready ({successfullGlitches} glitches)";

                    CleanButton.IsEnabled = true;
                    BuildButton.IsEnabled = true;
                    VerifyButton.IsEnabled = true;
                    SimulateButton.IsEnabled = true;
                    UploadButton.IsEnabled = true;
                    PDFButton.IsEnabled = true; 


                    ProgramButton.Content = "Start Simulation";

                    ProgressBar.Visibility = Visibility.Hidden;

                    _isWorking = false;
                });
            }
        }





        private FaultTreeViewItem _addSuccessfullFault(FaultResult faultResult) {
            var faultItem = _lookupOrAddItemForFaultResult(faultResult);

            if (!faultItem.Faults.Contains(faultResult.Fault)) {
                faultItem.Faults.Add(faultResult.Fault);
            }

            if (faultItem.Faults.Count > 1) {
                faultItem.Header = faultItem.FaultDescription + $" ({faultItem.Faults.Count}x)";
            }
            else {
                faultItem.Header = faultItem.FaultDescription;
            }
            return faultItem; 
        }

        private FaultTreeViewItem _lookupOrAddItemForFaultResult(FaultResult faultResult) {
            var headerItem = _lookupOrAddHeaderForFaultModel(faultResult.Fault.FaultModel);

            // Lookup or create item for fault
            foreach (var item in headerItem.Items) {
                if (item is FaultTreeViewItem) {
                    var treeViewItem = item as FaultTreeViewItem;

                    if (treeViewItem.FaultAddress == faultResult.Fault.FaultAddress) {
                        return treeViewItem;
                    }
                }
            }

            // Not found
            var faultItem = new FaultTreeViewItem {
                FaultAddress = faultResult.Fault.FaultAddress,
                FaultDescription = ((InstructionFaultDefinition)faultResult.Fault).Description
            };
 
            try {
                var sourceLocation = _simulationManager.LookupSourceLocation(faultItem.FaultAddress); 
                // require addr2line support to show correct function name
                faultItem.ToolTip = $"{sourceLocation.FunctionName} ({sourceLocation.FilePath.Split('\\', '/').Last()}:{sourceLocation.LineNumber})";
            }
            catch (Exception) {          
            }


 




            faultItem.MouseDoubleClick += (sender, e) => {
                try {
                    Debugger.Log(0, "", $"Jmp: {faultItem.FaultAddress:x8}" + Environment.NewLine);

                    var sourceLocation = _simulationManager.LookupSourceLocation(faultItem.FaultAddress);

                    Debugger.Log(0, "", $"-> {sourceLocation.FilePath}:{sourceLocation.LineNumber}" + Environment.NewLine);


                    
                    FileEditTab codeTab;
                    
                    codeTab = OpenFileTab(new FileInfo(sourceLocation.FilePath).Name, new FileInfo(sourceLocation.FilePath));

                    var documentLine = codeTab.TextEditor.Document.GetLineByNumber((int) sourceLocation.LineNumber);
                    codeTab.TextEditor.ScrollToLine((int) sourceLocation.LineNumber);
                    codeTab.TextEditor.Select(documentLine.Offset, documentLine.EndOffset - documentLine.Offset);
                }
                catch (KeyNotFoundException) {
                    Debugger.Log(0, "", $"Key not found" + Environment.NewLine);
                    Console.WriteLine("KeyNotFoundException in MainWindow"); 
                    var codeTab = FileTabControl.Items[FileTabControl.SelectedIndex] as FileEditTab;

                    codeTab.TextEditor.ScrollToLine(1);
                    codeTab.TextEditor.Select(0, 0);
                }
            };

            headerItem.Items.Add(faultItem);

            return faultItem;
        }

        private TreeViewItem _lookupOrAddHeaderForFaultModel(IFaultModel faultModel) {
            // Lookup or create item for fault model
            foreach (var header in GlitchResults.Items) {
                if (header is TreeViewItem) {
                    var treeViewHeaderItem = header as TreeViewItem;

                    if ((string) treeViewHeaderItem.Header == faultModel.Name) {
                        return treeViewHeaderItem;
                    }
                }
            }

            // Not found
            var headerItem = new TreeViewItem { Header = faultModel.Name, IsExpanded = true };

            GlitchResults.Items.Add(headerItem);

            return headerItem;
        }

        //[STAThread]
        public void _uploadButtonClickAsync()
        {
            using (var outputWriter = new OutputConsoleWriter(OutputConsole, OutputConsoleScrollViewer))
            {
                OutputConsole.Dispatcher.Invoke(() => {
                    CleanButton.IsEnabled = false;
                    BuildButton.IsEnabled = false;
                    VerifyButton.IsEnabled = false;
                    SimulateButton.IsEnabled = false;
                    ProgramButton.IsEnabled = false;
                    PDFButton.IsEnabled = false;


                    UploadButton.Content = "Uploading";

                    StatusBarLabel.Text = "Uploading...";

                    ProgressBar.Value = 0;
                    ProgressBar.Visibility = Visibility.Visible;
                });


                string selectedPath = "";
                string fileName = "";

                Thread t = new Thread((ThreadStart)(() => {
                    OpenFileDialog saveFileDialog1 = new OpenFileDialog();
                    saveFileDialog1.InitialDirectory = "C://Desktop";
                    saveFileDialog1.Title = "Select a file to upload";
                    saveFileDialog1.Filter = "Select a file(*.c; *.elf; *.bin)|*.c; *.bin; *.elf";
                    saveFileDialog1.FilterIndex = 2;
                    saveFileDialog1.RestoreDirectory = true;

                    if (saveFileDialog1.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                    {
                        if (saveFileDialog1.CheckFileExists)
                        {
                            selectedPath = Path.GetFullPath(saveFileDialog1.FileName);
                            fileName = saveFileDialog1.FileName;
                            uploadedFile = selectedPath; 

                        }
                    }
                }));

                // Run your code from a thread that joins the STA Thread
                t.SetApartmentState(ApartmentState.STA);
                t.Start();
                t.Join();

                // e.g C:\Users\MyName\Desktop\myfile.json
                //Console.WriteLine(selectedPath);


                OutputConsole.Dispatcher.Invoke(() =>
                {
                    OpenFileTab(fileName, new FileInfo(selectedPath));

                }); 


                OutputConsole.Dispatcher.Invoke(() => {
                    StatusBarLabel.Text = $"{fileName} uploaded";

                    CleanButton.IsEnabled = true;
                    BuildButton.IsEnabled = true;
                    VerifyButton.IsEnabled = true;
                    SimulateButton.IsEnabled = true;
                    ProgramButton.IsEnabled = true;
                    PDFButton.IsEnabled = true;


                    UploadButton.Content = "Upload File";

                    ProgressBar.Visibility = Visibility.Hidden;

                    _isWorking = false;
                });
            }
        }

        void _generatePDFButtonClickAsync()
        {
            using (var outputWriter = new OutputConsoleWriter(OutputConsole, OutputConsoleScrollViewer))
            {
                OutputConsole.Dispatcher.Invoke(() => {
                    CleanButton.IsEnabled = false;
                    BuildButton.IsEnabled = false;
                    VerifyButton.IsEnabled = false;
                    SimulateButton.IsEnabled = false;
                    UploadButton.IsEnabled = false;
                    ProgramButton.IsEnabled = false;


                    PDFButton.Content = "Generating PDF";

                    StatusBarLabel.Text = "Running...";

                    ProgressBar.Value = 0;
                    ProgressBar.Visibility = Visibility.Visible;

                });

                var actualRuns = 0L;
                long successfullGlitches = 0;

                Dictionary<string, bool> flipDictionary = new Dictionary<string, bool>();
                Dictionary<string, bool> skipDictionary = new Dictionary<string, bool>();


                FaultResult faultResult = new FaultResult();
 

                var faultModel = faultResult.Fault.FaultModel;
                FaultTreeViewItem item = _addSuccessfullFault(faultResult);



                            if (faultModel.Name.Equals("TransientNopInstructionModel"))
                            {
                                if (!skipDictionary.ContainsKey(item.FaultDescription))
                                {
                                    skipDictionary.Add(item.FaultDescription, true);
                                }
                            }
                            else if (faultModel.Name.Equals("TransientSingleBitFlipInstructionModel"))
                            {
                                if (!flipDictionary.ContainsKey(item.FaultDescription))
                                {
                                    flipDictionary.Add(item.FaultDescription, true);
                                }
                            }




                List<ExecutedFaultModels> faultModels = new List<ExecutedFaultModels>
                {
                    new ExecutedFaultModels { RunCount = (int)actualRuns, Instrcution = skipDictionary, SuccessfulFaults = (int)successfullGlitches},
                    new ExecutedFaultModels { RunCount = (int)actualRuns, Instrcution = flipDictionary, SuccessfulFaults = (int)successfullGlitches }
                };


                PDFGenerator.generatePDF(Path.Combine(Path.GetFullPath(Config.ContentPath), Config.ProjectName + ".pdf"),
                    new PDFModel { Name = Config.ProjectName, FaultModels = faultModels });


                OutputConsole.Dispatcher.Invoke(() => {
                    StatusBarLabel.Text = $"PDF generated successfully";

                    CleanButton.IsEnabled = true;
                    BuildButton.IsEnabled = true;
                    VerifyButton.IsEnabled = true;
                    SimulateButton.IsEnabled = true;
                    UploadButton.IsEnabled = true;
                    ProgramButton.IsEnabled = true;


                    PDFButton.Content = "Generate PDF";

                    ProgressBar.Visibility = Visibility.Hidden;

                    _isWorking = false;
                });
            }
        }

    }
}