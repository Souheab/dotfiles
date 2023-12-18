local wibox = require("wibox")
local gears = require("gears")

local function constructor()
	local battery = {}

	local battery_textbox = wibox.widget.textbox()
	local icons_path = gears.filesystem.get_configuration_dir() .. "ui/widgets/icons/"
	local battery_icon = wibox.widget.imagebox()

	battery.widget = wibox.widget({
		wibox.container.margin(battery_icon, 3, 9, 8, 8),
		wibox.container.margin(battery_textbox, 0, 0, 6, 7),
		layout = wibox.layout.fixed.horizontal,
	})

	battery.widget.update = function()
    local f1 = io.open("/sys/class/power_supply/BAT0/capacity", "r")
    local f2 = io.open("/sys/class/power_supply/BAT0/status", "r")
    local battery_num_string = ""
    local battery_status = ""
    if f1 ~= nil and f2 ~= nil then
      battery_num_string = f1:read("*all")
      battery_status = f2:read("*all")
      f1:close()
      f2:close()
    else
      battery_textbox.text = "N/A"
      battery_icon.image = icons_path .. "battery_empty.png"
    end
    local battery_num = tonumber(battery_num_string)
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

	battery.widget.update()

	return battery
end

return constructor
