---@meta gears.cache

---@class gears.cache
local C

---Get an entry from the cache, creating it if it's missing.
---@param ... any # Arguments for the creation callback. These are checked against the cache contents for equality.
---@return any # The entry from the cache.
function C:get(...) end


---Cache object with data that can be garbage-collected.
---@class _gears.cache
---@operator call: gears.cache
local M

---Create a new cache object. A cache keeps some data that can be garbage-collected at any time, but might be useful to keep.
---@param creation_callback fun(...: any): any # Callback that is used for creating missing cache entries.
---@return gears.cache # A new cache object.
function M.new(creation_callback) end

return M
