require("relative-motions"):setup({ show_numbers = "none", show_motion = true })


function Manager:render(area)
  local chunks = self:layout(area)

  local bar = function(c, x, y)
    x, y = math.max(0, x), math.max(0, y)
    return ui.Bar(ui.Rect { x = x, y = y, w = ya.clamp(0, area.w - x, 1), h = math.min(1, area.h) }, ui.Bar.TOP)
        :symbol(c)
  end

  return ya.flat {
    -- Borders
    ui.Border(area, ui.Border.ALL),
    ui.Bar(chunks[1], ui.Bar.RIGHT),
    ui.Bar(chunks[3], ui.Bar.LEFT),

    bar("┬", chunks[1].right - 1, chunks[1].y),
    bar("┴", chunks[1].right - 1, chunks[1].bottom - 1),
    bar("┬", chunks[2].right, chunks[2].y),
    bar("┴", chunks[2].right, chunks[1].bottom - 1),

    -- Parent
    Parent:render(chunks[1]:padding(ui.Padding.xy(1))),
    -- Current
    Current:render(chunks[2]:padding(ui.Padding.y(1))),
    -- Preview
    Preview:render(chunks[3]:padding(ui.Padding.xy(1))),
  }
end

function Status:size()
  local h = cx.active.current.hovered
  if not h then
    return ui.Line {}
  end

  local style = self.style()
  return ui.Line {
    ui.Span(" " .. ya.readable_size(h:size() or h.cha.length) .. " "):style(THEME.status.separator_style),
    ui.Span(THEME.status.separator_close):fg(THEME.status.separator_style.fg),
  }
end
