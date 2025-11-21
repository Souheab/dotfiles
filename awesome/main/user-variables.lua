local home = os.getenv("HOME")

local _M = {
	terminal = "wezterm",
	modkey = "Mod4",
	wallpaper = home .. "/.config/awesome/wall.jpeg",
	altkey = "Mod1",
	browser = "firefox",
	started = false, -- whether or not awesomewm has started
	enable_battery = false,
}

return _M
