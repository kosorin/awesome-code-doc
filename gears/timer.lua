---@meta gears.timer
---@todo

---@class gears.timer : gears.object
---@field started boolean
---@field timeout number
local C

function C:start() end

function C:stop() end

function C:again() end


---@class _gears.timer
---@operator call : gears.timer
local M

---Call the given function at the end of the current GLib event loop iteration.
---@param callback fun(...) The function that should be called
---@param ... any Arguments to the callback function
function M.delayed_call(callback, ...) end

return M
