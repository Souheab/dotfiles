local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")
local taglist = require("ui.bars.modernbar.taglist")
local volume = require("ui.widgets.volume")
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
  s.myclock = bettertextclock().widget

  -- Create battery widget only when enabled in GLOBAL.vars
  if GLOBAL and GLOBAL.vars and GLOBAL.vars.enable_battery then
    local battery_mod = require("ui.widgets.battery")
    local ok_batt, batt_widget = pcall(function() return battery_mod() end)
    if ok_batt and batt_widget and batt_widget.widget then
      s.mybattery = batt_widget.widget
    elseif ok_batt and batt_widget and type(batt_widget) == "table" and batt_widget.widget == nil then
      -- if module returned the widget directly
      s.mybattery = batt_widget
    end
  end

  gears.timer({
    timeout = 5,
    call_now = true,
    autostart = true,
    callback = function()
      s.myvolume.update()
      if s.mybattery and type(s.mybattery.update) == "function" then
        s.mybattery.update()
      end
      s.myclock.update()
    end,
  })

  -- Build right-side section dynamically so battery can be omitted
  local right_section = wibox.layout.fixed.horizontal()
  if s.mybattery then
    right_section:add(container(s.mybattery, 3, 5))
  end
  right_section:add(container(s.myvolume, 3, 5))
  right_section:add(s.mysystray)
  right_section:add(s.mylayoutbox)

  s.mywibar:setup({
    layout = wibox.layout.align.horizontal,
    expand = "none",
    {
      layout = wibox.layout.fixed.horizontal,
      s.mytaglist,
    },
    s.myclock,
    right_section,
  })
end)
