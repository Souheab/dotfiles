local awful = require("awful")
local ruled = require("ruled")

ruled.client.connect_signal("request::rules", function()
  -- All clients will match this rule.
  ruled.client.append_rule({
    rule = {},
    properties = {
      --border_width = beautiful.border_width,
      --border_color = beautiful.border_normal,
      focus = awful.client.focus.filter,
      raise = true,
      screen = awful.screen.preferred,
      placement = awful.placement.no_overlap + awful.placement.no_offscreen,
      size_hints_honor = false,
    },
  })

  -- Make mpv honor size hints
  ruled.client.append_rule({
    rule = { class = "mpv" },
    properties = { size_hints_honor = true },
  })

  ruled.client.append_rule({
    rule = { class = "discord" },
    properties = { tag = screen[1].tags[9] },
  })

  ruled.client.append_rule({
    rule = { class = "vesktop" },
    properties = { tag = screen[1].tags[9] },
  })

  ruled.client.append_rule({
    rule = { class = "Rhythmbox" },
    properties = { tag = screen[1].tags[6] },
  })

  ruled.client.append_rule({
    rule = { class = "resonance" },
    properties = { tag = screen[1].tags[6] },
  })

  ruled.client.append_rule({ rule = { instance = "polybar" }, properties = { border_width = 0 } })

  -- Floating clients.
  ruled.client.append_rule({
    rule_any = {
      instance = {
        "DTA",     -- Firefox addon DownThemAll.
        "copyq",   -- Includes session name in class.
        "pinentry",
      },
      class = {
        "Arandr",
        "Blueman-manager",
        "Gpick",
        "Kruler",
        "MessageWin",    -- kalarm.
        "Sxiv",
        "Tor Browser",   -- Needs a fixed window size to avoid fingerprinting by screen size.
        "Wpa_gui",
        "veromix",
        "xtightvncviewer",
      },
      -- Note that the name property shown in xprop might be set slightly after creation of the client
      -- and the name shown there might not match defined rules here.
      name = {
        "Event Tester",   -- xev.
        "LaTeX OCR",
        "latexocr",
      },
      role = {
        "AlarmWindow",     -- Thunderbird's calendar.
        "ConfigManager",   -- Thunderbird's about:config.
        "pop-up",          -- e.g. Google Chrome's (detached) Developer Tools.
      },
    },
    properties = {
      floating = true,
    },
  })

  -- Add titlebars to normal clients and dialogs
  ruled.client.append_rule({
    rule_any = {
      type = { "normal", "dialog" },
    },
    properties = {
      titlebars_enabled = false,
    },
  })
end)
