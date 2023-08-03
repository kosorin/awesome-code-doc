---@meta gears.surface

---@class _gears.surface
---@operator call : cairo_surface
local M

---Try to convert the argument into an lgi cairo surface. This is usually needed for loading images by file name.
---@param surface unknown # The surface to load or nil
---@param default unknown # The default value to return on error; when nil, then a surface in an error state is returned.
---@return cairo_surface # The loaded surface, or the replacement default
---@return string? # An error message, or nil on success.
function M.load_uncached_silently(surface, default) end

---Try to convert the argument into an lgi cairo surface.
---This is usually needed for loading images by file name and uses a cache. In contrast to load(), errors are returned to the caller.
---@param surface unknown # The surface to load or nil
---@param default? unknown # The default value to return on error; when nil, then a surface in an error state is returned.
---@return cairo_surface # The loaded surface, or the replacement default
---@return string? # An error message, or nil on success.
function M.load_silently(surface, default) end

---Try to convert the argument into an lgi cairo surface.
---This is usually needed for loading images by file name. Errors are handled via gears.debug.print_error.
---@param surface unknown # The surface to load or nil.
---@return cairo_surface? # The loaded surface, or nil.
function M.load_uncached(surface) end

---Get the size of a cairo surface
---@param surface cairo_surface # The surface you are interested in
---@return size # The surface's width and height.
function M.get_size(surface) end

---Create a copy of a cairo surface.
---The surfaces returned by surface.load are cached and must not be modified to
---avoid unintended side-effects. This function allows to create a copy of a cairo surface.
---This copy can then be freely modified. The surface returned will be as compatible as
---possible to the input surface. For example, it will likely be of the same surface type as
---the input. The details are explained in the create_similar function on a cairo surface.
---@param surface cairo_surface # Source surface.
---@return cairo_surface # The source surface duplicate.
function M.duplicate_surface(surface) end

---Create a surface from a gears.shape Any additional parameters will be passed to the shape function
---@param width number # The surface width.
---@param height number # The surface height.
---@param shape shape # A compatible `gears.shape` function.
---@param shape_color color # The shape color or pattern	"#000000"
---@param bg_color color # The surface background color	"#00000000"
---@return cairo_surface # The new surface.
function M.load_from_shape(width, height, shape, shape_color, bg_color) end

---Apply a shape to a client or a wibox.
---If the wibox or client size change, this function need to be called again.
---@param draw client|wibox # The drawable to apply the shape to
---@param shape shape # The shape.
---@param ... any # Any parameters to pass to the shape function.
function M.apply_shape_bounding(draw, shape, ...) end

---Create an SVG file with this widget content.
---This is dynamic, so the SVG will be updated along with the widget content. because of this,
---the painting may happen hover multiple event loop cycles.
---@param widget wibox.widget # A widget.
---@param path path # The output file path.
---@param width number # The surface width.
---@param height number # The surface height.
---@return cairo_surface # The cairo surface.
---@return wibox.hierarchy # The hiearchy.
---@deprecated
function M.widget_to_svg(widget, path, width, height) end

---Create an SVG file with this widget content.
---This is dynamic, so the SVG will be updated along with the widget content. because of this,
---the painting may happen hover multiple event loop cycles.
---@param widget wibox.widget # A widget.
---@param width number # The surface width.
---@param height number # The surface height.
---@param format unknown # The surface format.
---@return cairo_surface # The cairo surface.
---@return wibox.hierarchy # The hiearchy.
---@deprecated
function M.widget_to_surface(widget, width, height, format) end

return M
