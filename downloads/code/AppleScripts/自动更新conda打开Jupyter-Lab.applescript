tell application "Terminal" to activate --quit terminal first
tell application "System Events"
    tell application process "Terminal"
        set frontmost to true
        delay (1)
        keystroke "
            clear;
            brew update;
            conda update --all;
            conda clean -p;

            source activate tensorflow;
            nohup jupyter-lab &
            "
        delay (5)
        key code 46 using {command down}
    end tell
end tell