---@meta gears.shape

---Module dedicated to gather common shape painters.
---
---It adds the concept of "shape" to Awesome. A shape can be applied to a background, a margin, a mask or a drawable shape bounding.
---
---The functions exposed by this module always take a cairo context as first parameter followed by a width and height.
---Individual functions may take additional parameters for their specific implementions.
---
---The functions provided by this module only create a path in the content.
---To actually draw the content, use `cr:fill()`, `cr:mask()`, `cr:clip()` or `cr:stroke()`.
---
---In many case, it is necessary to apply the shape using a transformation such as a rotation.
---The preferred way to do this is to wrap the function in another function calling `cr:rotate()` (or any other transformation matrix).
---
---To specialize a shape where the API doesn't allows extra arguments to be passed, it is possible to wrap the shape function like:
---
---    local new_shape = function(cr, width, height)
---        gears.shape.rounded_rect(cr, width, height, 2)
---    end
---
---Many elements can be shaped. This include:
---
---* `client`s (see `gears.surface.apply_shape_bounding`)
---* `wibox`es (see `wibox.shape`)
---* All widgets (see `wibox.container.background`)
---* The progressbar (see `wibox.widget.progressbar.bar_shape`)
---* The graph (see `wibox.widget.graph.step_shape`)
---* The checkboxes (see `wibox.widget.checkbox.check_shape`)
---* Images (see `wibox.widget.imagebox.clip_shape`)
---* The taglist tags (see `awful.widget.taglist`)
---* The tasklist clients (see `awful.widget.tasklist`)
---* The tooltips (see `awful.tooltip`)
---@class _gears.shape
local M

---Add a squircle shape with only some of the corner are "circled" to the current path.
---The squircle is not exactly as the definition.
---It will expand to the shape's width and height, kinda like an ellipse.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param tl boolean # If the top left corner is rounded.
---@param tr boolean # If the top right corner is rounded.
---@param br boolean # If the bottom right corner is rounded.
---@param bl boolean # If the bottom left corner is rounded.
---@param rate number # The "squareness" of the squircle, should be greater than 1.
---@param delta number # The "smoothness" of the shape, delta must be greate than 0.01 and will be reset to 0.01 if not.
---@noreturn
function M.partial_squircle(cr, width, height, tl, tr, br, bl, rate, delta) end

---Add a squircle shape to the current path.
---This will behave the same as `partial_squircle`.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param rate number # The "squareness" of the squircle, should be greater than 1.
---@param delta number # The "smoothness" of the shape, delta must be greater than 0.01 and will be reset to 0.01 if not.
---@noreturn
function M.squircle(cr, width, height, rate, delta) end

---Add a star shape to the current path.
---The star size will be the minimum of the given width and weight.
---@param cr cairo_context # A cairo context.
---@param width number # The width constraint.
---@param height number # The height constraint.
---@param n number # Number of grams. Default: `5` -> pentagram
---@noreturn
function M.star(cr, width, height, n) end

---Add a rounded rectangle to the current path.
---@param cr cairo_context # A cairo content.
---@param width number # The rectangle width.
---@param height number # The rectangle height.
---@param radius number # The corner radius. If the `radius` is bigger than either half side, it will be reduced.
---@noreturn
function M.rounded_rect(cr, width, height, radius) end

---Add a rectangle delimited by two 180 degree arcs to the path.
---@param cr cairo_context # A cairo content.
---@param width number # The rectangle width.
---@param height number # The rectangle height.
---@noreturn
function M.rounded_bar(cr, width, height) end

---A rounded rectangle with only some of the corners rounded.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param tl boolean # If the top left corner is rounded.
---@param tr boolean # If the top right corner is rounded.
---@param br boolean # If the bottom right corner is rounded.
---@param bl boolean # If the bottom left corner is rounded.
---@param radius number # The corner radius.
---@noreturn
function M.partially_rounded_rect(cr, width, height, tl, tr, br, bl, radius) end

---A rounded rectangle with a triangle at the top.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param corner_radius? number # The corner radius. Default: `5`
---@param arrow_size? number # The width and height of the arrow. Default: `10`
---@param arrow_position? number # The position of the arrow. Default: `(width / 2) - (arrow_size / 2)`
---@noreturn
function M.infobubble(cr, width, height, corner_radius, arrow_size, arrow_position) end

---A rectangle terminated by an arrow.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param arrow_length? number # The length of the arrow part. Default: `height / 2`
---@noreturn
function M.rectangular_tag(cr, width, height, arrow_length) end

---A simple arrow shape.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param head_width? number # The width of the head (/\) of the arrow. Default: `head_width`
---@param shaft_width? number # The width of the shaft of the arrow. Default: `width / 2`
---@param shaft_length? number # The head_length of the shaft (the rest is the head). Default: `height / 2`
---@noreturn
function M.arrow(cr, width, height, head_width, shaft_width, shaft_length) end

---A squeezed hexagon filling the rectangle.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@noreturn
function M.hexagon(cr, width, height) end

---Double arrow popularized by the vim-powerline module.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param arrow_depth? number # The width of the arrow part of the shape. Default: `height / 2`
---@noreturn
function M.powerline(cr, width, height, arrow_depth) end

---An isosceles triangle.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@noreturn
function M.isosceles_triangle(cr, width, height) end

---A cross (**+**) symbol.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param thickness? number # The cross section thickness. Default: `width / 3`
---@noreturn
function M.cross(cr, width, height, thickness) end

---A similar shape to the `rounded_rect`, but with sharp corners.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@tparam number corner_radius.
---@noreturn
function M.octogon(cr, width, height, corner_radius) end

---A circle shape.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param radius? number # The radius. Default: `math.min(width, height) / 2`
---@noreturn
function M.circle(cr, width, height, radius) end

---A simple rectangle.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@noreturn
function M.rectangle(cr, width, height) end

---A diagonal parallelogram with the bottom left corner at `x = 0` and top right at `x = width`.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param base_width? number # The parallelogram base width. Default: `width / 3`
---@noreturn
function M.parallelogram(cr, width, height, base_width) end

---A losange.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@noreturn
function M.losange(cr, width, height) end

---A pie. The pie center is the center of the area.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param start_angle? number # The start angle (in radian). Default: `0`
---@param end_angle? number # The end angle (in radian). Default: `math.pi / 2`
---@param radius? number # The shape height. Default: `math.min(width, height) / 2`
---@noreturn
function M.pie(cr, width, height, start_angle, end_angle, radius) end

---A rounded arc. The pie center is the center of the area.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param thickness? number # The arc thickness. Default: `math.min(width, height) / 2`
---@param start_angle? number # The start angle (in radian). Default: `0`
---@param end_angle? number # The end angle (in radian). Default: `math.pi / 2`
---@param start_rounded? boolean # If the arc start rounded. Default: `false`
---@param end_rounded? boolean # If the arc end rounded. Default: `false`
---@noreturn
function M.arc(cr, width, height, thickness, start_angle, end_angle, start_rounded, end_rounded) end

---Overlap 2 rectangles to emulate a shadow effect.
---
---This is intended to be used with either the `wibox.container.margin` or the `client.shape` to implement MS-DOS and TWM MenuShadowColor "classic" shadows.
---
---*Warning:* If `x_offset` or `y_offset` are greater than the width or height respectively, strange thing will happen.
---@param cr cairo_context # A cairo context.
---@param width number # The shape width.
---@param height number # The shape height.
---@param x_offset? number # The shadow area horizontal offset. Default: `5`
---@param y_offset? number # The shadow area vertical offset. Default: `5`
---@noreturn
function M.solid_rectangle_shadow(cr, width, height, x_offset, y_offset) end

---A partial rounded bar. How much of the rounded bar is visible depends on the given percentage value.
---
---Note that this shape is not closed and thus filling it doesn't make much sense.
---@param cr cairo_context # A cairo context.
---@param w number # The shape width.
---@param h number # The shape height.
---@param percent number # The progressbar percent.
---@param hide_left boolean # Do not draw the left side of the shape.
---@noreturn
function M.radial_progress(cr, w, h, percent, hide_left) end

---Adjust the shape using a transformation object.
---
---Apply various transformations to the shape.
---@param shape shape # A shape function.
---@return unknown # A transformation handle, also act as a shape function.
---
---**Usage:**
---
---    gears.shape.transform(gears.shape.rounded_bar)
---        :rotate(math.pi / 2)
---        :translate(10, 10)
---
function M.transform(shape) end

return M
