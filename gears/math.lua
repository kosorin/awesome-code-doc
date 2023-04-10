---@meta gears.math

---Various math related functions.
---@class _gears.math
local M

---Return all subsets of a specific set.
---
---This function, giving a set, will return all subset it.
---For example, if we consider a set with value `{ 10, 15, 34 }`,
---it will return a table containing 2<sup>n</sup> set:
---`{ }`, `{ 10 }`, `{ 15 }`, `{ 34 }`, `{ 10, 15 }`, `{ 10, 34 }`, etc.
---@param set any[] # A set.
---@return any[][] # A table with all subset.
function M.subsets(set) end

---Make a cycle.
---@param length integer # A length. Must be greater than zero.
---@param index integer # An absolute index to fit into `#t`.
---@return integer? # An integer in `(1, t)` or `nil` if `t` is less than or equal to zero.
function M.cycle(length, index) end

---Round a number to an integer.
---@param x number
---@return integer
function M.round(x) end

---Return the sign of the number.
---@param x number
---@return sign
function M.sign(x) end

return M
