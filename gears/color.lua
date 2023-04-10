---@meta gears.color

---@class _gears.color
---@field color { transparent: string }
local M

---Parse a HTML-color.
---This function can parse colors like `#rrggbb` and `#rrggbbaa` and also red.
---Max 4 chars per channel.
---@param col hex_color # The color to parse
---@return number # The red value of the color, between 0 and 1
---@return number # The blue value of the color, between 0 and 1
---@return number # The green value of the color, between 0 and 1
---@return number # The alpha value of the color, between 0 and 1
---@return nil # nil if the input was incorrect
function M.parse_color(col) end

---Create a solid pattern.
---@param col hex_color|unknown # The color for the pattern.
---@return lgi.cairo.Pattern # The solid pattern.
function M.create_solid_pattern(col) end

---Create an image pattern from a png file.
---@param file path # The filename of the file.
---@return lgi.cairo.Pattern # The image pattern.
function M.create_png_pattern(file) end

---Create a linear pattern object
---@param col hex_color|color_pattern # The argument describing the pattern.
---@return lgi.cairo.Pattern # A cairo pattern object.
function M.create_linear_pattern(col) end

---Create a radial pattern object
---@param col hex_color|color_pattern # The argument describing the pattern.
---@return lgi.cairo.Pattern # A cairo pattern object.
function M.create_radial_pattern(col) end

---Create a pattern from a string, same as gears.color
---For full documentation of this function, please refer to `color.create_pattern`.
---The difference between color.create_pattern and this function is that this function
---does not insert the generated objects into the pattern cache. Thus, you are allowed
---to modify the returned object.
---@param col hex_color|color_pattern # The string describing the pattern.
---@return lgi.cairo.Pattern # A cairo pattern object.
function M.create_pattern_uncached(col) end

---Create a pattern from a string, same as gears.color
---@param col hex_color|color_pattern # The string describing the pattern.
---@return lgi.cairo.Pattern # A cairo pattern object.
function M.create_pattern(col) end

---Check if a pattern is opaque. A pattern is transparent if the background on which
---it gets drawn (with operator OVER) doesn't influence the visual result.
---@param col hex_color|color_pattern # The string describing the pattern.
---@return color? # Returns the pattern if it's opaque, nil otherwise.
function M.create_opaque_pattern(col) end

---Fill non-transparent area of an image with a given color.
---@param image path # Image or path to it.
---@param new_color hex_color # New color.
---@return unknown # Recolored image.
function M.recolor_image(image, new_color) end

---Fill non-transparent area of an image with a given color.
---@param input color # The input color.
---@param opacity number # A floating point number between 0 and 1.
---@return unknown input # The new color if successful or input if invalid.
function M.change_opacity(input, opacity) end

---Convert a color back to an hexadecimal color code.
---This takes an input color, pattern or gradient and attempt to convert it to a color.
---If this fails, fallback is returned. This is useful when a color needs to be concatenated
---into a Pango markup string.
---@param color color|color_pattern # Note that only solid colors can be convedted to the RGBA format.
---@param fallback color|color_pattern # The color to return if color cannot be converted to a string.
---@return hex_color # The color in `#RRGGBBAA` format.
function M.to_rgba_string(color, fallback) end

---Get a valid color for Pango markup.
---@param color any # The color to check.
---@param fallback? string # The color to return if the first is invalid.
---@return string color # if it is valid, else fallback.
function M.ensure_pango_color(color, fallback) end

---Mapping of all supported color types. New entries can be added.
M.types = {
    solid = M.create_solid_pattern,
    png = M.create_png_pattern,
    linear = M.create_linear_pattern,
    radial = M.create_radial_pattern
}

return M
