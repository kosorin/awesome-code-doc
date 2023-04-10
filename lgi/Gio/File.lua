---@meta _

---@class lgi.Gio.File
local C

---@param attributes string
---@param flags unknown
function C:async_enumerate_children(attributes, flags) end

---@return string?
function C:get_path() end

---@return string?
function C:get_uri() end


---@class _lgi.Gio.File
local M

---@param path string
---@return lgi.Gio.File
function M.new_for_path(path) end
