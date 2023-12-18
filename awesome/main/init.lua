-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

local beautiful = require("beautiful")
local gears = require("gears")

GLOBAL = {} -- global namespace, ensure on top before requiring any modules
GLOBAL.vars = require("main.user-variables")

-- Load theme.lua
beautiful.init(gears.filesystem.get_configuration_dir() .. "theme.lua")

require("main.error-handling")
require("awful.autofocus")
require("main.layouts")
require("main.rules")
require("main.tags")
require("main.signals")
