---@meta wibox.widget

---@alias widget_template table
---@alias widget_value wibox.widget|widget_template|(fun(...): wibox.widget)

---@class wibox.widget : gears.object
---@field is_widget true
---@field children wibox.widget[]
---@field all_children wibox.widget[]
---@field forced_height? number
---@field forced_width? number
---@field opacity number
---@field visible boolean
---@field buttons awful.button[]
local C

---@param id string
---@return wibox.widget[]|nil
function C:get_children_by_id(id) end

---@param context widget_context
---@param max_width number
---@param max_height number
function C:fit(context, max_width, max_height) end

---Set a declarative widget hierarchy description.
---@param args widget_template # A table containing the widget's disposition.
function C:setup(args) end

---Add a new `awful.button` to this widget.
---@param button awful.button # The button to add.
function C:add_button(button) end

---Is the widget visible?
---@return boolean
function C:get_visible() end

---Set a widget's visibility.
---@param visible boolean # Whether the widget is visible.
function C:set_visible(visible) end

---Get the widget's opacity.
---@return number # The opacity (between 0 (transparent) and 1 (opaque)).
function C:get_opacity() end

---Set a widget's opacity.
---@param opacity number # The opacity to use (a number from 0 (transparent) to 1 (opaque)).
function C:set_opacity(opacity) end

---Get the widget's forced width.
---
---Note that widget instances can be used in different places simultaneously, and therefore can have multiple dimensions.
---If there is no forced width/height, then the only way to get the widget's actual size is during a `mouse::enter`, `mouse::leave` or button event.
---@return number|nil # The forced width (`nil` if automatic).
function C:get_forced_width() end

---Set the widget's forced width.
---@param width? number # With `nil` the default mechanism of calling the `:fit` method is used.
function C:set_forced_width(width) end

---Get the widget's forced height.
---
---Note that widget instances can be used in different places simultaneously, and therefore can have multiple dimensions.
---If there is no forced width/height, then the only way to get the widget's actual size is during a `mouse::enter`, `mouse::leave` or button event.
---@return number|nil # The forced height (nil if automatic).
function C:get_forced_height() end

---Set the widget's forced height.
---@param height? number # With `nil` the default mechanism of calling the `:fit` method is used.
function C:set_forced_height(height) end

---Get the widget's direct children widgets.
---
---This method should be re-implemented by the relevant widgets.
---@return wibox.widget[] children # The children.
function C:get_children() end

---Replace the layout children.
---
---The default implementation does nothing, this must be re-implemented by all layout and container widgets.
---@param children wibox.widget[] # A table composed of valid widgets.
function C:set_children(children) end

---Get all direct and indirect children widgets.
---
---This will scan all containers recursively to find widgets.
---
---*Warning*: This method it prone to stack overflow if the widget, or any of its children, contains (directly or indirectly) itself.
---@return wibox.widget[] children # The children.
function C:get_all_children() end


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
---@operator call: wibox.widget
local M

---Draw a widget directly to a given cairo context.
---@param w wibox.widget
---@param cr cairo_context
---@param width number
---@param height number
---@param context widget_context
function M.draw_to_cairo_context(w, cr, width, height, context) end

---Create an SVG file showing this widget.
---@param w wibox.widget
---@param path string
---@param width number
---@param height number
---@param context widget_context
function M.draw_to_svg_file(w, path, width, height, context) end

---Create a cairo image surface showing this widget.
---@param w wibox.widget
---@param width number
---@param height number
---@param format unknown
---@param context widget_context
---@return cairo_surface
function M.draw_to_image_surface(w, width, height, format, context) end

return M
