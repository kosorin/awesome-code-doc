---@meta wibox.widget

---@class wd_a.wibox.widget : wd_a.wibox.widget.base

---@class wibox.widget : wibox.widget.base
local C


---@class _wibox.widget
---@field base _wibox.widget.base
---@field calendar _wibox.widget.calendar
---@field checkbox _wibox.widget.checkbox
---@field graph _wibox.widget.graph
---@field imagebox _wibox.widget.imagebox
---@field piechart _wibox.widget.piechart
---@field progressbar _wibox.widget.progressbar
---@field separator _wibox.widget.separator
---@field slider _wibox.widget.slider
---@field systray _wibox.widget.systray
---@field textbox _wibox.widget.textbox
---@field textclock _wibox.widget.textclock
---@operator call: wibox.widget.base
local M

---Draw a widget directly to a given cairo context.
---@param w wibox.widget.base
---@param cr cairo_context
---@param width number
---@param height number
---@param context widget_context
function M.draw_to_cairo_context(w, cr, width, height, context) end

---Create an SVG file showing this widget.
---@param w wibox.widget.base
---@param path string
---@param width number
---@param height number
---@param context widget_context
function M.draw_to_svg_file(w, path, width, height, context) end

---Create a cairo image surface showing this widget.
---@param w wibox.widget.base
---@param width number
---@param height number
---@param format unknown
---@param context widget_context
---@return cairo_surface
function M.draw_to_image_surface(w, width, height, format, context) end

return M
