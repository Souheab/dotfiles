local gears = require("gears")
local beautiful = require("beautiful")

-- Set wallpaper
beautiful.wallpaper = GLOBAL.vars.wallpaper
require("ui.shared.wallpaper")

-- Load modernbars
require("ui.bars.modernbar")
