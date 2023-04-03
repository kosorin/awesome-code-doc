---@meta _

---@class drawable
---@field image string|cairo_surface|nil # Drawable object.
local C
---Refresh a drawable's content. This has to be called whenever some drawing to the drawable's surface has been done and should become visible.
---@return geometry
function C:refresh() end

---Get drawable geometry.
---@return geometry
function C:geometry() end


---@class _drawable
---@field [integer] drawable
local M

---Get the number of instances.
---@return drawable[]
function M.instances() end

---Connect to a signal.
---@param name _drawable_signals # A string with the event name.
---@param func fun(...: any) # The function to call
function M.connect_signal(name, func) end

---Disconnect from a signal.
---@param name _drawable_signals # A string with the event name.
---@param func fun(...: any) # The function to disconnect
function M.disconnect_signal(name, func) end

---Emit a signal.
---@param name _drawable_signals # A string with the event name
---@param ... any # The signal arguments
function M.emit_signal(name, ...) end

return M
