---@meta gears.debug

---Utility functions to make development easier.
---@class _gears.debug
local M

---Inspect the value in data.
---@param data any Value to inspect.
---@param tag? string The name of the value.
---@param depth? integer Depth of recursion.
---@return string A string that contains the expanded value of data.
function M.dump_return(data, tag, depth) end

---Print the table (or any other value) to the console.
---@param data any Table to print.
---@param tag? string The name of the table.
---@param depth? integer Depth of recursion.
function M.dump(data, tag, depth) end

---Print an warning message.
---@param message string The warning message to print.
function M.print_warning(message) end

---Print an error message.
---@param message string The error message to print.
function M.print_error(message) end

---Display a deprecation notice, but only once per traceback.
---This function also emits the debug::deprecation signal on the awesome global
---object. If the deprecated API has been deprecated for more than one API level,
---it will also send a non-fatal error.
---@param see? boolean # The message to a new method / function to use.
---@param args { raw: boolean, deprecated_in: integer } # Extra arguments.
function M.deprecate(see, args) end

---Create a class proxy with deprecation messages. This is useful when a class has moved somewhere else.
---@param fallback table # The new class.
---@param old_name string # The old class name.
---@param new_name string # The new class name.
---@param args { deprecated_in: number } # The version which deprecated this class.
function M.deprecate_class(fallback, old_name, new_name, args) end

return M
