---@meta wibox.hierarchy

---@class wibox.hierarchy
local C


---Management of widget hierarchies.
---
---Each widget hierarchy object has a widget for which it saves e.g. size and transformation in its parent. Also, each widget has a number of children.
---@class _wibox.hierarchy
local M

---@param context widget_context
---@param widget wibox.widget.base
---@param width number
---@param height number
---@param redraw_callback unknown
---@param layout_callback unknown
---@param callback_arg unknown
---@return wibox.hierarchy
function M.new(context, widget, width, height, redraw_callback, layout_callback, callback_arg) end

return M
