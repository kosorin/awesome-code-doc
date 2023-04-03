---@meta _

---@class _dbus
dbus = {}

---Register a D-Bus name to receive messages from.
---@param bus string # A string indicating if we are using system or session bus.
---@param name string # A string with the name of the D-Bus name to register.
---@return boolean # True if everything worked fine, false otherwise.
---@deprecated
function dbus.request_name(bus, name) end

---Release a D-Bus name.
---@param bus string # A string indicating if we are using system or session bus.
---@param name string # A string with the name of the D-Bus name to unregister.
---@return boolean # True if everything worked fine, false otherwise.
---@deprecated
function dbus.release_name(bus, name) end

---Add a match rule to match messages going through the message bus.
---@param bus string # A string indicating if we are using system or session bus.
---@param name string # A string with the name of the match rule.
---@deprecated
function dbus.add_match(bus, name) end

---Removed a previously added match rule "by value" (the most recently-added identical rule gets removed).
---@param bus string # A string indicating if we are using system or session bus.
---@param name string # A string with the name of the match rule.
---@deprecated
function dbus.remove_match(bus, name) end

---Add a signal receiver on the D-Bus.
---@param interface string # A string with the interface name.
---@param func function # The function to call
---@deprecated
function dbus.connect_signal(interface, func) end

---Remove a signal receiver on the D-Bus.
---@param interface string # A string with the interface name.
---@param func function # The function to call
---@deprecated
function dbus.disconnect_signal(interface, func) end

---Emit a signal on the D-Bus.
---@param bus string # A string indicating if we are using system or session bus.
---@param path string # A string with the dbus path.
---@param interface string # A string with the interface name.
---@param method string # A string with the dbus method name.
---@param type_1st_arg string # Type of 1st argument
---@param value_1st_arg any # Value of 1st argument
---@param type_2nd_arg string # Type of 2nd argument
---@param value_2nd_arg any # Value of 2nd argument
---@deprecated
function dbus.emit_signal(bus, path, interface, method, type_1st_arg, value_1st_arg, type_2nd_arg, value_2nd_arg) end
