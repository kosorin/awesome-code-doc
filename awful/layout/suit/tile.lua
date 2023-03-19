---@meta awful.layout.suit.tile

---Tiled layouts module for awful.
---@class _awful.layout.suit.tile : awful.layout
---@field resize_jump_to_corner boolean # Jump mouse cursor to the client's corner when resizing it. Default: `true`
---@field right awful.layout # The main tile algo, on the right.
---@field left awful.layout # The main tile algo, on the left.
---@field bottom awful.layout # The main tile algo, on the bottom.
---@field top awful.layout # The main tile algo, on the top.
local M

return M
