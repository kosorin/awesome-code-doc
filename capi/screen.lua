---@meta _

---@class screen
---@field geometry geometry # The screen coordinates.
---@field index integer # The internal screen number.
---@field workarea geometry # The screen workarea.
---@field tiling_area geometry # The area where clients can be tiled.
---@field padding thickness # The screen padding. This adds a "buffer" section on each side of the screen.
---@field outputs screen_output[] # A list of outputs for this screen with their size in mm.
---@field clients client[] # The list of visible clients for the screen.
---@field hidden_clients client[] # Get the list of clients assigned to the screen but not currently visible.
---@field all_clients client[] # All clients assigned to the screen.
---@field tiled_clients client[] Tiled clients for the screen.
---@field tags tag[] # A list of all tags on the screen.
---@field selected_tags tag[] # A list of all selected tags on the screen.
---@field selected_tag? tag # The first selected tag.
---@field dpi number # The number of pixels per inch of the screen.
---@field minimum_dpi number # The lowest density DPI from all of the (physical) outputs.
---@field maximum_dpi number # The highest density DPI from all of the (physical) outputs.
---@field preferred_dpi number # The preferred DPI from all of the (physical) outputs.
---@field mm_maximum_size number # The maximum diagonal size in millimeters.
---@field mm_minimum_size number # The minimum diagonal size in millimeters.
---@field inch_maximum_size number # The maximum diagonal size in inches.
---@field inch_minimum_size number # The minimum diagonal size in inches.
local C

---Remove a screen.
function C:fake_remove() end

---Resize a screen.
---Calling this will resize the screen even if it no longer matches the viewport size.
---@param x integer # The new X-coordinate for screen.
---@param y integer # The new Y-coordinate for screen.
---@param width number # The new width for the screen.
---@param height number # The new height for the screen.
function C:fake_resize(x, y, width, height) end

---Swap a screen with another one in the global screen list.
---@param other_screen screen
function C:swap(other_screen) end

---Get the square distance between a screen and a point.
---@param x integer # X coordinate point
---@param y integer # Y coordinate point
function C:get_square_distance(x,y) end

---Get the next screen in a specific direction.
---This gets the next screen relative to this one in the specified direction.
---@param direction direction # The direction.
function C:get_next_in_direction(direction) end

---Get a placement bounding geometry.
---This method computes the different variants of the "usable" screen geometry.
---@param args bounding_geometry # The arguments.
---@return geometry # Bounded geometry.
function C:get_bounding_geometry(args) end

---Get the list of visible clients for the screen.
---This is used by screen.clients internally (with stacked=true).
---@param stacked boolean # Use stacking order? (top to bottom)
---@return client[]
function C:get_clients(stacked) end

---Get all clients assigned to the screen.
---This is used by all_clients internally (with stacked=true).
---@param stacked boolean # Use stacking order? (top to bottom)
---@return client[]
function C:get_all_clients(stacked) end

---Get tiled clients assigned to the screen.
---This is used by tiles_clients internally (with stacked=true).
---@param stacked boolean # Use stacking order? (top to bottom)
---@return client[]
function C:get_all_clients(stacked) end

---Split the screen into multiple screens.
---This is useful to turn ultrawide monitors into something more useful without fancy client layouts:
---@param ratios number[] # The different ratios to split into. If none is provided, it is split in half.
---@param mode "vertical"|"horizontal" # How to split the screen with the above ratios. If none specified, split along the longest axis.
function C:split(ratios, mode) end

---Emit a signal.
---@param name screen_signals # A string with the event name
---@param ... any # The signal arguments
function C:emit_signal(name, ...) end

---Connect to a signal.
---@param name screen_signals # A string with the event name.
---@param func fun(...: any) # The function to call
function C:connect_signal(name, func) end

---# Connect to a signal weakly.
---This allows the callback function to be garbage collected and automatically disconnects the signal when that happens.
---**Warning**: Only use this function if you really, really, really know what you are doing.
---@param name screen_signals # A string with the event name.
---@param func fun(...: any) # The function to call
function C:weak_connect_signal(name, func) end

---@class _screen
---@field [iscreen] screen
---@field primary screen # The primary screen.
---@field automatic_factory boolean # If screen objects are created automatically when new viewports are detected.
screen = {}

---Add a fake screen.
---@param x integer # The X-coordinate for screen.
---@param y integer # The Y-coordinate for screen.
---@param width number # The width for the screen.
---@param height number # The height for the screen.
function screen.fake_add(x, y, width, height) end

---Get the number of instances.
---@return screen[]
function screen.instances() end

---Iterate over screens.
---@return function # A lua iterator function
function screen.screen() end

---Get the number of screen.
---@return integer # The screen count.
function screen.count() end

---Connect to a signal.
---@param name _screen_signals # A string with the event name.
---@param func fun(...: any) # The function to call
function screen.connect_signal(name, func) end

---Disconnect from a signal.
---@param name _screen_signals # A string with the event name.
---@param func fun(...: any) # The function to disconnect
function screen.disconnect_signal(name, func) end

---Emit a signal.
---@param name _screen_signals # A string with the event name
---@param ... any # The signal arguments
function screen.emit_signal(name, ...) end
