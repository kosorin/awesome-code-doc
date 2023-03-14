---@meta wibox.layout.align

---@class wibox.layout.align : wibox.layout
local C


---@class _wibox.layout.align
local M

---Returns a new horizontal align layout.
---@param left? wibox.widget # Widget to be put in slot one.
---@param middle? wibox.widget # Widget to be put in slot two.
---@param right? wibox.widget # Widget to be put in slot three.
---@return wibox.layout.align
function M.horizontal(left, middle, right) end

---Returns a new vertical align layout.
---@param left? wibox.widget # Widget to be put in slot one.
---@param middle? wibox.widget # Widget to be put in slot two.
---@param right? wibox.widget # Widget to be put in slot three.
---@return wibox.layout.align
function M.vertical(left, middle, right) end

return M
