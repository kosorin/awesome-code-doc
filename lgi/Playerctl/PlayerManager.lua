---@meta _

---@class lgi.Playerctl.PlayerManager
---@field players lgi.Playerctl.Player[]
---@field player_names lgi.Playerctl.PlayerName[]
---@field on_name_appeared fun(self: lgi.Playerctl.PlayerManager, name: lgi.Playerctl.PlayerName)
---@field on_name_vanished fun(self: lgi.Playerctl.PlayerManager, name: lgi.Playerctl.PlayerName)
---@field on_player_appeared fun(self: lgi.Playerctl.PlayerManager, player: lgi.Playerctl.Player)
---@field on_player_vanished fun(self: lgi.Playerctl.PlayerManager, player: lgi.Playerctl.Player)
local C

---@param player lgi.Playerctl.Player
function C:manage_player(player) end

---@param sort_callback fun(a: userdata, b: userdata): integer
function C:set_sort_func(sort_callback) end

---@param player lgi.Playerctl.Player
function C:move_player_to_top(player) end


---@class _lgi.Playerctl.PlayerManager
---@operator call: lgi.Playerctl.PlayerManager
local M

---@return lgi.Playerctl.PlayerManager
function M.new() end
