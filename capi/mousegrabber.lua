---@meta _

---Set a callback to process all mouse events.
---@class _mousegrabber
mousegrabber = {}

---Grab the mouse pointer and list motions, calling callback function at each motion.
---
---The callback function must return a boolean value:
---* `true` to continue grabbing
---* `false` to stop
---@param callback fun(status: mouse.status): boolean
---@param cursor cursor? # *Warning:* You must enter value even if it's `nil`.
function mousegrabber.run(callback, cursor) end

---Stop grabbing the mouse pointer.
function mousegrabber.stop() end

---Check if mousegrabber is running.
---@return boolean
function mousegrabber.isrunning() end
