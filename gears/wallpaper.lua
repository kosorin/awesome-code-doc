---@meta gears.wallpaper
---@todo

---@class _gears.wallpaper
local M

---Prepare the needed state for setting a wallpaper. This function returns a cairo context through which a wallpaper can be drawn. The context is only valid for a short time and should not be saved in a global variable.
---@param s screen # The screen to set the wallpaper on or nil for all screens.
---@return geometry # The available geometry.
---@return cairo_context # A cairo context that the wallpaper should be drawn to.
---@deprecated
function M.prepare_context(s) end

---Set the current wallpaper.
---@param pattern cairo_surface|_gears.color|cairo_surface # The wallpaper that should be set
---@see _gears.color # This module simplifies the creation of cairo pattern objects.
---@deprecated
function M.set(pattern) end

---Set a centered wallpaper
---@param wallpaper cairo_surface|path|image # The wallpaper to center.
---@param s? screen # The screen whose wallpaper should be set. Can be nil, in which case all screens are set.
---@param background? color|hex_color|_gears.color # The background color that should be used. Gets handled via gears.color. The default is black.
---@param scale? number The scale factor for the wallpaper. Default is 1 (original size).
---@deprecated
function M.centered(wallpaper, s, background, scale) end

---Set a tiled wallpaper
---@param wallpaper cairo_surface|path|image # The wallpaper to center.
---@param s? screen # The screen whose wallpaper should be set. Can be nil, in which case all screens are set.
---@param offset { x: number, y: number } # Offset for the tiling.
---@deprecated
function M.tiled(wallpaper, s, offset) end

---Set a tiled wallpaper
---@param wallpaper cairo_surface|path|image # The wallpaper to center.
---@param s? screen # The screen whose wallpaper should be set. Can be nil, in which case all screens are set.
---@param ignore_aspect boolean # If this is true, the image's aspect ratio is ignored. The default is to honor the aspect ratio.
---@param offset { x: number, y: number } # Offset for the wallpaper.
---@deprecated
function M.maximized(wallpaper, s, ignore_aspect, offset) end

---Set a centered wallpaper
---@param wallpaper cairo_surface|path|image # The wallpaper to center.
---@param s? screen # The screen whose wallpaper should be set. Can be nil, in which case all screens are set.
---@param background? color|hex_color|_gears.color # The background color that should be used. Gets handled via gears.color. The default is black.
---@deprecated
function M.fit(wallpaper, s, background) end

return M
