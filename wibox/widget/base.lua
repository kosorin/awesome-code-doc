---@meta wibox.widget.base

---@alias widget_layout_result { _widget: wibox.widget.base, _width: number, _height: number, _matrix: gears.matrix }
---@alias widget_template wd_a.wibox.widget.base
---@alias widget_value wibox.widget.base|widget_template|(fun(...): wibox.widget.base)


---@class wd_a.wibox.widget.base
---@field forced_height? number
---@field forced_width? number
---@field opacity? number
---@field visible? boolean
---@field buttons? awful.button[]

---@class wibox.widget.base : gears.object, widget_container
---@field _private wibox.widget.base.private
---@field is_widget true
---@field children wibox.widget.base[]
---@field all_children wibox.widget.base[]
---@field forced_height? number
---@field forced_width? number
---@field opacity number
---@field visible boolean
---@field buttons awful.button[]
local C
---@class wibox.widget.base.private
---@field buttons_formatted awful.button[]

---@param id string
---@return wibox.widget.base[]?
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
---@return number? # The forced width (`nil` if automatic).
function C:get_forced_width() end

---Set the widget's forced width.
---@param width? number # With `nil` the default mechanism of calling the `:fit` method is used.
function C:set_forced_width(width) end

---Get the widget's forced height.
---
---Note that widget instances can be used in different places simultaneously, and therefore can have multiple dimensions.
---If there is no forced width/height, then the only way to get the widget's actual size is during a `mouse::enter`, `mouse::leave` or button event.
---@return number? # The forced height (nil if automatic).
function C:get_forced_height() end

---Set the widget's forced height.
---@param height? number # With `nil` the default mechanism of calling the `:fit` method is used.
function C:set_forced_height(height) end

---Get the widget's direct children widgets.
---
---This method should be re-implemented by the relevant widgets.
---@return wibox.widget.base[] children # The children.
function C:get_children() end

---Replace the layout children.
---
---The default implementation does nothing, this must be re-implemented by all layout and container widgets.
---@param children wibox.widget.base[] # A table composed of valid widgets.
function C:set_children(children) end

---Get all direct and indirect children widgets.
---
---This will scan all containers recursively to find widgets.
---
---*Warning*: This method it prone to stack overflow if the widget, or any of its children, contains (directly or indirectly) itself.
---@return wibox.widget.base[] children # The children.
function C:get_all_children() end


---@class _wibox.widget.base
local M

---Create a widget from a declarative description.
---@param template widget_template # A table containing the widgets disposition.
---@return wibox.widget.base
function M.make_widget_declarative(template) end

---Create a widget from an undetermined value.
---
---The value can be:
---* A widget (in which case nothing new is created)
---* A declarative construct
---* A constructor function
---* A metaobject
---@param value widget_value # The value.
---@param ... any # Arguments passed to the contructor (if any).
---@return wibox.widget.base? # The new widget or `nil` in case of failure.
function M.make_widget_from_value(value, ...) end

---Create an empty widget skeleton.
---@param proxy? wibox.widget.base # If this is set, the returned widget will be a proxy for this widget. It will be equivalent to this widget. This means it looks the same on the screen.
---@param name? string # Name of the widget. If not set, it will be set automatically via `gears.object.modulename`.
---@param args? { enable_properties?: boolean, class?: table }
---@return wibox.widget.base
function M.make_widget(proxy, name, args) end

---Generate an empty widget which takes no space and displays nothing.
---@return wibox.widget.base
function M.empty_widget() end

---Fit a widget for the given available width and height.
---
---This calls the widget's `:fit` callback and caches the result for later use.
---Never call `:fit` directly, but always through this function!
---@param parent wibox.widget.base # The parent widget which requests this information.
---@param context widget_context # The context in which we are fit.
---@param widget wibox.widget.base # The widget to fit (this uses `widget:fit(context, width, height)`).
---@param width number # The available width for the widget.
---@param height number # The available height for the widget.
---@return number width # The width that the widget wants to use.
---@return number height # The height that the widget wants to use.
function M.fit_widget(parent, context, widget, width, height) end

---Lay out a widget for the given available width and height.
---
---This calls the widget's `:layout()` callback and caches the result for later use.
---Never call `:layout()` directly, but always through this function!
---
---However, normally there shouldn't be any reason why you need to use this function.
---@param parent wibox.widget.base # The parent widget which requests this information.
---@param context widget_context # The context in which we are laid out.
---@param widget wibox.widget.base # he widget to layout (this uses `widget:layout(context, width, height)`).
---@param width number # The available width for the widget.
---@param height number # The available height for the widget.
---@return widget_layout_result[] # The result from the widget's `:layout()` callback.
function M.layout_widget(parent, context, widget, width, height) end

---Create widget placement information. This should be used in a widget's `:layout()` callback.
---@param widget wibox.widget.base # The widget that should be placed.
---@param mat gears.matrix # A matrix transforming from the parent widget's coordinate system. For example, use matrix.create_translate(1, 2) to draw a widget at position (1, 2) relative to the parent widget.
---@param width number # The width of the widget in its own coordinate system. That is, after applying the transformation matrix.
---@param height number # The height of the widget in its own coordinate system. That is, after applying the transformation matrix.
---@return widget_layout_result # An opaque object that can be returned from `:layout()`.
function M.place_widget_via_matrix(widget, mat, width, height) end

---Create widget placement information. This should be used for a widget's `:layout()` callback.
---@param widget wibox.widget.base # The widget that should be placed.
---@param x number # The x coordinate for the widget.
---@param y number # The y coordinate for the widget.
---@param width number # The width of the widget in its own coordinate system. That is, after applying the transformation matrix.
---@param height number # The height of the widget in its own coordinate system. That is, after applying the transformation matrix.
---@return widget_layout_result # An opaque object that can be returned from `:layout()`.
function M.place_widget_at(widget, x, y, width, height) end

---Handle a button event on a widget.
---
---This is used internally and should not be called directly.
---@param event string
---@param widget wibox.widget.base
---@param x number
---@param y number
---@param button button
---@param modifiers key_modifier[]
---@param geometry geometry
function M.handle_button(event, widget, x, y, button, modifiers, geometry) end

---Do some sanity checking on a widget. This function raises an error if the widget is not valid.
---@param widget wibox.widget.base
function M.check_widget(widget) end

---Common implementation of the `:set_widget()` method exposed by many other widgets.
---
---Use this if your widget has no custom logic when setting the widget.
---@param self wibox.widget.base
---@param widget wibox.widget.base
---
---**Usage:**
---
---    rawset(my_custom_widget, "set_widget", wibox.widget.base.set_widget_common)
---
function M.set_widget_common(self, widget) end

return M
