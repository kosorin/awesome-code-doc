---@meta wibox

---@alias cairo_context unknown
---@alias cairo_region unknown
---@alias cairo_surface unknown

---@class widget_container : gears.object
---@field opacity number
---@field visible boolean
local widget_container

---@param id string
---@return wibox.widget.base[]?
function widget_container:get_children_by_id(id) end

---@return awful.button[]
function widget_container:get_buttons() end

---@param buttons awful.button[]
function widget_container:set_buttons(buttons) end

---@alias widget_context { screen: screen, dpi: number, drawable: drawable }

---@class wibox : gears.object, widget_container
---@field _drawable wibox.drawable
---@field x number
---@field y number
---@field width number
---@field height number
---@field bg color
---@field fg color
---@field border_color color
---@field border_width number
---@field shape shape
---@field widget wibox.widget.base
---@field screen iscreen
local C

---Get or set wibox geometry. That's the same as accessing or setting the x, y, width or height properties of a wibox.
---@param geometry? { x?: number, y?: number, width?: number, height?: number } # A table with coordinates to modify. If nothing is specified, it only returns the current geometry. Default: `nil`
---@return geometry # A table with wibox coordinates and geometry.
function C:geometry(geometry) end

---@param id string
---@return wibox.widget.base[]?
function C:get_children_by_id(id) end


---@class _wibox
---@field widget _wibox.widget
---@field container _wibox.container
---@field layout _wibox.layout
---@field hierarchy _wibox.hierarchy
---@field drawable _wibox.drawable
---@operator call: wibox
local M

return M
