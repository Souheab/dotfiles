local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")
local taglist = require("ui.bars.modernbar.taglist")
local volume = require("ui.widgets.volume")
local battery = require("ui.widgets.battery")
local bettertextclock = require("ui.widgets.bettertextclock")

local container_margin_vertical = 5
local container_margin_horizontal = 5
local border_radius = 4

local container = require("ui.bars.modernbar.container")(container_margin_vertical, container_margin_horizontal,
  border_radius)

awful.screen.connect_for_each_screen(function(s)
  s.mywibar = awful.wibar({ position = "top", screen = s, height = 42 })

  s.mytaglist = wibox.container.margin(taglist(s, 12), 5, 5, 0, 0)
  s.mylayoutbox = container(awful.widget.layoutbox(s), 6)
  s.mysystray = container(wibox.widget.systray(), 5)
  s.myvolume = volume().widget
  s.mybattery = battery().widget
  s.myclock = bettertextclock().widget

  gears.timer({
    timeout = 5,
    call_now = true,
    autostart = true,
    callback = function()
      s.myvolume.update()
      s.mybattery.update()
      s.myclock.update()
    end,
  })

  s.mywibar:setup({
    layout = wibox.layout.align.horizontal,
    expand = "none",
    {
      layout = wibox.layout.fixed.horizontal,
      s.mytaglist,
    },
    s.myclock,
    {
      layout = wibox.layout.fixed.horizontal,
      container(s.mybattery, 3, 5),
      container(s.myvolume, 3, 5),
      s.mysystray,
      s.mylayoutbox,
    },
  })
end)
