# GetOpenTabs
Scripts to save and reopen the MATLAB editor tabs efficiently.

# Installation
Download the two scripts and add to the MATLAB path.

# Usage
For daily usage:
1. Set the output directory name in the GetOpenTabs.m file to something like: "H:\MATLAB_script_files\" (in the file currently it is "Z:\Analysis").
2. Run GetOpenTabs in the command window.

If the MATLAB editor and previously opened file structure get out of sync:
1. Manually re-mount the (usually) remote drive where the analysis scripts are found.
2. Run the LoadPreviousEditorSpace function with the corresponding parameters: SearchPath (i.e. "H:\Analysis\"), and NewDriveLetterForFiles (i.e. "H:").

For assistance:
`help LoadPreviousEditorSpace`
