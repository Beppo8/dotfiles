local beautiful = require("beautiful")

local button = require("lib.button")

local color = beautiful.cyan
local color_hover = beautiful.cyan_light

return button.create_text(color, color_hover, "", "Fira Mono 16", function()
    awesome.emit_signal("dashboard::toggle")
end)