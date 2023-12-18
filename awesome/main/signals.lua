local awful = require("awful")
local beautiful = require("beautiful")

-- reading
-- https://awesomewm.org/apidoc/classes/signals.html

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- {{{ Signals
-- Signal function to execute when a new client appears.
client.connect_signal("request::manage", function(c)
	-- Set the windows at the slave,
	-- i.e. put it at the end of others instead of setting it master.
	if not awesome.startup then
		awful.client.setslave(c)
	end

	if awesome.startup and not c.size_hints.user_position and not c.size_hints.program_position then
		-- Prevent clients from being unreachable after screen count changes.
		awful.placement.no_offscreen(c)
	end

end)

-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal("mouse::enter", function(c)
    c:activate { context = "mouse_enter", raise = false }
end)

---

client.connect_signal("focus", function(c)
	c.border_color = beautiful.border_focus
end)
client.connect_signal("unfocus", function(c)
	c.border_color = beautiful.border_normal
end)
-- }}}

-- Hide border when no tiling
-- Possibly causes bugs
screen.connect_signal("arrange", function(s)
  if s.selected_tag == nil then
    return
  end
	local max = s.selected_tag.layout.name == "max"
	local floating = s.selected_tag.layout.name == "floating"
	-- but iterate over clients instead of tiled_clients as tiled_clients doesn't include maximized windows

	for _, c in pairs(s.clients) do
		-- enable titlebar if floating
		if c.floating or floating then
			awful.titlebar.show(c)
		else
			awful.titlebar.hide(c)
		end

    if max or c.maximized or c.fullscreen then
      awful.titlebar.hide(c)
    end

		if max or floating or c.floating or c.maximized or c.fullscreen then
			c.border_width = 0
		else
			c.border_width = beautiful.border_width
		end
	end
end)
