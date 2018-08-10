tell application "System Events"
    tell application "CLion" to activate
    key code 0 using {command down} -- 全选
    key code 8 using {command down} -- 复制
    
    tell application "Microsoft Word" to activate
    key code 76 -- 回车
    key code 9 using {command down} -- 粘贴
    delay 0.5
    key code 0 using {command down} -- 全选
    delay 0.5
    key code 11 using {command down} -- 去粗体
    key code 34 using {command down} -- 去斜体
    key code 11 using {command down} -- 去粗体
    delay 0.5
    
    key code 43 using {shift down, command down} -- 缩小字号至五号
    key code 43 using {shift down, command down}
    key code 43 using {shift down, command down}
    delay 2
    
    key code 123 -- ←
    
    key code 124 -- →*3
    key code 124
    key code 124
    
    key code 51 -- delete*3
    key code 51
    key code 51
    
    key code 1 using {command down} -- 保存
    delay 0.5
    key code 2 using {shift down, command down} -- 前往桌面
    delay 1
    
    tell application process "Microsoft Word"
        click pop up button "文件格式:" of sheet 1 of window "文档1"
    end tell
    
    delay 0.5
    key code 125 -- ↓*8
    delay 0.125
    key code 125
    delay 0.125
    key code 125
    delay 0.125
    key code 125
    delay 0.125
    key code 125
    delay 0.125
    key code 125
    delay 0.125
    key code 125 -- 选中筛选过的网页
    delay 0.5
    
    key code 76 -- 回车
    delay 0.125
    click button "保存" of sheet 1 of window "文档1" of application process "Microsoft Word"
    delay 0.125
    key code 76 -- 回车
    key code 12 using {command down} -- 退出
    delay 2
do shell script "mv /Users/hu-osx/Desktop/*.html 
/Volumes/MAC/hexo_blog/themes/inside/source/htmlcode/;"
end tell
