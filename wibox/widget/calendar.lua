---@meta wibox.widget.calendar

---@class wibox.widget.calendar : wibox.widget
local C

-- Gets the calendar date.
---@return osdate? date
function C:get_date(date) end

-- Sets the calendar date.
---@param date? osdate
---@param focus_date? osdate
function C:set_date(date, focus_date) end


---@class _wibox.widget.calendar
local M

---@param date? osdate
---@param font? font
---@return wibox.widget.calendar
function M.month(date, font) end

---@param date? osdate
---@param font? font
---@return wibox.widget.calendar
function M.year(date, font) end

return M
