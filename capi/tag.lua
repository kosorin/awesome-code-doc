---@meta _

---@class tag
---@field name string # The tag name.
---@field selected boolean # True if the tag is selected or viewed.
---@field activated boolean # True if the tag is active and can be used.
---@field index integer # The tag index.
---@field screen screen # The tag screen.
---@field master_width_factor number # The tag master width factor. The master width factor is one of the 5 main properties used to configure the layout. Each layout interpret (or ignore) this property differently. See the layout suit documentation for information about how the master width factor is used.
---@field layout awful.layout|function # The tag client layout.
---@field layouts awful.layout[]|function[] # The (proposed) list of available layouts for this tag.
---@field volatile boolean # Define if the tag must be deleted when the last client is untagged.
---@field gap integer # The gap (spacing, also called useless_gap) between clients.
---@field gap_single_client integer # Enable gaps for a single client.
---@field master_fill_policy "expand"|"master_width_factor" # Set size fill policy for the master client(s).
---@field master_count integer # Set the number of master windows.
---@field icon image # The tag icon.
---@field column_count integer # Set the number of columns.
local C

---Get or set the clients attached to this tag
---@param clients_table client[] # None or a table of clients to set as being tagged with this tag.
---@return client[] # A table with the clients attached to this tags.
function C:clients(clients_table) end

---Swap two tags.
---@param tag2 tag
function C:swap(tag2) end

---Remove all tagged clients
---@param args { fallback_tag?: tag, allow_untagged?: boolean }
function C:clear(args) end

---Delete a tag.
---@param fallback_tag? tag # A fallback tag.
---@param force? boolean # Move even non-sticky clients to the fallback tag.
---@return boolean # Returns true if the tag is successfully deleted. If there are no clients exclusively on this tag then delete it. Any stickied clients are assigned to the optional 'fallback_tag'. If after deleting the tag there is no selected tag, try and restore from history or select the first tag on the screen.
function C:delete(fallback_tag, force) end

---View only a tag.
function C:view_only() end

---Emit a signal.
---@param name tag_signals # A string with the event name
---@param ... any # The signal arguments
function C:emit_signal(name, ...) end

---Connect to a signal.
---@param name tag_signals # A string with the event name.
---@param func fun(...: any) # The function to call
function C:connect_signal(name, func) end

---# Connect to a signal weakly.
---This allows the callback function to be garbage collected and automatically disconnects the signal when that happens.
---**Warning**: Only use this function if you really, really, really know what you are doing.
---@param name tag_signals # A string with the event name.
---@param func fun(...: any) # The function to call
function C:weak_connect_signal(name, func) end

---@class _tag
---@field [integer] tag
tag = {}

---Get the number of instances.
---@return tag[]
function tag.instances() end

---Connect to a signal.
---@param name _tag_signals # A string with the event name.
---@param func fun(...: any) # The function to call
function tag.connect_signal(name, func) end

---Disconnect from a signal.
---@param name _tag_signals # A string with the event name.
---@param func fun(...: any) # The function to disconnect
function tag.disconnect_signal(name, func) end

---Emit a signal.
---@param name _tag_signals # A string with the event name
---@param ... any # The signal arguments
function tag.emit_signal(name, ...) end
