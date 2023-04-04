---@meta gears.matrix

---@class gears.matrix
local C

---Translate this matrix
---@param x number # The translation in x direction.
---@param y number # The translation in y direction.
---@return gears.matrix # A new matrix describing the new transformation.
function C:translate(x, y) end

---Scale this matrix
---@param sx number # The scaling in x direction.
---@param sy number # The scaling in y direction.
---@return gears.matrix # A new matrix describing the new transformation.
function C:scale(sx, sy) end

---Rotate this matrix.
---@param angle number # The angle of the rotation in radians.
---@return gears.matrix # A new matrix describing the new transformation.
function C:rotate(angle) end

---Rotate this matrix from a custom point
---@param x number # The horizontal rotation point.
---@param y number # The vertical rotation point.
---@param angle number # The angle of the rotation in radians.
---@return gears.matrix # A new matrix describing the new transformation.
function C:rotate_at(x, y, angle) end

---Invert this matrix
---@return gears.matrix # A new matrix describing the new transformation.
function C:invert() end

---Multiply this matrix with another matrix.
---The resulting matrix describes a transformation that is equivalent to first applying
---this transformation and then the transformation from `other`. Note that this function can
---also be called by directly multiplicating two matrix instances: `a * b == a:multiply(b)`.
---@param other gears.matrix # The other matrix to multiply with.
---@return gears.matrix # The multiplication result
function C:multiply(other) end

---Check if two matrices are equal.
---Note that this function cal also be called by directly comparing two matrix instances:
---`a == b`.
---@param other gears.matrix # The other matrix to multiply with.
---@return boolean # True if both matrices are equal.
function C:equals(other) end

---Get a string representation of this matrix
---@return string # A string showing this matrix in column form.
function C:tostring() end

---Transform a distance by this matrix.
---The difference to matrix:transform_point is that the translation part of this matrix is ignored.
---@param x number # The X coordinate point.
---@param y number # The Y coordinate point.
---@return number # The X coordinate of the transformed point.
---@return number # The Y coordinate of the transformed point.
function C:transform_distance(x, y) end

---Transform a point by this matrix.
---@param x number # The X coordinate of the point.
---@param y number # The Y coordinate of the point.
---@return number # The X coordinate of the transformed point.
---@return number # The Y coordinate of the transformed point.
function C:transform_point(x, y) end

---Calculate a bounding rectangle for transforming a rectangle by a matrix.
---@param x number # The X coordinate of the rectangle.
---@param y number # The Y coordinate of the rectangle.
---@param width number # The width of the rectangle.
---@param height number # The height of the rectangle.
---@return number # The X coordinate of the bounding rectangle.
---@return number # The Y coordinate of the bounding rectangle.
---@return number # Width of the bounding rectangle.
---@return number # Height of the bounding rectangle.
function C:transform_point(x, y, width, height) end

---Convert to a cairo matrix.
---@return unknown # A cairo matrix describing the same transformation.
function C:to_cairo_matrix() end

---Convert to a cairo matrix.
---@param mat unknown # A cairo matrix describing the sought transformation.
---@return gears.matrix # A matrix instance describing the same transformation.
function C:from_cairo_matrix(mat) end

---@class _gears.matrix
---@field identity gears.matrix # A constant for the identity matrix.
local M

---Create a new matrix instance
---@param xx number # The xx transformation part.
---@param yx number # The yx transformation part.
---@param xy number # The xy transformation part.
---@param yy number # The yy transformation part.
---@param x0 number # The x0 transformation part.
---@param y0 number # The y0 transformation part.
---@return gears.matrix
function M.create(xx, yx, xy, yy, x0, y0) end

---Create a new translation matrix
---@param x number # The translation in x direction.
---@param y number # The translation in y direction.
---@return gears.matrix
function M.create_translate(x, y) end

---Create a new translation matrix
---@param sx number # The scaling in x direction.
---@param sy number # The scaling in y direction.
---@return gears.matrix
function M.create_scale(sx, sy) end

---Create a new rotation matrix
---@param angle number # The angle of the rotation in radians.
---@return gears.matrix
function M.create_rotate(angle) end

---Create a new rotation matrix rotating around a custom point
---@param x number # The horizontal rotation point.
---@param y number # The vertical rotation point.
---@param angle number # The angle of the rotation in radians.
---@return gears.matrix
function M.create_rotate_at(x, y, angle) end


return M
