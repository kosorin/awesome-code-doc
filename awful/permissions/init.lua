---@meta awful.permissions

---@alias awful.permissions.activate_filter fun(client: client, context: string, hints: table): boolean

---Default implementation of the various requests handers.
---
---AwesomeWM has many `request::` signals across the core APIs. They help
---decouple the default behavior from the core API. The request handlers
---can be disconnected and replaced by module or `rc.lua` to alter
---AwesomeWM behavior.
---
---This module provides the default implementation of those request handlers.
---Beside some legacy signals, most request handlers have a main object, a
---named context and a table containing any low-level hints the core code is
---aware of. Each default handler implement a context based filter mechanism.
---This filter is called the "permissions". It allows requests to be denied.
---For example, if a tiled client asks to be resized or moved, the permission
---and deny it. In the documentation, many objects and properties have a
---"permissions" section you can display by clicking "show more".
---@class _awful.permissions
---@field generic_activate_filters awful.permissions.activate_filter[] # The list of all registered generic `request::activate` (focus stealing) filters. If a filter is added to only one context, it will be in `permissions.contextual_activate_filters`["context_name"].
---@field contextual_activate_filters table<string, awful.permissions.activate_filter> # The list of all registered contextual `request::activate` (focus stealing) filters. If a filter is added to only one context, it will be in `permissions.generic_activate_filters`.
local M

---@class awful.permissions.hints.activate
---@field raise? boolean # Should the client be unminimized and raised? Default: `false`
---@field switch_to_tag? boolean # Should the client's first tag be selected if none of the client's tags are selected? Default: `false`
---@field switch_to_tags? boolean # Select all tags associated with the client. Default: `false`

---Activate a window.
---
---This sets the focus only if the client is visible. If `raise` is set
---in the hints, it will also unminimize the client and move it to the top
---of its layer.
---
---It is the default signal handler for `request::activate` on a `client`.
---
---@param client client # A client to use.
---@param context string # The context where this signal was used.
---@param hints? awful.permissions.hints.activate # A table with additional hints.
function M.activate(client, context, hints) ; end

---Add an activate (focus stealing) filter function.
---
---The callback takes the following parameters:
---
---* **c** (*client*) The client requesting the activation
---* **context** (*string*) The activation context.
---* **hints** (*table*) Some additional hints (depending on the context)
---
---If the callback returns `true`, the client will be activated. If the callback
---returns `false`, the activation request is cancelled unless the `force` hint is
---set. If the callback returns `nil`, the previous callback will be executed.
---This will continue until either a callback handles the request or when it runs
---out of callbacks. In that case, the request will be granted if the client is
---visible.
---
---For example, to block Firefox from stealing the focus, use:
---
---    awful.permissions.add_activate_filter(function(c)
---        if c.class == "Firefox" then return false end
---    end, "permissions")
---
---@param f awful.permissions.activate_filter # The callback.
---@param context? string # The `request::activate` context.
function M.add_activate_filter(f, context) ; end

---Remove an activate (focus stealing) filter function.
---This is an helper to avoid dealing with `permissions.add_activate_filter` directly.
---@param f awful.permissions.activate_filter # The callback.
---@param context? string # The `request::activate` context.
function M.remove_activate_filter(f, context) ; end

---@class awful.permissions.hints.tag
---@field reason? string # Why the tag is being changed.

---Tag a window with its requested tag.
---
---It is the default signal handler for `request::tag` on a `client`.
---
---@param client client # A client to tag.
---@param tag? tag|boolean # A tag to use. If `true`, then the client is made `sticky`.
---@param hints? awful.permissions.hints.tag # A table with additional hints.
function M.tag(client, tag, hints) ; end

---Handle client urgent request.
---@param client client # A client to tag.
---@param urgent boolean # If the client should be urgent.
function M.urgent(client, urgent) ; end

---@class awful.permissions.hints.geometry
---@field store_geometry? boolean # Create a memento of the previous geometry in case it has to be restored. Default: `true`
---@field honor_workarea? boolean # Avoid overlapping the `wibar`s or other desktop decoration when applying the geometry. Default: `true`

---Move and resize the client.
---
---This is the default geometry request handler.
---
---@param client client # The client.
---@param context string # The context.
---@param hints? awful.permissions.hints.geometry # A table with additional hints.
function M.geometry(client, context, hints) ; end

---@class awful.permissions.hints.wibox_geometry
---@field x? integer # The horizontal position.
---@field y? integer # The vertical position.
---@field width? integer # The wibox width.
---@field height? integer # The wibox height.

---Move and resize the wiboxes.
---
---This is the default geometry request handler.
---
---@param wibox wibox # The wibox.
---@param context string # The context.
---@param hints? awful.permissions.hints.wibox_geometry # A table with additional hints.
function M.wibox_geometry(wibox, context, hints) ; end

---@class awful.permissions.hints.merge_maximization
---@field toggle? boolean # Toggle the maximization state rather than set it to `true`. Default: `false`

---Merge the 2 requests sent by clients wanting to be maximized.
---
---The X clients set 2 flags (atoms) when they want to be maximized. This caused
---2 `request::geometry` to be sent. This code gives some time for them to arrive
---and send a new `request::geometry` (through the property change) with the
---combined state.
---
---@param client client # The client.
---@param context string # The context.
---@param hints? awful.permissions.hints.merge_maximization # A table with additional hints.
function M.merge_maximization(client, context, hints) ; end

---@class awful.permissions.hints.client_geometry_requests
---@field x? integer # The horizontal position.
---@field y? integer # The vertical position.
---@field width? integer # The client width.
---@field height? integer # The client height.

---Allow the client to move itself.
---
---This is the default geometry request handler when the context is `permissions`.
---
---@param client client # The client.
---@param context string # The context.
---@param hints? awful.permissions.hints.client_geometry_requests # A table with additional hints.
function M.client_geometry_requests(client, context, hints) ; end

---The default client `request::border` handler.
---
---To replace this handler with your own, use:
---
---    client.disconnect_signal("request::border", awful.permissions.update_border)
---
---The default implementation chooses from dozens beautiful theme variables
---depending if the client is tiled, floating, maximized and then from its state
---(urgent, new, active, normal).
---
---@param client client # The client.
---@param context string # Why is the border changed.
function M.update_border(client, context) ; end

---Default handler for the `request::autoactivate` signal.
---
---All it does is to emit `request::activate` with the following context mapping:
---
---* `mouse_enter`: `mouse.enter`
---* `switch_tag` : `autofocus.check_focus_tag`
---* `history`    : `autofocus.check_focus`
---
---@param client client # The client.
---@param context string # Why is the client auto-activated.
---@param args? table # A table with additional hints.
function M.autoactivate(client, context, args) ; end

return M
