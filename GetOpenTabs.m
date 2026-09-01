editorTabs = matlab.desktop.editor.getAll;
tmp = [];
for i = 1:size(editorTabs,2)
    strnames = string(fieldnames(editorTabs(1)));
    for j = 1:size(strnames,1)
        tmp(i).(strnames(j)) = editorTabs(i).(strnames(j));
    end
end

PreviouslyOpenedTabs = tmp;
save(['Z:/Analysis/EditorSavedOpenTabs_',char(datetime("now",'Format',"yyyy_MM_dd_'T'_HH_mm_ss")),'.mat'],"PreviouslyOpenedTabs");
