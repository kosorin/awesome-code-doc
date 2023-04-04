---@meta gears.timer

---@class gears.timer : gears.object
---@field started boolean # Read-only boolean field indicating if the timer has been started.
---@field timeout number # Interval in seconds to emit the timeout signal. Can be any value, including floating point ones (e.g. 1.5 seconds).
local C

---Start the timer
function C:start() end

---Stop the timer
---Does nothing if the timer isn't running.
function C:stop() end

---Restart the timer.
---This is equivalent to stopping the timer if it is running and then starting it.
function C:again() end


---@class _gears.timer
---@operator call : gears.timer
local M

---Create a simple timer for calling the callback function continuously.
---This is a small wrapper around gears.timer, that creates a timer based on
---callback. The timer will run continuously and call callback every timeout
---seconds. It is stopped when callback returns false, when callback throws an
---error or when the :stop() method is called on the return value.
---@param timeout number # Timeout in seconds (e.g. 1.5).
---@param callback fun(...): boolean # Function to run. If it returns false or nil the timer stops
---@return gears.timer
function M.start_new(timeout, callback) end

---Create a simple timer for calling the callback function continuously.
---This function is almost identical to gears.timer.start_new. The only difference
---is that this does not prevent the callback function from being garbage collected.
---In addition to the conditions in gears.timer.start_new, this timer will also stop
---if callback was garbage collected since the previous run.
---@param timeout number # Timeout in seconds (e.g. 1.5).
---@param callback fun(...): boolean # Function to run. If it returns false or nil the timer stops
---@return gears.timer
function M.weak_start_new(timeout, callback) end

---Run all pending delayed calls now. This function should best not be used at all, because it means that less batching happens and the delayed calls run prematurely.
function M.run_delayed_calls_now() end

---Call the given function at the end of the current GLib event loop iteration.
---@param callback fun(...) # The function that should be called.
---@param ... any Arguments to the callback function.
function M.delayed_call(callback, ...) end

return M
