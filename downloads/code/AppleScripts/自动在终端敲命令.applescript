tell application"Terminal" to activate 
    tell application"System Events" 
        tell application process"Terminal"
        set frontmost to true
        keystroke"echo Hello"
    end tell 
end tell