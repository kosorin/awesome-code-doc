---@meta wibox.container

---@class wibox.container : wibox.widget
---@field widget? wibox.widget
local C

---@return wibox.widget|nil
function C:get_widget() end

---@param widget? wibox.widget
function C:set_widget(widget) end


---@class _wibox.container
---@field arcchart _wibox.container.arcchart
---@field background _wibox.container.background
---@field constraint _wibox.container.constraint
---@field margin _wibox.container.margin
---@field mirror _wibox.container.mirror
---@field place _wibox.container.place
---@field radialprogressbar _wibox.container.radialprogressbar
---@field rotate _wibox.container.rotate
---@field scroll _wibox.container.scroll
---@field tile _wibox.container.tile
local M

return M
