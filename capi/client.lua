---@meta _

---@class client
---@field window integer # The X window id.
---@field name string # The client title.
---@field skip_taskbar string # True if the client does not want to be in taskbar.
---@field type window_type # The window type.
---@field class string # The client class.
---@field instance string # The client instance.
---@field pid? integer # The client PID, if available.
---@field role? string # The window role, if available.
---@field machine string # The machine the client is running on.
---@field icon_name string # The client name when iconified.
---@field icon image # The client icon as a surface.
---@field icon_sizes icon_size[] # The available sizes of client icons. This is a table where each entry contains the width and height of an icon.
---@field screen screen # Client screen.
---@field hidden boolean # Define if the client must be hidden (Never mapped, invisible in taskbar).
---@field minimized boolean # Define if the client must be iconified (Only visible in taskbar).
---@field size_hints_honor boolean # Honor size hints, e.g. respect size ratio.
---@field border_width integer # The client border width.
---@field border_color color # The client border color.
---@field urgent boolean # Set to true when the client ask for attention.
---@field content cairo_surface # A cairo surface for the client window content.
---@field opacity number # The client opacity.
---@field ontop boolean # The client is on top of every other windows.
---@field above boolean # The client is above normal windows.
---@field below boolean # The client is below normal windows.
---@field fullscreen boolean # The client is fullscreen or not.
---@field maximized boolean # The client is maximized (horizontally and vertically) or not.
---@field maximized_horizontal boolean # The client is maximized horizontally or not.
---@field maximized_vertical boolean # The client is maximized vertically or not.
---@field transient_for? client # The client the window is transient for.
---@field group_window integer # Window identification unique to a group of windows.
---@field leader_window integer # Identification unique to windows spawned by the same command.
---@field size_hints size_hints # A table with size hints of the client.
---@field motif_wm_hints motif_wm_hints # The motif WM hints of the client.
---@field sticky boolean # Set the client sticky (Available on all tags).
---@field modal boolean # Indicate if the client is modal.
---@field focusable boolean # True if the client can receive the input focus.
---@field shape_bounding shape # The client's bounding shape as set by awesome as a (native) cairo surface.
---@field shape_clip shape # The client's clip shape as set by awesome as a (native) cairo surface.
---@field shape_input shape # The client's input shape as set by awesome as a (native) cairo surface.
---@field client_shape_bounding shape # The client's bounding shape as set by the program as a (native) cairo surface.
---@field client_shape_clip shape # The client's clip shape as set by the program as a (native) cairo surface.
---@field startup_id string # The FreeDesktop StartId.
---@field valid boolean # If the client that this object refers to is still managed by awesome.
---@field first_tag? tag # The first tag of the client.
---@field buttons awful.button[] # Get or set mouse buttons bindings for a client.
---@field keys awful.key[] # Get or set keys bindings for a client.
---@field marked boolean # If a client is marked or not.
---@field is_fixed boolean # Return if a client has a fixed size or not.
---@field immobilized_horizontal boolean # Is the client immobilized horizontally?
---@field immobilized_vertical boolean # Is the client immobilized vertically?
---@field floating boolean # The client floating state.
---@field x integer # The x coordinates.
---@field y integer # The y coordinates.
---@field width integer # The width of the client.
---@field height integer # The height of the client.
---@field dockable boolean # If the client is dockable.
---@field requests_no_titlebar boolean # If the client requests not to be decorated with a titlebar.
---@field shape shape # Set the client shape.
---@field active boolean # Return true if the client is active (has focus).
---@field struts thickness # Return client struts (reserved space at the edge of the screen).
local C

---Check if a client is visible on its screen.
---@return boolean # A boolean value, true if the client is visible, false otherwise.
function C:isvisible() end

---Kill a client.
function C:kill() end

---Swap a client with another one in the global client list.
---@param other_client client # A client to swap with.
function C:swap(other_client) end

--- Access or set the client tags.
---@param tags_table? tag[] # A table with tags to set, or nil to get the current tags.
---@return tag[] # A table with all tags.
function C:tags(tags_table) end

---Raise a client on top of others which are on the same layer.
function C:raise() end

---Lower a client on below of others which are on the same layer.
function C:lower() end

---Stop managing a client.
function C:unmanage() end

---Return or set client geometry.
---@param geometry? geometry # A table with new coordinates, or nil.
---@return geometry # A table with client geometry and coordinates.
function C:geometry(geometry) end

---Apply size hints to a size.
---@param width integer # Desired width of client.
---@param height integer # Desired height of client.
---@return integer # Actual width of client
---@return integer # Actual height of client
function C:apply_wm_size_hints(width, height) end

---Get the client's n-th icon.
---@param index integer # The index in the list of icons to get.
---@return cairo_surface # A lightuserdata for a cairo surface. This reference must be destroyed!
function C:get_icon(index) end

---Jump to the given client.
---@param merge boolean|function # If true then merge tags (select the client's first tag additionally) when the client is not visible. If it is a function, it will be called with the client and its first tag as arguments.
function C:jump_to(merge) end

---Append a keybinding.
---@param key awful.key # The key.
function C:append_keybinding(key) end

---Remove a keybinding.
---@param key awful.key # The key.
function C:remove_keybinding(key) end

---Append a mousebinding.
---@param button awful.button # The button.
function C:append_mousebinding(button) end

---Remove a mousebinding.
---@param button awful.button # The button.
function C:remove_mousebinding(button) end

---Move the client to the most significant layout position.
function C:to_primary_section() end

---Move the client to the least significant layout position.
function C:to_secondary_section() end

---Move/resize a client relative to current coordinates.
---@param x integer # The relative x coordinate.
---@param y integer # The relative y coordinate.
---@param width integer # The relative width.
---@param height integer # The relative height.
function C:relative_move(x,y,width,height) end

---Move a client to a tag.
---@param target_tag tag # The tag to move the client to.
function C:move_to_tag(target_tag) end

---Toggle a client on a tag.
---@param target_tag tag # The tag to toggle the client on.
function C:toggle_tag(target_tag) end

---Move a client to a screen.
---@param target_screen screen# The screen to move the client to.
function C:move_to_screen(target_screen) end

---Find suitable tags for newly created clients.
function C:to_select_tags() end

---Get a matching transient_for client (if any).
---@param matcher function # A function that should return true, if a matching parent client is found.
---@return client? # The matching parent client or nil.
function C:get_transient_for_matching(matcher) end

---Is a client transient for another one?
---@param other_client client # The parent client to check.
---@return client? # The parent client or nil.
function C:is_transient_for(other_client) end

---Activate (focus) a client.
---@param args { context: string, raise: boolean, force: boolean, switch_to_tags: boolean, switch_to_tag: boolean, action: boolean, toggle_minimization: boolean }
function C:activate(args) end

---Grant a permission for a client.
---@param permission string # The permission name (just the name, no `request::`).
---@param context string # The reason why this permission is requested.
function C:grant(permission, context) end

---Deny a permission for a client.
---@param permission string # The permission name (just the name, no `request::`).
---@param context string # The reason why this permission is requested.
function C:deny(permission, context) end

---Emit a signal.
---@param name client_signals # A string with the event name
---@param ... any # The signal arguments
function C:emit_signal(name, ...) end

---Connect to a signal.
---@param name client_signals # A string with the event name.
---@param func fun(...: any) # The function to call
function C:connect_signal(name, func) end

---# Connect to a signal weakly.
---This allows the callback function to be garbage collected and automatically disconnects the signal when that happens.
---**Warning**: Only use this function if you really, really, really know what you are doing.
---@param name client_signals # A string with the event name.
---@param func fun(...: any) # The function to call
function C:weak_connect_signal(name, func) end

---Disconnect from a signal.
---@param name client_signals # A string with the event name.
---@param func fun(...: any) # The function to call
function C:disconnect_signal(name, func) end

---@class _client
---@field [integer] client
---@field focus? client # The focused `client` or `nil` (in case there is none).
client = {}

---Get the number of instances.
---@return client[]
function client.instances() end

---Get all clients into a table.
---@param screen screen # A screen number to filter clients on.
---@param stacked boolean # Return clients in stacking order? (ordered from top to bottom).
function client.get(screen, stacked) end

---Connect to a signal.
---@param name _client_signals # A string with the event name.
---@param func fun(...: any) # The function to call
function client.connect_signal(name, func) end

---Disconnect from a signal.
---@param name _client_signals # A string with the event name.
---@param func fun(...: any) # The function to disconnect
function client.disconnect_signal(name, func) end

---Emit a signal.
---@param name _client_signals # A string with the event name
---@param ... any # The signal arguments
function client.emit_signal(name, ...) end
