local apps = {
    terminal = "kitty", 
    launcher = "sh /home/alisson/.config/rofi/launch.sh", 
    switcher = require("widgets.alt-tab"), 
    xrandr = "lxrandr", 
    screenshot = "scrot -e 'echo $f'", 
    volume = "pavucontrol", 
    appearance = "lxappearance", 
    browser = "firefox", 
    fileexplorer = "thunar",
    musicplayer = "pragha", 
    settings = "code /home/alisson/.config/awesome/"
}

user = {
    terminal = "kitty", 
    floating_terminal = "kitty"
}

return apps
