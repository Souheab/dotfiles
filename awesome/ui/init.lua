local awful = require("awful")
local beautiful = require("beautiful")

-- Set wallpaper
beautiful.wallpaper = GLOBAL.vars.wallpaper
require("ui.shared.wallpaper")

-- Load modernbars
require("ui.bars.modernbar")

-- Create and start battery popup
local battery = require("ui.widgets.battery")
local battery_popup = battery.popup()
