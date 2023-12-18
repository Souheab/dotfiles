local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")
local beautiful = require("beautiful")
local modkey = GLOBAL.vars.modkey
local altkey = GLOBAL.vars.altkey
local terminal = GLOBAL.vars.terminal
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

-- helper function/variables
local focus_mode = false
local function toggle_wibar (state)
  for s in screen do
    if state ~= nil then
      s.mywibar.visible = state
    else
      s.mywibar.visible = not s.mywibar.visible
    end
  end
end


-- Awesome Keybindings
awful.keyboard.append_global_keybindings({
  -- Show help
  awful.key({ modkey }, "s", hotkeys_popup.show_help, { description = "show help", group = "awesome" }),

  -- Show/hide wibar


  awful.key({ modkey }, "b", function()
      toggle_wibar()
  end, { description = "toggle wibar", group = "awesome" }),


  awful.key({ modkey, "Control" }, "r", awesome.restart, { description = "reload awesome", group = "awesome" }),
  awful.key({ modkey, "Shift" }, "q", awesome.quit, { description = "quit awesome", group = "awesome" }),
})


-- Layout Keybindings
awful.keyboard.append_global_keybindings({

  awful.key({ altkey }, "j", function()
    awful.tag.incnmaster(-1, nil, true)
  end, { description = "Decrease the number of masters by 1", group = "layout" }),

  awful.key({ altkey }, "k", function()
    awful.tag.incnmaster(1, nil, true)
  end, { description = "Increase the number of masters by 1", group = "layout" }),

  awful.key({ modkey }, "r",
    function()
      local t = awful.tag.selected(awful.screen.focused())
      t.layout = awful.layout.suit.tile
      t.master_count = 1
      t.master_width_factor = 0.5
      local num_clients = #t:clients()

      if num_clients > 1 then
        for _, c in ipairs(t:clients()) do
          awful.client.setwfact(1/(#t:clients() - 1), c)
        end
      else
        for _, c in ipairs(t:clients()) do
          awful.client.setwfact(1.0, c)
        end
      end
    end, { description = "Reset layout", group = "layout" }),


  awful.key({ modkey, "Control" }, "l", function()
    awful.tag.incmwfact(0.05)
  end, { description = "increase master width factor", group = "layout" }),

  awful.key({ modkey, "Control" }, "h", function()
    awful.tag.incmwfact(-0.05)
  end, { description = "decrease master width factor", group = "layout" }),

  awful.key({ modkey, altkey }, "k",     function () awful.tag.incncol( 1, nil, true)    end,
    {description = "increase the number of columns", group = "layout"}),

  awful.key({ modkey, altkey }, "j",     function () awful.tag.incncol(-1, nil, true)    end,
    {description = "decrease the number of columns", group = "layout"}),

  awful.key({ modkey }, "space", function()
    awful.layout.inc(1)
  end, { description = "select next", group = "layout" }),

  awful.key({ modkey, "Shift" }, "space", function()
    awful.layout.inc(-1)
  end, { description = "select previous", group = "layout" }),

  awful.key {
    modifiers   = { modkey },
    keygroup    = "numpad",
    description = "select layout directly",
    group       = "layout",
    on_press    = function(index)
      local t = awful.screen.focused().selected_tag
      if t then
        t.layout = t.layouts[index] or t.layout
      end
    end,
  },
})
-- Launcher Keybindings
awful.keyboard.append_global_keybindings({
  -- Standard program
  awful.key({ modkey }, "Return", function()
    awful.spawn(terminal)
  end, { description = "open a terminal", group = "launcher" }),

})

-- Hotkeys Keybindings
awful.keyboard.append_global_keybindings({

  -- Volume mute
  awful.key({}, "XF86AudioMute", function()
    os.execute("pactl set-sink-mute @DEFAULT_SINK@ toggle")
    for s in screen do
      s.myvolume.update()
    end
  end, { description = "Mute Volume", group = "hotkeys" }),

  -- Volume Lower
  awful.key({}, "XF86AudioLowerVolume", function()
    os.execute("pactl -- set-sink-volume 0 -1%")
    for s in screen do
      s.myvolume.update()
    end
  end, { description = "Lower Volume", group = "hotkeys" }),

  awful.key({altkey}, "-", function()
    os.execute("pactl -- set-sink-volume 0 -1%")
    for s in screen do
      s.myvolume.update()
    end
  end, { description = "Lower Volume", group = "hotkeys" }),

  -- Volume Raise
  awful.key({}, "XF86AudioRaiseVolume", function()
    os.execute("pactl -- set-sink-volume 0 +1%")
    for s in screen do
      s.myvolume.update()
    end
  end, { description = "Raise Volume", group = "hotkeys" }),

  awful.key({altkey}, "=", function()
    os.execute("pactl -- set-sink-volume 0 +1%")
    for s in screen do
      s.myvolume.update()
    end
  end, { description = "Raise Volume", group = "hotkeys" }),

  -- Volume set to 100%
  awful.key({ "Ctrl" }, "XF86AudioRaiseVolume", function()
    os.execute("pactl -- set-sink-volume 0 100%")
    for s in screen do
      s.myvolume.update()
    end
  end, { description = "Set volume to 100%", group = "hotkeys" }),

  -- Mic Mute
  awful.key({}, "XF86AudioMicMute", function()
    awful.spawn.easy_async_with_shell('pamixer --list-sources | grep \\"Built-in', function(stdout)
      os.execute("pamixer --source " .. string.match(stdout, "%d+") .. " -t")
    end)
  end, { description = "Mute Mic", group = "hotkeys" }),

  -- Screen brightness
  awful.key({}, "XF86MonBrightnessUp", function()
    os.execute("xbacklight -inc 10")
  end, { description = "+10%", group = "hotkeys" }),
  awful.key({}, "XF86MonBrightnessDown", function()
    os.execute("xbacklight -dec 10")
  end, { description = "-10%", group = "hotkeys" }),

  -- Toggle systray
  awful.key({ modkey }, "=", function()
    awful.screen.focused().mysystray.visible = not awful.screen.focused().mysystray.visible
  end, { description = "Toggle systray", group = "hotkeys" })
}
)

-- Keybindings related to appearance
awful.keyboard.append_global_keybindings({
    awful.key ({modkey, "Shift"}, "f", function ()
        focus_mode = not focus_mode
        if focus_mode then
          beautiful.useless_gap = dpi(0)
          toggle_wibar(false)
        else
          beautiful.useless_gap = dpi(4)
          toggle_wibar(true)
        end
        -- TODO modify toggle_wibar api to allow on off based on arg
    end, {description = "Toggle focus mode", group = "Appearance"}),
})

-- Tag Keybindings
awful.keyboard.append_global_keybindings({
  awful.key {
    modifiers   = { modkey },
    keygroup    = "numrow",
    description = "only view tag",
    group       = "tag",
    on_press    = function(index)
      local screen = awful.screen.focused()
      local tag = screen.tags[index]
      if tag then
        tag:view_only()
      end
      end,
  },
  awful.key {
    modifiers   = { modkey, "Control" },
    keygroup    = "numrow",
    description = "toggle tag",
    group       = "tag",
    on_press    = function(index)
      local screen = awful.screen.focused()
      local tag = screen.tags[index]
      if tag then
        awful.tag.viewtoggle(tag)
      end
    end,
  },
  awful.key {
    modifiers   = { modkey, "Shift" },
    keygroup    = "numrow",
    description = "move focused client to tag",
    group       = "tag",
    on_press    = function(index)
      if client.focus then
        local tag = client.focus.screen.tags[index]
        if tag then
          client.focus:move_to_tag(tag)
        end
      end
    end,
  },
  awful.key {
    modifiers   = { modkey, "Control", "Shift" },
    keygroup    = "numrow",
    description = "toggle focused client on tag",
    group       = "tag",
    on_press    = function(index)
      if client.focus then
        local tag = client.focus.screen.tags[index]
        if tag then
          client.focus:toggle_tag(tag)
        end
      end
    end,
  },

  -- Tag browsing
  awful.key({ modkey }, "Left", awful.tag.viewprev, { description = "view previous", group = "tag" }),
  awful.key({ modkey }, "Right", awful.tag.viewnext, { description = "view next", group = "tag" }),
  awful.key({ modkey }, "Escape", awful.tag.history.restore, { description = "go back", group = "tag" }),
})


-- Keybindings related to clients that are actually global
awful.keyboard.append_global_keybindings({
  awful.key({ modkey, "Control" }, "n", function()
    local c = awful.client.restore()
    -- Focus restored client
    if c then
      c:activate { raise = true, context = "key.unminimize" }
    end
  end, { description = "restore minimized", group = "client" }),
})
