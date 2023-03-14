---@meta gears.protected_call

---@class _gears.protected_call
local M

---Call a function in protected mode and handle error-reporting.
---
---If the function call succeeds, all results of the function are returned.
---Otherwise, an error message is printed and nothing is returned.
---@param callback function # The function to call.
---@param ... any # Arguments to the function.
---@return any ... # The result of the given function, or nothing if an error occurred.
---@staticfct gears.protected_call
function M.call(callback, ...) end

return M
