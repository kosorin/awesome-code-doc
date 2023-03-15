---@meta wibox.layout.ratio

---@class wibox.layout.ratio : wibox.layout.flex
local C


---@class _wibox.layout.ratio
local M

---Creates and returns a new horizontal ratio layout.
---@param ... wibox.widget.base # Widgets that should be added to the layout.
---@return wibox.layout.ratio
function M.horizontal(...) end

---Creates and returns a new vertical ratio layout.
---@param ... wibox.widget.base # Widgets that should be added to the layout.
---@return wibox.layout.ratio
function M.vertical(...) end

return M
