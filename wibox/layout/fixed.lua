---@meta wibox.layout.fixed

---@class wibox.layout.fixed : wibox.layout
local C


---@class _wibox.layout.fixed
local M

---Creates and returns a new horizontal fixed layout.
---@param ... wibox.widget # Widgets that should be added to the layout.
---@return wibox.layout.fixed
function M.horizontal(...) end

---Creates and returns a new vertical fixed layout.
---@param ... wibox.widget # Widgets that should be added to the layout.
---@return wibox.layout.fixed
function M.vertical(...) end

return M
