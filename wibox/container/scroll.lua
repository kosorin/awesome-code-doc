---@meta wibox.container.scroll

---@class wibox.container.scroll : wibox.container
local C


---@class _wibox.container.scroll
---@field step_functions wibox.container.scroll.step_functions
local M

---@alias wibox.container.scroll.step_function fun(elapsed: number, size: number, visible_size: number, speed: number): number
---@class wibox.container.scroll.step_functions
---A step function that scrolls the widget in an increasing direction with constant speed.
---@field linear_increase wibox.container.scroll.step_function
---A step function that scrolls the widget in an decreasing direction with constant speed.
---@field linear_decrease wibox.container.scroll.step_function
---A step function that scrolls the widget to its end and back to its beginning, then back to its end, etc.
---The speed is constant.
---@field linear_back_and_forth wibox.container.scroll.step_function
---A step function that scrolls the widget to its end and back to its beginning, then back to its end, etc.
---The speed is null at the ends and maximal in the middle.
---@field nonlinear_back_and_forth wibox.container.scroll.step_function
---A step function that scrolls the widget to its end and back to its beginning, then back to its end, etc.
---The speed is null at the ends and maximal in the middle. At both ends the widget stands still for a moment.
---@field waiting_nonlinear_back_and_forth wibox.container.scroll.step_function

---Get a new horizontal scrolling container.
---@param widget? wibox.widget.base # The widget that should be scrolled.
---@param fps? number # The number of frames per second. Default: `20`
---@param speed? number # The speed of the animation. Default: `10`
---@param extra_space? number # The amount of extra space to include. Default: `0`
---@param expand? boolean # Should the widget be expanded to include the extra space?. Default: `false`
---@param max_size? number # The maximum size of the child widget
---@param step_function? wibox.container.scroll.step_function # The step function to be used. Default: `step_functions.linear_increase`
---@param space_for_scrolling? number # The space for scrolling. Default: `2^1024`
---@return wibox.container.scroll
function M.horizontal(widget, fps, speed, extra_space, expand, max_size, step_function, space_for_scrolling) end

---Get a new vertical scrolling container.
---@param widget? wibox.widget.base # The widget that should be scrolled.
---@param fps? number # The number of frames per second. Default: `20`
---@param speed? number # The speed of the animation. Default: `10`
---@param extra_space? number # The amount of extra space to include. Default: `0`
---@param expand? boolean # Should the widget be expanded to include the extra space?. Default: `false`
---@param max_size? number # The maximum size of the child widget
---@param step_function? wibox.container.scroll.step_function # The step function to be used. Default: `step_functions.linear_increase`
---@param space_for_scrolling? number # The space for scrolling. Default: `2^1024`
---@return wibox.container.scroll
function M.vertical(widget, fps, speed, extra_space, expand, max_size, step_function, space_for_scrolling) end

return M
