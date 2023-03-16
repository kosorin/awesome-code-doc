---@meta gears.protected_call

---Safely call a function and handle errors using `gears.debug`.
---
---This is a `pcall`/`xpcall` wrapper. All it does is to integrate into the AwesomeWM-wide error handling and logging.
---@class _gears.protected_call
local M

---Call a function in protected mode and handle error-reporting.
---
---If the function call succeeds, all results of the function are returned.
---Otherwise, an error message is printed and nothing is returned.
---@param callback function # The function to call.
---@param ... any # Arguments to the function.
---@return any ... # The result of the given function, or nothing if an error occurred.
function M.call(callback, ...) end

return M
