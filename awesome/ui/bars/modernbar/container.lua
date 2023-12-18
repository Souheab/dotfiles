local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")

local function container(margin_vertical, margin_horizontal, border_radius)
  return function(widget, inner_margin_vertical, inner_margin_horizontal)
    if inner_margin_horizontal == nil then
      inner_margin_horizontal = inner_margin_vertical
    end

    local container_no_margin = wibox.widget({
        {
          wibox.container.margin(widget, inner_margin_horizontal, inner_margin_horizontal, inner_margin_vertical,
                                 inner_margin_vertical),
          layout = wibox.layout.stack,
        },
        shape = function(cr, width, height)
          gears.shape.rounded_rect(cr, width, height, border_radius)
        end,
        widget = wibox.container.background,
        bg = beautiful.container_bg
    })

    return wibox.container.margin(
      container_no_margin,
      margin_horizontal,
      margin_horizontal,
      margin_vertical,
      margin_vertical
    )
  end
end

return container
