---@meta wibox.drawable

---@class wibox.drawable : gears.object
---@field drawable unknown
---@field _widget_hierarchy? wibox.hierarchy
local C


---@class _wibox.drawable
---@operator call: wibox.drawable
local M

---@param d unknown
---@param widget_context_skeleton unknown
---@param drawable_name unknown
---@return wibox.drawable
function M.new(d, widget_context_skeleton, drawable_name) end

return M
