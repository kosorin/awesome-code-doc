---@meta awful.permissions._common

---Common code for the permission framework.
---It is in its own file to avoid circular dependencies.
---
---It is **NOT** a public API.
---@class _awful.permissions._common
local M

function M.check(object, class, request, context) ; end

function M.set(class, request, context, granted) ; end

---Add the grant and deny methods to the objects.
function M.setup_grant(class, classname) ; end

return M
