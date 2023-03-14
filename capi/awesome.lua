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
---@field register_xproperty unknown
---@field exec unknown
---@field kill unknown
---@field sync unknown
---@field pixbuf_to_surface unknown
---@field load_image unknown
---@field set_preferred_icon_size unknown
---@field connect_signal unknown
---@field disconnect_signal unknown
---@field emit_signal unknown
---@field spawn unknown
---@field xkb_set_layout_group unknown
---@field xkb_get_layout_group unknown
---@field xkb_get_group_names unknown
local M

---Quit awesome.
---@param code? integer # The exit code to use when exiting.
function M.quit(code) end

---Restart awesome.
function M.restart() end
