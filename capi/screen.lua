---@meta _
---@todo

---@class screen
---@field geometry geometry # The screen coordinates.
---@field index integer # The internal screen number.
---@field workarea geometry # The screen workarea.
---@field tiling_area geometry # The area where clients can be tiled.
---@field padding thickness # The screen padding. This adds a "buffer" section on each side of the screen.
---@field clients client[]
---@field hidden_clients client[]
---@field all_clients client[]
---@field tiled_clients client[]
---@field tags tag[]
---@field selected_tags tag[]
---@field selected_tag? tag
---@field dpi number
---@field content unknown
---@field outputs unknown
---@field minimum_dpi unknown
---@field maximum_dpi unknown
---@field preferred_dpi unknown
---@field mm_maximum_size unknown
---@field mm_minimum_size unknown
---@field inch_maximum_size unknown
---@field inch_minimum_size unknown
---@field fake_remove unknown
---@field fake_resize unknown
---@field swap unknown
---@field get_square_distance unknown
---@field get_next_in_direction unknown
---@field get_bounding_geometry unknown
---@field get_clients unknown
---@field get_all_clients unknown
---@field get_tiled_clients unknown
---@field split unknown
---@field emit_signal unknown
---@field connect_signal unknown
---@field weak_connect_signal unknown
local C


---@class _screen
---@field primary unknown
---@field automatic_factory unknown
---@field fake_add unknown
---@field instances unknown
---@field screen unknown
---@field count unknown
---@field disconnect_signal unknown
---@field emit_signal unknown
---@field connect_signal unknown
---@field [iscreen] screen
local M

return M
