local theme_assets                              = require("beautiful.theme_assets")
local xresources                                = require("beautiful.xresources")
local dpi                                       = xresources.apply_dpi

local gfs                                       = require("gears.filesystem")
local themes_path                               = gfs.get_themes_dir()
local gears                                     = require("gears")
local naughty                                   = require("naughty")

local theme                                     = {}

theme.base_font                                = "Lexend Deca"

theme.font                                      = "Lexend Deca 10"

-- Taglist
theme.taglist_spacing                           = 6
theme.taglist_bg_focus                          = "#009fff"
theme.taglist_bg_occupied                       = "#5e72cc"
theme.taglist_bg_empty                          = "#5c6a93"
theme.taglist_shape                             = gears.shape.circle

-- Notification stuff
theme.notification_shape                        = function(cr, width, height)
  gears.shape.rounded_rect(cr, width, height, 5)
end

naughty.config.defaults.border_width            = 0
theme.notification_bg                           = theme.container_bg
-- Variables set for theming notifications:
theme.notification_icon_size                    = 100

-- Wibar/Modernbar
theme.container_bg                              = "#2a2a45"
theme.bg_systray                                = theme.container_bg

theme.bg_normal                                 = "#1a1a25"
theme.bg_focus                                  = "#535d6c"
theme.bg_urgent                                 = "#ff0000"
theme.bg_minimize                               = "#444444"

theme.fg_normal                                 = "#ffffff"
theme.fg_focus                                  = "#ffffff"
theme.fg_urgent                                 = "#ffffff"
theme.fg_minimize                               = "#ffffff"

theme.useless_gap                               = dpi(4)
theme.border_width                              = dpi(1)
theme.border_normal                             = "#3f3f3f"
theme.border_focus                              = "#5099FF"
theme.border_marked                             = "#91231c"

--Menu
theme.menu_submenu_icon                         = themes_path .. "default/submenu.png"
theme.menu_height                               = dpi(15)
theme.menu_width                                = dpi(100)

-- Define the image to load
theme.titlebar_close_button_normal              = themes_path .. "default/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = themes_path .. "default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal           = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive     = themes_path .. "default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = themes_path .. "default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = themes_path .. "default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = themes_path .. "default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive    = themes_path .. "default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = themes_path .. "default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = themes_path .. "default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = themes_path .. "default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive  = themes_path .. "default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = themes_path .. "default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = themes_path .. "default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = themes_path .. "default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path .. "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = themes_path .. "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = themes_path .. "default/titlebar/maximized_focus_active.png"

theme.wallpaper                                 = themes_path .. "default/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh                              = themes_path .. "default/layouts/fairhw.png"
theme.layout_fairv                              = themes_path .. "default/layouts/fairvw.png"
theme.layout_floating                           = themes_path .. "default/layouts/floatingw.png"
theme.layout_magnifier                          = themes_path .. "default/layouts/magnifierw.png"
theme.layout_max                                = themes_path .. "default/layouts/maxw.png"
theme.layout_fullscreen                         = themes_path .. "default/layouts/fullscreenw.png"
theme.layout_tilebottom                         = themes_path .. "default/layouts/tilebottomw.png"
theme.layout_tileleft                           = themes_path .. "default/layouts/tileleftw.png"
theme.layout_tile                               = themes_path .. "default/layouts/tilew.png"
theme.layout_tiletop                            = themes_path .. "default/layouts/tiletopw.png"
theme.layout_spiral                             = themes_path .. "default/layouts/spiralw.png"
theme.layout_dwindle                            = themes_path .. "default/layouts/dwindlew.png"
theme.layout_cornernw                           = themes_path .. "default/layouts/cornernww.png"
theme.layout_cornerne                           = themes_path .. "default/layouts/cornernew.png"
theme.layout_cornersw                           = themes_path .. "default/layouts/cornersww.png"
theme.layout_cornerse                           = themes_path .. "default/layouts/cornersew.png"


-- New AwesomeWM

-- Titlebar
-- This is a hack to make the bg transparent to allow rounded corners
theme.titlebar_bg = "#ffffff00"
theme.real_titlebar_bg = "#2a2f49"

local close_button_unfocused = gears.filesystem.get_configuration_dir() ..
"ui/bars/modernbar/titlebar_icons/close_button_unfocused.png"
local close_button_focused = gears.filesystem.get_configuration_dir() ..
"ui/bars/modernbar/titlebar_icons/close_button_focused.png"
local close_button_hover = gears.filesystem.get_configuration_dir() ..
"ui/bars/modernbar/titlebar_icons/close_button_hover.png"

local ontop_button_unfocused = gears.filesystem.get_configuration_dir() ..
"ui/bars/modernbar/titlebar_icons/ontop_button_unfocused.png"
local ontop_button_focused = gears.filesystem.get_configuration_dir() ..
"ui/bars/modernbar/titlebar_icons/ontop_button_focused.png"
local ontop_button_hover = gears.filesystem.get_configuration_dir() ..
"ui/bars/modernbar/titlebar_icons/ontop_button_hover.png"
local ontop_button_active = gears.filesystem.get_configuration_dir() ..
"ui/bars/modernbar/titlebar_icons/ontop_button_active.png"
local ontop_button_unfocused_active = gears.filesystem.get_configuration_dir() ..
"ui/bars/modernbar/titlebar_icons/ontop_button_unfocused_active.png"

local minimize_button_unfocused = gears.filesystem.get_configuration_dir() ..
"ui/bars/modernbar/titlebar_icons/minimize_button_unfocused.png"
local minimize_button_focused = gears.filesystem.get_configuration_dir() ..
"ui/bars/modernbar/titlebar_icons/minimize_button_focused.png"
local minimize_button_hover = gears.filesystem.get_configuration_dir() ..
"ui/bars/modernbar/titlebar_icons/minimize_button_hover.png"

theme.titlebar_close_button_normal = close_button_unfocused
theme.titlebar_close_button_normal_hover = close_button_unfocused
theme.titlebar_close_button_normal_press = close_button_unfocused
theme.titlebar_close_button_focus = close_button_focused
theme.titlebar_close_button_focus_hover = close_button_hover
theme.titlebar_close_button_focus_press = close_button_hover

theme.titlebar_ontop_button_normal = ontop_button_unfocused
theme.titlebar_ontop_button_focus = ontop_button_focused
theme.titlebar_ontop_button_normal_active = ontop_button_unfocused_active
theme.titlebar_ontop_button_normal_active_hover = ontop_button_unfocused_active
theme.titlebar_ontop_button_normal_active_press = ontop_button_unfocused_active
theme.titlebar_ontop_button_focus_active = ontop_button_active
theme.titlebar_ontop_button_focus_active_hover = ontop_button_active
theme.titlebar_ontop_button_focus_active_press = ontop_button_active
theme.titlebar_ontop_button_normal_inactive = ontop_button_unfocused
theme.titlebar_ontop_button_normal_inactive_hover = ontop_button_unfocused
theme.titlebar_ontop_button_normal_inactive_press = ontop_button_unfocused
theme.titlebar_ontop_button_focus_inactive = ontop_button_focused
theme.titlebar_ontop_button_focus_inactive_hover = ontop_button_hover
theme.titlebar_ontop_button_focus_inactive_press = ontop_button_hover

theme.titlebar_minimize_button_normal = minimize_button_unfocused
theme.titlebar_minimize_button_normal_hover = minimize_button_unfocused
theme.titlebar_minimize_button_normal_press = minimize_button_unfocused
theme.titlebar_minimize_button_focus = minimize_button_focused
theme.titlebar_minimize_button_focus_hover = minimize_button_hover
theme.titlebar_minimize_button_focus_press = minimize_button_hover

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --


-- Other

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
  theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- systray icon taglist_spacing
theme.systray_icon_spacing = 5

theme.gtk_theme = "Tokyonight-Dark-BL"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

theme.battery_popup_bg = theme.container_bg

return theme
