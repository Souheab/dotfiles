local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")

local modkey = GLOBAL.vars.modkey

local taglist_buttons = gears.table.join(
	awful.button({}, 1, function(t)
		t:view_only()
	end),
	awful.button({ modkey }, 1, function(t)
		if client.focus then
			client.focus:move_to_tag(t)
		end
	end),
	awful.button({}, 3, awful.tag.viewtoggle),
	awful.button({ modkey }, 3, function(t)
		if client.focus then
			client.focus:toggle_tag(t)
		end
	end),

	awful.button({}, 4, function(t)
		awful.tag.viewnext(t.screen)
	end),
	awful.button({}, 5, function(t)
		awful.tag.viewprev(t.screen)
	end)
)

return function(s, circle_size)
	return awful.widget.taglist({
		screen = s,
		filter = awful.widget.taglist.filter.all,
		buttons = taglist_buttons,
		widget_template = {
			{
				{
					{
						id = "background_role",
						forced_width = circle_size,
						forced_height = circle_size,
						shape = gears.shape.circle,
						widget = wibox.container.background,
					},
					margins = 4,
					widget = wibox.container.margin,
				},
				widget = wibox.container.place,
			},
			layout = wibox.layout.fixed.horizontal,
		},
	})
end
