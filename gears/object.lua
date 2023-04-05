---@meta gears.object
---@todo

---@class gears.object
local C

---# Connect to a signal weakly.
---This allows the callback function to be garbage collected and automatically
---disconnects the signal when that happens.
---***Warning:*** Only use this function if you really, really, really know what you are doing.
---@param name string # The name of the signal.
---@param callback fun(self: unknown, ...) # The callback to call when the signal is emitted.
function C:weak_connect_signal(name, callback) end

---Connect to a signal.
---@param name string # The name of the signal.
---@param callback fun(self: unknown, ...) # The callback to call when the signal is emitted.
function C:connect_signal(name, callback) end

---Disonnect from a signal.
---@param name string # The name of the signal.
---@param callback fun(self: unknown, ...) # The callback that should be disconnected.
function C:disconnect_signal(name, callback) end

---Emit a signal.
---@param name string # The name of the signal.
---@param ... any # Extra arguments for the callback functions. Each connected function receives the object as first argument and then any extra arguments that are given to `emit_signal`.
function C:emit_signal(name, ...) end


---@class _gears.object
---@operator call: gears.object
local M = { properties = {} }

---Helper function to get the module name out of debug.getinfo.
---@param level? integer # Level for `debug.getinfo(level, "S")`. Typically 2 or 3.
---@return string # The module name, e.g. "wibox.container.background".
function M.modulename(level) end

---Add the missing properties handler to a CAPI object such as client/tag/screen.
---Valid arguments are:
---* getter: A smart getter (handle property getter itself)
---* getter_fallback: A dumb getter method (don't handle individual property getter)
---* getter_class: A module with individual property getter/setter
---* getter_prefix: A special getter prefix (like "get" or "get_" (default))
---* setter: A smart setter (handle property setter itself)
---* setter_fallback: A dumb setter method (don't handle individual property setter)
---* setter_class: A module with individual property getter/setter
---* setter_prefix: A special setter prefix (like "set" or "set_" (default))
---* auto_emit: Emit "property::__" automatically (default: false). This is ignored when setterfallback is set or a setter is found
---@param class unknown # A standard luaobject derived object.
---@param args { getter: function?, getter_fallback: function?, getter_class: string?, getter_prefix: string?, setter: function?, default_setter: function?, setter_prefix: string?, setter_class: string?, auto_emit: boolean? }
function M.properties.capi_index_fallback(class, args) end

return M
