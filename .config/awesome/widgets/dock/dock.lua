local wibox = require("wibox")
local beautiful = require("beautiful")

local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local apps = require("config.apps")
local box = require("widgets.dock.dockbox")

local browser = box(beautiful.yellow, beautiful.yellow_light, "", apps.browser)
local fileexplorer = box(beautiful.purple, beautiful.purple_light, "", apps.fileexplorer)
local terminal = box(beautiful.fg_normal, beautiful.fg_focus, "", apps.terminal)
local pycharm = box(beautiful.green, beautiful.green_light, "", "pycharm")
local krita = box(beautiful.cyan, beautiful.cyan_light, "", "krita")
local vscode = box(beautiful.blue, beautiful.blue_light, "", "code -n")
local musicplayer = box(beautiful.cyan, beautiful.cyan_light, "", apps.musicplayer)

return wibox.widget {
    {
        nil, 
        {
            nil, 
            {
                browser, 
                fileexplorer, 
                terminal, 
                pycharm, 
                vscode,
                krita,
                -- musicplayer,
                spacing = dpi(8),
                layout = wibox.layout.fixed.vertical
            }, 
            nil,
            expand = "none",
            layout = wibox.layout.align.vertical
        },
        nil, 
        expand = "none", 
        layout = wibox.layout.align.horizontal
    }, 
    widget = wibox.container.background, 
}