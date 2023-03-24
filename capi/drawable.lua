---@meta _
---@todo

---@class drawable
---@field emit_signal unknown
---@field connect_signal unknown
local C

---Refresh a drawable's content. This has to be called whenever some drawing to the drawable's surface has been done and should become visible.
---@return geometry
function C:refresh() end

---Get drawable geometry.
---@return geometry
function C:geometry() end


---@class _drawable
local M

return M
