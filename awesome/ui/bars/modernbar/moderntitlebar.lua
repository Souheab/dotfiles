local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")

local titlebar_border_radius = 0

client.connect_signal("request::titlebars", function(c)
  local buttons = gears.table.join(
    awful.button({}, 1, function()
      c:emit_signal("request::activate", "titlebar", { raise = true })
      awful.mouse.client.move(c)
    end),
    awful.button({}, 3, function()
      c:emit_signal("request::activate", "titlebar", { raise = true })
      awful.mouse.client.resize(c)
    end)
  )

  local resize_button_only = gears.table.join(
    awful.button({}, 3, function()
      c:emit_signal("request::activate", "titlebar", { raise = true })
      awful.mouse.client.resize(c)
  end))

  local mytitlebar = awful.titlebar(c, {
    size = 30,
    position = "top",
  })

  local left_buttons_gap = 9

  local left_buttons = wibox.container.margin(wibox.widget {
    wibox.container.margin(awful.titlebar.widget.closebutton(c), 0, left_buttons_gap, 0, 0),
    wibox.container.margin(awful.titlebar.widget.ontopbutton(c), 0, left_buttons_gap, 0, 0),
    awful.titlebar.widget.minimizebutton(c),
    layout = wibox.layout.fixed.horizontal,
    buttons = resize_button_only,
  }, 0, 0, 2, 2)

  mytitlebar:setup({
    {
      {
        left_buttons,
        { -- Middle
          { -- Title
            align = "center",
            widget = awful.titlebar.widget.titlewidget(c),
          },
          buttons = buttons,
          layout = wibox.layout.flex.horizontal,
        },
        { -- Right
          awful.titlebar.widget.iconwidget(c),
          layout = wibox.layout.fixed.horizontal(),
          buttons = buttons,
        },
        layout = wibox.layout.align.horizontal,
      },
      widget = wibox.container.margin,
      top = 5,
      bottom = 5,
      left = 10,
      right = 10,
    },
    bg = beautiful.real_titlebar_bg,
    widget = wibox.container.background,
    shape = function(cr, width, height)
      gears.shape.partially_rounded_rect(cr, width, height, true, true, false, false, titlebar_border_radius)
    end,
  })
end)
