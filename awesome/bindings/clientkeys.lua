local awful = require("awful")
local modkey = GLOBAL.vars.modkey

client.connect_signal("request::default_keybindings", function()
	awful.keyboard.append_client_keybindings({
		awful.key({ modkey }, "f", function(c)
			c.fullscreen = not c.fullscreen
			c:raise()
		end, { description = "toggle fullscreen", group = "client" }),
		awful.key({ modkey }, "q", function(c)
			c:kill()
		end, { description = "close", group = "client" }),
		awful.key(
			{ modkey, "Control" },
			"space",
			awful.client.floating.toggle,
			{ description = "toggle floating", group = "client" }
		),
		awful.key({ modkey, "Control" }, "Return", function(c)
			c:swap(awful.client.getmaster())
		end, { description = "move to master", group = "client" }),
		awful.key({ modkey }, "o", function(c)
			c:move_to_screen()
		end, { description = "move to screen", group = "client" }),
		awful.key({ modkey }, "t", function(c)
			c.ontop = not c.ontop
		end, { description = "toggle keep on top", group = "client" }),
		awful.key({ modkey }, "n", function(c)
			-- The client currently has the input focus, so it cannot be
			-- minimized, since minimized clients can't have the focus.
			c.minimized = true
		end, { description = "minimize", group = "client" }),
		awful.key({ modkey }, "m", function(c)
			if c.fullscreen then
				c.fullscreen = not c.fullscreen
				c.maximized = false
			end
			c.maximized = not c.maximized
			c:raise()
		end, { description = "(un)maximize", group = "client" }),
		awful.key({ modkey, "Control" }, "m", function(c)
			c.maximized_vertical = not c.maximized_vertical
			c:raise()
		end, { description = "(un)maximize vertically", group = "client" }),
		awful.key({ modkey, "Shift" }, "m", function(c)
			c.maximized_horizontal = not c.maximized_horizontal
			c:raise()
		end, { description = "(un)maximize horizontally", group = "client" }),
		awful.key(
			{ modkey, "Shift" },
			"b",
			awful.titlebar.toggle,
			{ description = "toggle title bar", group = "client" }
		),
		awful.key({ modkey, "Control" }, "k", function()
			awful.client.incwfact(-0.05)
		end, { description = "increase master height factor", group = "client" }),
		awful.key({ modkey, "Control" }, "j", function()
			awful.client.incwfact(0.05)
		end, { description = "decrease master height factor", group = "client" }),

		-- By-direction client focus
		awful.key({ modkey }, "j", function()
			awful.client.focus.global_bydirection("down")
			if client.focus then
				client.focus:raise()
			end
		end, { description = "focus down", group = "client" }),

		awful.key({ modkey }, "k", function()
			awful.client.focus.global_bydirection("up")
			if client.focus then
				client.focus:raise()
			end
		end, { description = "focus up", group = "client" }),

		awful.key({ modkey }, "h", function()
			awful.client.focus.global_bydirection("left")
			if client.focus then
				client.focus:raise()
			end
		end, { description = "focus left", group = "client" }),

		awful.key({ modkey }, "l", function()
			awful.client.focus.global_bydirection("right")
			if client.focus then
				client.focus:raise()
			end
		end, { description = "focus right", group = "client" }),

		-- Layout manipulation

		awful.key({ modkey, "Shift" }, "j", function()
			awful.client.swap.global_bydirection("down")
		end, { description = "swap with the client below", group = "client" }),
		awful.key({ modkey, "Shift" }, "k", function()
			awful.client.swap.global_bydirection("up")
		end, { description = "swap with the client above", group = "client" }),
		awful.key({ modkey, "Shift" }, "h", function()
			awful.client.swap.global_bydirection("left")
		end, { description = "swap with the client to the left", group = "client" }),
		awful.key({ modkey, "Shift" }, "l", function()
			awful.client.swap.global_bydirection("right")
		end, { description = "swap with the client to the right", group = "client" }),
		awful.key(
			{ modkey },
			"u",
			awful.client.urgent.jumpto,
			{ description = "jump to urgent client", group = "client" }
		),
		awful.key({ modkey }, "Tab", function()
			awful.client.focus.byidx(-1)
			if client.focus then
				client.focus:raise()
			end
		end, { description = "cycle with previous/go back", group = "client" }),
	})
end)
