---@meta wibox.layout.grid

---@class wibox.layout.grid : wibox.layout
local C


---@class _wibox.layout.grid
---@operator call: wibox.layout.grid
local M

---Creates and returns a new horizontal grid layout.
---
---Each new widget is positioned below the last widget on the same column up to `forced_num_rows`. Then the next column is filled, creating it if it doesn't exist.
---@param forced_num_rows? integer # Forced number of rows (`nil` for automatic).
---@param ... wibox.widget.base # Widgets that should be added to the layout.
---@return wibox.layout.grid
function M.horizontal(forced_num_rows, ...) end

---Creates and returns a new vertical grid layout.
---
---Each new widget is positioned left of the last widget on the same row up to `forced_num_cols`. Then the next row is filled, creating it if it doesn't exist.
---@param forced_num_cols? integer # Forced number of columns (`nil` for automatic).
---@param ... wibox.widget.base # Widgets that should be added to the layout.
---@return wibox.layout.grid
function M.vertical(forced_num_cols, ...) end

return M
