local wibox = require("wibox")

local function constructor()

  local bettertextclock = {}

	bettertextclock.widget = wibox.widget.textbox()

	bettertextclock.widget.update = function()
    local month_day_today = tonumber(os.date("%d"))
    local suffix = "th"

    if month_day_today == 1 or month_day_today == 21 or month_day_today == 31 then
      suffix = "st"
    elseif month_day_today == 2 or month_day_today == 22 then
      suffix = "nd"
    elseif month_day_today == 3 or month_day_today == 23 then
      suffix = "rd"
    end

    local date_format_string = "%A, %e" .. suffix .. " of %B %Y, %I:%M %p"

    bettertextclock.widget.text = os.date(date_format_string)
	end

	bettertextclock.widget.update()

	return bettertextclock
end

return constructor
