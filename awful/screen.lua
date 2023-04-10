---@meta awful.screen

---@class _awful.screen
---@field default_focused_args unknown
---@field focus unknown
---@field focus_bydirection unknown
---@field focus_relative unknown
---@field preferred unknown
---@field set_auto_dpi_enabled unknown
local M

---Return the screen index corresponding to the given (pixel) coordinates.
---@param x number
---@param y number
---@return integer?
function M.getbycoord(x, y) end

---Get the focused screen.
---@return screen?
function M.focused() end

---Call a function for each existing and created-in-the-future screen.
---@param callback fun(screen: screen)
function M.connect_for_each_screen(callback) end

---Undo the effect of `awful.screen.connect_for_each_screen`.
---@param callback fun(screen: screen)
function M.disconnect_for_each_screen(callback) end

return M
