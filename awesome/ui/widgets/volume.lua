local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")

local function constructor()
	local volume = {}
	local cmd = "pamixer --get-volume-human"

  local icons_path = gears.filesystem.get_configuration_dir() .. "ui/widgets/icons/"
	local volume_textbox = wibox.widget.textbox()
  local volume_icon = wibox.widget.imagebox(icons_path .. "vol.png")

	volume.widget = wibox.widget({
		wibox.container.margin(volume_icon, 3, 4, 6, 6),
		wibox.container.margin(volume_textbox, 3, 3, 6, 7),
		layout = wibox.layout.fixed.horizontal,
	})

	volume.widget.update = function()
		awful.spawn.easy_async_with_shell(cmd, function(stdout)
			volume_textbox.text = stdout:sub(1, #stdout - 1)
      local volume_compare = stdout:sub(1, #stdout - 2)
        if volume_compare == "mute" then
          volume_icon.image = icons_path .. "vol_muted.png"
        else
          local volume_compare_num = tonumber(volume_compare)
          if type(volume_compare_num) == "number" then
            if tonumber(volume_compare) > 70 then
              volume_icon.image = icons_path .. "vol3.png"
            elseif tonumber(volume_compare) > 30 then
              volume_icon.image = icons_path .. "vol2.png"
            elseif tonumber(volume_compare) > 0 then
              volume_icon.image = icons_path .. "vol1.png"
            else
              volume_icon.image = icons_path .. "vol_muted.png"
            end
          end
        end
    end)
  end

	volume.widget.update()

	return volume
end

return constructor
