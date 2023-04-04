---@meta awful.client

---@class _awful.client
---@field focus _awful.client.focus
---@field property _awful.client.property
---@field swap _awful.client.swap
---@field urgent _awful.client.urgent
---@field next unknown
---@field cycle unknown
---@field restore unknown
---@field iterate unknown
---@field idx unknown
---@field setwfact unknown
---@field incwfact unknown
---@field object unknown
local M

---@deprecated
---@param screen iscreen
---@return client[]
function M.tiled(screen) end

---@deprecated
---@param screen iscreen
---@return client[]
function M.visible(screen) end

return M
