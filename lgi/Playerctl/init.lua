---@meta _

---@alias lgi.Playerctl.Source
---| "NONE"
---| "DBUS_SESSION"
---| "DBUS_SYSTEM"

---@alias lgi.Playerctl.PlaybackStatus
---| "PLAYING"
---| "PAUSED"
---| "STOPPED"

---@alias lgi.Playerctl.LoopStatus
---| "NONE"
---| "TRACK"
---| "PLAYLIST"


---@class _lgi.Playerctl
---@field Player _lgi.Playerctl.Player
---@field PlayerManager _lgi.Playerctl.PlayerManager
local M

---@return lgi.Playerctl.PlayerName[]
function M.list_players() end
