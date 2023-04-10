---@meta wibox.container

---@class wd_a.wibox.container : wd_a.wibox.widget.base
---@field widget? widget_value

---@class wibox.container : wibox.widget.base
---@field widget? wibox.widget.base
local C

---@return wibox.widget.base?
function C:get_widget() end

---@param widget? wibox.widget.base
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
