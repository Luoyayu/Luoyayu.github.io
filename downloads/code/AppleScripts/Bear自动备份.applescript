tell application "System Events"
    tell application "Finder" to activate
    key code 34 using {shift down, command down}
    do shell script "cd ~;cd 'Library/Mobile Documents/com~apple~CloudDocs/Bear/';rm B*"
    key code 13 using {command down}
    
    tell application "Bear" to activate
    tell process "Bear"
        set frontmost to true
        click menu item "备份笔记..." of menu "文件" of menu bar item "文件" of menu bar 1
        click button "导出笔记" of window "请选择保存笔记的位置"
        key code 13 using {command down}
    end tell
    tell application "Finder" to activate
    key code 13 using {command down} -- ⌘+W  
end tell