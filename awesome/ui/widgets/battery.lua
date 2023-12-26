local wibox = require("wibox")
local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")

local battery = {}

local function get_battery_percentage()
  local f = io.open("/sys/class/power_supply/BAT0/capacity", "r")
  local battery_num
  local battery_num_string = ""
  if f ~= nil then
    battery_num_string = f:read("*all")
    battery_num = tonumber(battery_num_string)
    f:close()
  else
    battery_num = -1
  end
  return battery_num
end

local function get_battery_status()
  local f = io.open("/sys/class/power_supply/BAT0/status", "r")
  local battery_status = ""
  if f ~= nil then
    battery_status = f:read("*all")
    f:close()
  end
  return battery_status
end

local function popup()
  local battery_value = get_battery_percentage()

  -- local screen_width = awful.screen.focused().workarea.width;
  -- local screen_height = awful.screen.focused().workarea.height;

  local battery_popup = {}

  local battery_ok_button = wibox.widget {
    {
      {
        text = "OK",
        font = beautiful.base_font .. " 15",
        widget = wibox.widget.textbox,
        align = "center",
      },
      widget = wibox.container.margin,
      top = 10,
      bottom = 10,
      left = 30,
      right = 30,
    },
    widget = wibox.container.background,
    bg = "#353550", -- TODO put in theme.lua
    shape = function(cr, width, height)
      gears.shape.rounded_rect(cr, width, height, 10)
    end,
    shape_border_width = 1,
    shape_border_color = "#aaaaaa",
  }


  local battery_popup_widget = wibox.widget {
    {
      {
        text = "Battery Low " .. "(" .. battery_value .. "%)" .. ", Plug in your charger",
        font = beautiful.base_font .. " 20",
        widget = wibox.widget.textbox,
      },
      widget = wibox.container.margin,
      margins = 20
    },
    {
      {
        battery_ok_button,
        layout = wibox.container.place,
        halign = "center",
        valign = "center",
      },
      widget = wibox.container.margin,
      margins = 20
    },
    layout = wibox.layout.fixed.vertical
  }

  local battery_awful_popup = awful.popup {
    widget = battery_popup_widget,
    placement    = awful.placement.centered,
    ontop = false,
    shape = gears.shape.rectangle,
    visible      = false,
    bg = beautiful.battery_popup_bg,
    border_color = beautiful.border_focus,
    border_width = 1,
  }

  local buttons = gears.table.join(
    awful.button({}, 1, function()
      battery_awful_popup.visible = false
    end)
  )

  battery_ok_button:buttons(buttons)

  battery_popup.popup = battery_awful_popup
  battery_popup.shown = false

  local function check()
    local battery_value = get_battery_percentage()
    if battery_value < 10 and not battery_popup.shown then
      battery_awful_popup.visible = true
      battery_popup.shown = true
    end
  end

  gears.timer({
    timeout = 30,
    call_now = true,
    autostart = true,
    callback = check,
  })

  return battery_popup
end

local function constructor()
	local battery_widget = {}

	local battery_textbox = wibox.widget.textbox()
	local icons_path = gears.filesystem.get_configuration_dir() .. "ui/widgets/icons/"
	local battery_icon = wibox.widget.imagebox()

	battery_widget.widget = wibox.widget({
		wibox.container.margin(battery_icon, 3, 9, 8, 8),
		wibox.container.margin(battery_textbox, 0, 0, 6, 7),
		layout = wibox.layout.fixed.horizontal,
	})

	battery_widget.widget.update = function()
    local battery_status = get_battery_status()
    local battery_num = get_battery_percentage()

    if battery_status == "" then
      battery_icon.image = icons_path .. "battery_empty.png"
    end

    battery_textbox.text = battery_num .. "%"

    if battery_status == "Charging\n" then
      battery_icon.image = icons_path .. "battery_charging.png"
    elseif battery_num > 90 then
      battery_icon.image = icons_path .. "battery_full.png"
    elseif battery_num > 60 then
      battery_icon.image = icons_path .. "battery_75.png"
    elseif battery_num > 30 then
      battery_icon.image = icons_path .. "battery_half.png"
    elseif battery_num > 15 then
      battery_icon.image = icons_path .. "battery_quarter.png"
    elseif battery_num > 10 then
      battery_icon.image = icons_path .. "battery_10.png"
    else
      battery_icon.image = icons_path .. "battery_empty.png"
    end
	end

	battery_widget.widget.update()

	return battery_widget
end

battery.get_percentage = get_battery_percentage
battery.popup = popup
setmetatable(battery, {__call = constructor})

return battery
