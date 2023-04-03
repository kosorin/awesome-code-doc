---@meta wibox.hierarchy

---@class wibox.hierarchy
---@field _widget? wibox.widget.base,
---@field _parent? wibox.hierarchy,
---@field _children wibox.hierarchy[],
local C

---Update a widget hierarchy with some new state.
---@param context widget_context # The context in which we are laid out.
---@param widget wibox.widget.base # The widget that is at the base of the hierarchy.
---@param width number # The available width for this hierarchy.
---@param height number # The available height for this hierarchy.
---@param region? cairo_region # A region to use for accumulating changed parts.
---@return cairo_region # A cairo region describing the changed parts (either the `region` argument or a new, internally created region).
function C:update(context, widget, width, height, region) end

---Get a matrix that transforms to the parent's coordinate space from this hierarchy's coordinate system.
---@return gears.matrix # A matrix describing the transformation.
function C:get_matrix_to_parent() end

---Get a matrix that transforms to the parent's coordinate space from this hierarchy's coordinate system.
---@return gears.matrix # A matrix describing the transformation.
function C:get_matrix_to_parent() end

---Get a matrix that transforms to the base of this hierarchy's coordinate system (aka the coordinate system of the device that this hierarchy is applied upon) from this hierarchy's coordinate system.
---@return gears.matrix # A matrix describing the transformation.
function C:get_matrix_to_device() end

---Get a matrix that transforms from the parent's coordinate space into this hierarchy's coordinate system.
---@return gears.matrix # A matrix describing the transformation.
function C:get_matrix_from_parent() end

---Get a matrix that transforms from the base of this hierarchy's coordinate system (aka the coordinate system of the device that this hierarchy is applied upon) into this hierarchy's coordinate system.
---@return gears.matrix # A matrix describing the transformation.
function C:get_matrix_from_device() end

---Get the extents that this hierarchy possibly draws to (in the current coordinate space). This includes the size of this element plus the size of all children (after applying the corresponding transformation).
---@return number x
---@return number y
---@return number width
---@return number height
function C:get_draw_extents() end

---Get the size that this hierarchy logically covers (in the current coordinate space).
---@return number width
---@return number height
function C:get_size() end

---Get a list of all children.
---@return wibox.hierarchy[] # List of all children hierarchies.
function C:get_children() end

---Count how often this widget is visible inside this hierarchy. This function only works with widgets registered via `count_widget`.
---@param widget wibox.widget.base # The widget that should be counted.
---@return integer # The number of times that this widget is contained in this hierarchy.
function C:get_count(widget) end

---Draw a hierarchy to some cairo context.
---
---This function draws the widgets in this widget hierarchy to the given cairo context. The context's clip is used to skip parts that aren't visible.
---@param context widget_context # The context in which widgets are drawn.
---@param cr cairo_context # The cairo context that is used for drawing.
---@noreturn
function C:draw(context, cr) end


---Management of widget hierarchies.
---
---Each widget hierarchy object has a widget for which it saves e.g. size and transformation in its parent. Also, each widget has a number of children.
---@class _wibox.hierarchy
local M

---Add a widget to the list of widgets for which hierarchies should count their occurrences.
---
---Note that for correct operations, the widget must not yet be visible in any hierarchy.
---@param widget wibox.widget.base # The widget that should be counted.
function M.count_widget(widget) end

---@param context widget_context # The context in which we are laid out.
---@param widget wibox.widget.base # The widget that is at the base of the hierarchy.
---@param width number # The available width for this hierarchy.
---@param height number # The available height for this hierarchy.
---@param redraw_callback fun(self: wibox.hierarchy, arg?: any) # Callback that is called with the corresponding widget hierarchy on `widget::redraw_needed` on some widget.
---@param layout_callback fun(self: wibox.hierarchy, arg?: any) # Callback that is called with the corresponding widget hierarchy on `widget::layout_changed` on some widget.
---@param callback_arg? any # A second argument that is given to the above callbacks.
---@return wibox.hierarchy # A new widget hierarchy.
function M.new(context, widget, width, height, redraw_callback, layout_callback, callback_arg) end

return M
