---@meta awful.layout

---@class awful.layout
---@field name string
local C

---@class _awful.layout
---@field suit _awful.layout.suit
---@field layouts awful.layout[] # The default list of layouts.
local M

---Return the tag layout index (from `awful.layout.layouts`).
---
---If the layout isn't part of `awful.layout.layouts`, this function returns `nil`.
---@param tag tag # The tag.
---@return number? # The layout index.
function M.get_tag_layout_index(tag) end

---Get the current layout.
---@param screen iscreen # The screen.
---@return awful.layout # The layout function.
function M.get(screen) end

---Change the layout of the current tag.
---@param index integer # Relative index.
---@param screen? iscreen # The screen. Default: `awful.screen.focused()`
---@param layouts? awful.layout[] # A table of layouts. Default: `selected_tag.layouts` of the `screen` parameter.
function M.inc(index, screen, layouts) end

---Set the layout function of the current tag.
---@param layout awful.layout|function # Layout object or function.
---@param tag? tag # The tag to modify. Default: `mouse.screen.selected_tag`.
function M.set(layout, tag) end

---@class awful.layout.parameters
---@field workarea geometry
---@field geometry geometry # The screen geometry.
---@field clients client[] # The clients.
---@field screen integer # The internal screen number.
---@field padding thickness # The screen padding.
---@field useless_gap number

---Get the layout parameters used for the screen.
---
---This should give the same result as `arrange`, but without the `geometries` parameter, as this is computed during arranging.
---
---If `tag` is given, `screen` is ignored, if none are given, the mouse screen is used.
---@param tag? tag # The tag to query.
---@param screen? iscreen # The screen.
---@return awful.layout.parameters
function M.parameters(tag, screen) end

---Arrange a screen using its current layout.
---@param screen iscreen # The screen to arrange.
function M.arrange(screen) end

---Append a layout to the list of default tag layouts.
---@param to_add awful.layout # A valid tag layout.
function M.append_default_layout(to_add) end

---Remove a layout from the list of default layouts.
---@param to_remove awful.layout # A valid tag layout.
---@return boolean # Returns `true` if the layout was found and removed.
function M.remove_default_layout(to_remove) end

---Append many layouts to the list of default tag layouts.
---@param layouts awful.layout[] # A table of valid tag layout.
function M.append_default_layouts(layouts) end

---Get the current layout name.
---@param layout awful.layout #The layout.
---@return string # The layout name.
function M.getname(layout) end

---Default handler for `request::geometry` signals for tiled clients with the `mouse.move` context.
---@param client client # The client.
---@param context string # The context.
---@param hints unknown # Additional hints.
function M.move_handler(client, context, hints) end

return M
