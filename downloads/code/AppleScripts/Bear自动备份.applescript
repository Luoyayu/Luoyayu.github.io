tell application "System Events"
	-- 前提：
	-- 1. 在ICloud云盘下新建Bear文件夹
	-- 2. 在Bear下手动备份一次，文件->备份笔记->选中Bear文件夹
	-- 脚本做的事：
	-- 1. 删除已有备份
	-- 2. 自动化点击
	tell application "Finder" to activate -- 打开Finder
	key code 34 using {shift down, command down} -- ⇧+⌘+I 进入ICloud
	do shell script "cd ~;cd 'Library/Mobile Documents/com~apple~CloudDocs/Bear/';rm B*" -- 删除已有备份
	key code 13 using {command down} -- ⌘+W 
	delay 1
	tell application "Bear" to activate -- 打开Bear
	tell process "Bear"
		set frontmost to true -- 置于前台
		click menu item "备份笔记..." of menu "文件" of menu bar item "文件" of menu bar 1 -- 点击文件->备份笔记
		click button "导出笔记" of window "请选择保存笔记的位置"
		key code 13 using {command down} -- ⌘+W
	end tell
	tell application "Finder" to activate
	key code 13 using {command down}
	
end tell