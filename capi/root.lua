---@meta _

---@class _root
---@field keys awful.key[] # Get or set global key bindings. These bindings will be available when you press keys on the root window (the wallpaper).
---@field buttons awful.button[] # Store the list of mouse buttons to be applied on the wallpaper (also known as root window).
---@field content unknown # Get the content of the root window as a cairo surface.
root = {}


---# Send fake keyboard ot mouse events.
---Usually the currently focused client or the keybindings will receive those
---events. If a `keygrabber` or mousegrabber is running, then it will get them.
---
---Some keys have different names compared to the ones generally used in Awesome.
---For example, Awesome uses "modifier keys" for keybindings using their X11 names
---such as "Control" or "Mod1" (for "Alt"). These are not the name of the key but
---is only the name of the modifier they represent. Some modifiers are even present
---twice on some keyboard like the left and right "Shift". Here is a list of the "real"
---key names matching the modifiers in fake_input:
---
---| Modifier Name | Key Name  | Other key name |
---|---------------|-----------|----------------|
---| Mod4          | Super_L   | Super_R        |
---| Control       | Control_L | Control_R      |
---| Shift         | Shift_L   | Shift_R        |
---| Mod1          | Alt_L     | Alt_R          |
---
---**Sending strings**
---```lua
---local function send_string_to_client(s, c)
---    local old_c = client.focus
---    client.focus = c
---    for i=1, #s do
---        local char = s:sub(i,i)
---        root.fake_input("key_press"  , char)
---        root.fake_input("key_release", char)
---    end
---    client.focus = old_c
---end
---
---send_string_to_client("Hello world!")
---```
---Note that this example works for most ASCII inputs but may fail depending on
---how the string is encoded. Some multi-byte characters may not represent keys
---and some UTF-8 encoding format create characters by combining multiple elements
---such as accent + base character or various escape sequences. If you wish to use
---this example for "real world" i18n use cases, learning about XKB event and UTF-8
---encoding is a prerequisites.
---
---**Clicking**
---| Button Name        | Button ID |
---|--------------------|-----------|
---| LMB                | 1         |
---| Scroll wheel click | 2         |
---| RMB                | 3         |
---| Scroll wheel up    | 4         |
---| Scroll wheel down  | 5         |
---
---```lua
---local function click(button_id, x, y)
---    mouse.coords {x = x, y = y}
---    root.fake_input("button_press" , button_id)
---    root.fake_input("button_release", button_id)
---end
---
---click(1, 42, 42)
---```
---event, this is the keycode to send, in case of a button event
---this is the number of the button. In case of a motion
---event, this is a boolean value which if true makes the coordinates relatives.
---| Button Name        | Button ID |
---|--------------------|-----------|
---| LMB                | 1         |
---| Scroll wheel click | 2         |
---| RMB                | 3         |
---| Scroll wheel up    | 4         |
---| Scroll wheel down  | 5         |
---
---**Clicking**
---@param event_type "key_press"|"key_release"|"button_press"|"button_release"|"motion_notify" # The event type.
---@param detail string|number # The detail: in case of a key
---@param x number # In case of a motion event, this is the X coordinate.
---@param y number # In case of a motion event, this is the Y coordinate.
function root.fake_input(event_type, detail, x, y) end

---Set the root cursor.
---@param cursor_name cursor
function root.cursor(cursor_name) end

---Get attached drawins to a screen.
---@return table
function root.drawins() end

---Get the size of the root window.
---@return integer # The width of the root window.
---@return integer # The height of the root window.
function root.size() end

---Get the physical size of the root window, in millimeters.
---@return integer # The width of the root window, in millimeters.
---@return integer # The height of the root window, in millimeters.
function root.size_mm() end

---Get attached tags
---@return table # A table with all tags
function root.tags() end

---Get the wallpaper as a cairo surface or set it as a cairo pattern.
---@param pattern unknown # A cairo pattern as light userdata.
---@deprecated
function root.wallpaper(pattern) end
