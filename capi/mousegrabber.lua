---@meta _

---@class mousegrabber.args
---@field buttons table<button, boolean>
---@field x integer
---@field y integer

---@class _mousegrabber
local M

---Grab the mouse pointer and list motions, calling callback function at each motion.
---
---The callback function must return a boolean value:
--- - `true` to continue grabbing
--- - `false` to stop
---@param callback fun(args: mousegrabber.args): boolean
---@param cursor? cursor
function M.run(callback, cursor) end

---Stop grabbing the mouse pointer.
function M.stop() end

---Check if mousegrabber is running.
---@return boolean
function M.isrunning() end
