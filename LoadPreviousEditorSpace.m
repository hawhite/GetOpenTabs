function LoadPreviousEditorSpace(SearchPath,NewDriveLetterForFiles)
%   function LoadPreviousEditorSpace(SearchPath):
%       Loads the previous open editor files saved with GetOpenTabs.m
%
%       Example: LoadPreviousEditorSpace("H:\Analysis\","H:");
%
%       Inputs:
%           SearchPath: a folder containing the output of GetOpenTabs.m.
%           NewDriveLetterForFiles: a new drive letter, ex. "H:", which the
%               files to open are going to be found on. This is most
%               relevant if you are moving between workspaces, and have
%               files made on one network drive (ex. "Z:\Analysis"), but
%               need to find them under a new drive structure (ex.
%               "H:\...").
%
%       Author: Hamilton White, PhD
%       Version Date: 2026-09-01 v1.0
%       Current Affiliations:
%           Mass General Brigham - Brigham and Women's Hospital
%           Harvard Medical School
%           Boston University
%
%
ESOT = dir(SearchPath+"\EditorSavedOpenTabs*.mat");
load(ESOT(end).name);
if nargin<2
    for i = 1:size(PreviouslyOpenedTabs,2)
        edit(PreviouslyOpenedTabs(i).Filename);
    end
else
    for i = 1:size(PreviouslyOpenedTabs,2)
        filePath = PreviouslyOpenedTabs(i).Filename;
        edit(strrep(filePath,filePath(1:2),NewDriveLetterForFiles));
    end
end
end
