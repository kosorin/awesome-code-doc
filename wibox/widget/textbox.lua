---@meta wibox.widget.textbox

---@class wd.wibox.widget.textbox : wd_a.wibox.widget
---@field text string # Set a textbox plain text.
---@field markup string # Set the HTML text of the textbox.
---@field ellipsize text_ellipsize # Set the text ellipsize mode.
---@field wrap text_wrap # Set a textbox wrap mode.
---@field valign valign # The vertical text alignment.
---@field halign halign # The horizontal text alignment.
---@field font font # Set a textbox font.
---@field line_spacing_factor? number or nil # Set the distance between the lines.
---@field justify boolean # Justify the text when there is more space.
---@field indent number # How to indent text with multiple lines.

---@class wibox.widget.textbox : wibox.widget
---@field text string # Set a textbox plain text.
---@field markup string # Set the HTML text of the textbox.
---@field ellipsize text_ellipsize # Set the text ellipsize mode.
---@field wrap text_wrap # Set a textbox wrap mode.
---@field valign valign # The vertical text alignment.
---@field halign halign # The horizontal text alignment.
---@field font font # Set a textbox font.
---@field line_spacing_factor? number or nil # Set the distance between the lines.
---@field justify boolean # Justify the text when there is more space.
---@field indent number # How to indent text with multiple lines.
local C

---Set the text of the textbox .
---@param text string # The text to set.
function C:set_text(text) end

---Set the text of the textbox (with Pango markup).
---@param text string # The text to set. This can contain pango markup (e.g. `<b>bold</b>`). You can use `gears.string.escape` to escape parts of it.
function C:set_markup(text) end

---Set the text of the textbox (with Pango markup).
---@param text string # The text to set. This can contain pango markup (e.g. `<b>bold</b>`). You can use `gears.string.escape` to escape parts of it.
---@return boolean
---@return string? message # Error message explaining why the markup was invalid.
function C:set_markup_silently(text) end


---@class _wibox.widget.textbox
---@operator call: wibox.widget.textbox
local M

---Get geometry of text label, as if textbox would be created for it on the screen.
---@param text string
---@param screen? iscreen
---@param font? string
---@return size
function M.get_markup_geometry(text, screen, font) end

return M
