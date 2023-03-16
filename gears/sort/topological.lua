---@meta gears.sort.topological

---A topological sorting class.
---
---The object returned by this function allows to create simple dependency graphs.
---It can be used for decision making or ordering of complex sequences.
---@class gears.sort.topological
local C

---Ensure that `node` appears after all `dependencies`.
---@param node any # The node that edges are added to.
---@param dependencies any[] # List of nodes that have to appear before `node`.
function C:append(node, dependencies) end

---Ensure that `node` appears before all `subordinates`.
---@param node any # The node that edges are added to.
---@param subordinates any[] # List of nodes that have to appear after `node`.
function C:prepend(node, subordinates) end

---Create a copy of this topological sort.
---
---This is useful to backup it before adding elements that can potentially have circular dependencies and thus render the original useless.
---@return gears.sort.topological # The cloned sorter object.
function C:clone() end

---Remove a node from the topological map.
---@param node any # The node.
function C:remove(node) end

---Try to sort the nodes.
---@return table # A sorted list of nodes.
---@return nil|table # A node around which a loop exists.
function C:sort() end


---Extra sorting algorithms.
---@class _gears.sort.topological
---@operator call: gears.sort.topological
local M

---@return gears.sort.topological
function M.topological() end

return M
