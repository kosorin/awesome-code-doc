---@meta wibox.layout.align

---@alias wibox.layout.align.expand
---|>"inside" # The widgets in slot one and three are set to their minimal required size. The widget in slot two is then given the remaining space. This is the default behaviour.
---| "outside" # The widget in slot two is set to its minimal required size and placed in the center of the space available to the layout. The other widgets are then given the remaining space on either side. If the center widget requires all available space, the outer widgets are not drawn at all.
---| "none" # All widgets are given their minimal required size or the remaining space, whichever is smaller. The center widget gets priority.

---@class wd_a.wibox.layout.align : wd_a.wibox.layout
---@field first? widget_value
---@field second? widget_value
---@field third? widget_value
---@field expand wibox.layout.align.expand
---@field [1|2|3]? widget_value

---@class wd.wibox.layout.align.horizontal : wd_a.wibox.layout.align
---@class wd.wibox.layout.align.vertical : wd_a.wibox.layout.align

---@class wibox.layout.align : wibox.layout
local C

---@class _wibox.layout.align
local M

---Returns a new horizontal align layout.
---@param left? wibox.widget.base # Widget to be put in slot one.
---@param middle? wibox.widget.base # Widget to be put in slot two.
---@param right? wibox.widget.base # Widget to be put in slot three.
---@return wibox.layout.align
function M.horizontal(left, middle, right) end

---Returns a new vertical align layout.
---@param left? wibox.widget.base # Widget to be put in slot one.
---@param middle? wibox.widget.base # Widget to be put in slot two.
---@param right? wibox.widget.base # Widget to be put in slot three.
---@return wibox.layout.align
function M.vertical(left, middle, right) end

return M
