---@meta awful.key

---@alias awful.hook { [1]: key_modifier[], [2]: key, [3]: function }

---@class awful.key
---@field key unknown
---@field modifiers unknown
---@field description unknown
---@field name unknown
---@field group unknown
---@field on_press unknown
---@field on_release unknown
---@field Object unknown
---@field trigger unknown
---@field match unknown
local C


---@class _awful.key
---@operator call: awful.key
---@field keygroup table<string, key>
---@field ignore_modifiers key_modifier[]
---@field keygroups table<string, key[][]>
local M

return M
