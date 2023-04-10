---@meta _

---@class _awesome
---@field version string # The AwesomeWM version.
---@field release string # The AwesomeWM release name.
---@field api_level string # The AwesomeWM API level.
---@field conffile string # The configuration file which has been loaded.
---@field startup boolean # True if we are still in startup, false otherwise.
---@field startup_errors string # Error message for errors that occurred during startup.
---@field composite_manager_running boolean # True if a composite manager is running.
---@field unix_signal table # Table mapping between signal numbers and signal identifiers.
---@field hostname string # The hostname of the computer on which we are running.
---@field themes_path string # The path where themes were installed to.
---@field icon_path string # The path where icons were installed to.
---@field sync function # Synchronize with the X11 server. This is needed in the test suite to avoid some race conditions. You should never need to use this function.
awesome = {}

---Register a new xproperty
---@param name string # The name of the xproperty
---@param type "string"|"number"|"boolean"
function awesome.register_xproperty(name, type) end

---Quit awesome.
---@param code? integer # The exit code to use when exiting.
function awesome.quit(code) end

---Execute another application, propably a window manager to replace awesome.
---@param cmd string # The command line to execute
function awesome.exec(cmd) end

---Restart awesome.
function awesome.restart() end

---Send a signal to process.
---@param pid integer # Process identifier. 0 and negative values have special meaning. See `man 3 kill`
---@param sig integer # Signal number.
---@see _awesome.unix_signal for a list of signals
---@return boolean # true if the signal was successfully sent, else false.
function awesome.kill(pid, sig) end

---Translate a GdkPixbuf to a cairo image surface.
---@param pixbuf unknown # The pixbuf as a light user datum.
---@param path unknown # The pixbuf origin path.
---@return unknown # A cairo surface as light user datum.
function awesome.pixbuf_to_surface(pixbuf, path) end

---Load an image from a given path.
---@param name string # The file name
---@return unknown|string? # unknown/gears.surface: A cairo surface as light user datum, nil or string if any error, with it's message
function awesome.load_image(name) end

---# Set the preferred size for client icons.
---The closest equal or bigger size is picked if present, otherwise the closest
---smaller size is picked. The default is 0 pixels, ie. the smallest icon.
---@param size integer # The size of the icons in pixels.
function awesome.set_preferred_icon_size(size) end

---Add a global signal.
---@param name _awesome_signals|string # A string with the event name.
---@param func fun(...: any) # The function to call
function awesome.connect_signal(name, func) end

---Remove a global signal.
---@param name _awesome_signals|string # A string with the event name.
---@param func fun(...: any) # The function to disconnect
function awesome.disconnect_signal(name, func) end

---Emit a global signal.
---@param name _awesome_signals|string # A string with the event name
---@param ... any # The signal arguments
function awesome.emit_signal(name, ...) end

---Spawn a program. The program will be started on the default screen.
---@param cmd? string # The command to execute
---@param use_sn? boolean # Use startup-notification?
---@param stdin? boolean # Return a file descriptor for stdin?
---@param stdout? boolean # Return a file descriptor for stdout?
---@param stderr? boolean # Return a file descriptor for stderr?
---@param exit_callback? function
---@param env? table # The environment to use for the spawned program. Without this the spawned process inherits awesome's environment.
---@return integer # Process ID if everything is OK.
---@return string # Startup-notification ID, if `use_sn` is true.
---@return integer # stdin file descriptor, if `stdin` is true.
---@return integer # stdout file descriptor, if `stdout` is true.
---@return integer # stderr file descriptor, if `stderr` is true.
function awesome.spawn(cmd, use_sn, stdin, stdout, stderr, exit_callback, env) end

---Switch keyboard layout
---@param num 0|1|2|3 # Keyboard layout number.
function awesome.xkb_set_layout_group(num) end

---Get current layout number.
---@return 0|1|2|3 # Current layout number.
function awesome.xkb_get_layout_group() end

---Get layout short names.
---@return string # string describing the current layout settings, e.g.: 'pc+us+de:2+inet(evdev)+group(altshifttoggle)+ctrl(nocaps)'
function awesome.xkb_get_group_names() end
