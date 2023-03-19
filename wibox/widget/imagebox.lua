---@meta wibox.widget.imagebox

---@class wibox.widget.imagebox : wibox.widget
local C

---Set the `imagebox` image.
---
---The image can be a file, a cairo image surface, or an rsvg handle object.
---@param image image # The image to render.
---@return boolean # `true` on success, `false` if the image cannot be used.
function C:set_image(image) end

---Set the SVG CSS stylesheet. 
---@param style string
function C:set_stylesheet(style) end


---@class _wibox.widget.imagebox
---@operator call: wibox.widget.imagebox
local M

return M
