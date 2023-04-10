---@meta gears.filesystem

---Various filesystem utility functions.
---
---Note that these functions are blocking. If you need to do a large number of I/O operations, it is better to use `lgi.Gio` async functions.
---@class _gears.filesystem
local M

---Create a directory, including all missing parent directories.
---@param dir string # The directory.
---@return boolean
---@return string? message
function M.make_directories(dir) end

---Create all parent directories for a given path.
---@param path string # The path whose parents should be created.
---@return boolean
---@return string? message
function M.make_parent_directories(path) end

---Check if a file exists, is readable and not a directory.
---@param filename string # The file path.
---@return boolean # `true` if file exists and is readable.
function M.file_readable(filename) end

---Check if a file exists, is executable and not a directory.
---@param filename string # The file path.
---@return boolean # `true` if file exists and is executable.
function M.file_executable(filename) end

---Check if a path exists, is readable and a directory.
---@param path string # The directory path.
---@return boolean # `true` if path exists and is readable.
function M.dir_readable(path) end

---Check if a path exists, is writable and a directory.
---@param path string # The directory path.
---@return boolean # `true` if path exists and is writable.
function M.dir_writable(path) end

---Check if a path is a directory.
---@param path string # The directory path
---@return boolean # `true` if path exists and is a directory.
function M.is_dir(path) end

---Get the config home according to the XDG basedir specification.
---@return string # The config home (XDG_CONFIG_HOME) with a slash at the end.
function M.get_xdg_config_home() end

---Get the cache home according to the XDG basedir specification.
---@return string # The cache home (XDG_CACHE_HOME) with a slash at the end.
function M.get_xdg_cache_home() end

---Get the data home according to the XDG basedir specification.
---@return string # The data home (XDG_DATA_HOME) with a slash at the end.
function M.get_xdg_data_home() end

---Get the data dirs according to the XDG basedir specification.
---@return string[] # The data dirs (XDG_DATA_DIRS) with a slash at the end of each entry.
function M.get_xdg_data_dirs() end

---Get the path to the user's config dir.
---This is the directory containing the configuration file (`rc.lua`).
---@return string # A string with the requested path with a slash at the end.
function M.get_configuration_dir() end

---Get the path to a directory that should be used for caching data.
---@return string # A string with the requested path with a slash at the end.
function M.get_cache_dir() end

---Get the path to the directory where themes are installed.
---@return string # A string with the requested path with a slash at the end.
function M.get_themes_dir() end

---Get the path to the directory where our icons are installed.
---@return string # A string with the requested path with a slash at the end.
function M.get_awesome_icon_dir() end

---Get the user's config or cache dir.
---It first checks `XDG_CONFIG_HOME`/`XDG_CACHE_HOME`, but then goes with the default paths.
---@deprecated
---@param d "config"|"cache" # The directory to get.
---@return string # A string containing the requested path.
function M.get_dir(d) end

---Get the name of a random file from a given directory.
---@param path string # The directory to search.
---@param exts? string[] # Specific extensions to limit the search to. eg:`{ "jpg", "png" }`. If ommited, all files are considered.
---@param absolute_path boolean # Return the absolute path instead of the filename. Default: `false`
---@return string? # A randomly selected filename from the specified path (with a specified extension if required) or `nil` if no suitable file is found. If `absolute_path` is set, then a path is returned instead of a file name.
function M.get_random_file_from_dir(path, exts, absolute_path) end

return M
