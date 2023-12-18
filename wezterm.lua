local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Tokyo Night (Gogh)"
config.font = wezterm.font('JetBrainsMono Nerd Font')
config.font_size = 14.0
config.hide_tab_bar_if_only_one_tab = true
config.adjust_window_size_when_changing_font_size = false
config.warn_about_missing_glyphs = false

config.window_padding = {
  left = 5,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
