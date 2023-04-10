---@meta _

---@class mouse.status
---@field x integer
---@field y integer
---@field buttons table<button, boolean>

---Manipulate and inspect the mouse cursor. The mouse buttons are represented as index.
---@class _mouse
---@field screen? screen # The screen under the cursor.
---@field current_client? client # Get the client currently under the mouse cursor.
---@field current_wibox? wibox # Get the wibox currently under the mouse cursor.
---@field current_widgets? wibox.widget[] # Get the widgets currently under the mouse cursor.
---@field current_widget? wibox.widget # Get the topmost widget currently under the mouse cursor.
---@field current_widget_geometry? geometry # Get the current widget geometry.
---@field current_widget_geometries? geometry[] # Get the current widget geometries.
---@field is_left_mouse_button_pressed boolean # True if the left mouse button is pressed.
---@field is_right_mouse_button_pressed boolean # True if the right mouse button is pressed.
---@field is_middle_mouse_button_pressed boolean # True if the middle mouse button is pressed.
mouse = {}

---Get the client or any object which is under the pointer.
---@return client|wibox?
function mouse.object_under_pointer() end

---Get or set the mouse coords.
---@param coords? point
---@param silent? boolean # Disable `mouse::enter` or `mouse::leave` events that could be triggered by the pointer when moving.
---@return mouse.status
function mouse.coords(coords, silent) end
