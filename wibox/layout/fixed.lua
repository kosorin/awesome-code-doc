---@meta wibox.layout.fixed

---@class wd_a.wibox.layout.fixed : wd_a.wibox.layout
---@field spacing_widget widget_value
---@field fill_space boolean
---@field spacing number
---@field [integer] widget_value

---@class wd.wibox.layout.fixed.horizontal : wd_a.wibox.layout.fixed
---@class wd.wibox.layout.fixed.vertical : wd_a.wibox.layout.fixed

---@class wibox.layout.fixed : wibox.layout
---@field spacing_widget widget_value
---@field fill_space boolean
---@field spacing number
local C


---@class _wibox.layout.fixed
local M

---Creates and returns a new horizontal fixed layout.
---@param ... wibox.widget.base # Widgets that should be added to the layout.
---@return wibox.layout.fixed
function M.horizontal(...) end

---Creates and returns a new vertical fixed layout.
---@param ... wibox.widget.base # Widgets that should be added to the layout.
---@return wibox.layout.fixed
function M.vertical(...) end

return M
