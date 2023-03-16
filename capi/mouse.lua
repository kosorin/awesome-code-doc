---@meta _
---@todo

---@class mouse.status
---@field x integer
---@field y integer
---@field buttons table<button, boolean>

---Manipulate and inspect the mouse cursor. The mouse buttons are represented as index.
---@class _mouse
---@field screen unknown
---@field current_client unknown
---@field current_wibox unknown
---@field current_widgets unknown
---@field current_widget unknown
---@field current_widget_geometry unknown
---@field current_widget_geometries unknown
---@field is_left_mouse_button_pressed unknown
---@field is_right_mouse_button_pressed unknown
---@field is_middle_mouse_button_pressed unknown
local M

---Get the client or any object which is under the pointer.
---@return client|wibox|nil
function M.object_under_pointer()
end

---Get or set the mouse coords.
---@param coords? point
---@param silent? boolean # Disable `mouse::enter` or `mouse::leave` events that could be triggered by the pointer when moving.
---@return mouse.status
function M.coords(coords, silent)
end
