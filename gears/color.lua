---@meta gears.color
---@todo

---@class _gears.color
local M

---Create a pattern from a given string.
---@return lgi.cairo.Pattern # A cairo pattern object.
function M.create_pattern(color) end

---Get a valid color for Pango markup.
---@param color any # The color to check.
---@param fallback? string # The color to return if the first is invalid.
---@return string color # if it is valid, else fallback.
function M.ensure_pango_color(color, fallback) end

return M
