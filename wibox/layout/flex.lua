---@meta wibox.layout.flex

---@class wibox.layout.flex : wibox.layout.fixed
local C


---@class _wibox.layout.flex
local M

---Creates and returns a new horizontal flex layout.
---@param ... wibox.widget.base # Widgets that should be added to the layout.
---@return wibox.layout.flex
function M.horizontal(...) end

---Creates and returns a new vertical flex layout.
---@param ... wibox.widget.base # Widgets that should be added to the layout.
---@return wibox.layout.flex
function M.vertical(...) end

return M
