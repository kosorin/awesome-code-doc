---@meta _

---@alias lgi.Playerctl.Metadata { value: table<string, any> }

---@class lgi.Playerctl.Player
---@field player_name string
---@field player_instance string
---@field source lgi.Playerctl.Source
---@field playback_status lgi.Playerctl.PlaybackStatus
---@field position integer
---@field shuffle boolean
---@field loop_status lgi.Playerctl.LoopStatus
---@field volume number
---@field metadata lgi.Playerctl.Metadata
---@field can_control boolean
---@field can_go_next boolean
---@field can_go_previous boolean
---@field can_pause boolean
---@field can_play boolean
---@field can_seek boolean
---@field on_exit fun(player: lgi.Playerctl.Player)
---@field on_loop_status fun(player: lgi.Playerctl.Player, loop_status: lgi.Playerctl.LoopStatus)
---@field on_metadata fun(player: lgi.Playerctl.Player, metadata: lgi.Playerctl.Metadata)
---@field on_playback_status fun(player: lgi.Playerctl.Player, playback_status: lgi.Playerctl.PlaybackStatus)
---@field on_seeked fun(player: lgi.Playerctl.Player, position: integer)
---@field on_shuffle fun(player: lgi.Playerctl.Player, shuffle: boolean)
---@field on_volume fun(player: lgi.Playerctl.Player, volume: number)
local C

---@param uri string
function C:open(uri) end

function C:play_pause() end

function C:play() end

function C:stop() end

---@param offset integer
function C:seek(offset) end

function C:pause() end

function C:next() end

function C:previous() end

---@param property? string
---@return string?
function C:get_metadata_prop(property) end

---@return string?
function C:get_artist() end

---@return string?
function C:get_title() end

---@return string?
function C:get_album() end

---@param volume number
function C:set_volume(volume) end

---@return integer
function C:get_position() end

---@param position integer
function C:set_position(position) end

---@param loop_status lgi.Playerctl.LoopStatus
function C:set_loop_status(loop_status) end

---@param shuffle boolean
function C:set_shuffle(shuffle) end


---@class _lgi.Playerctl.Player
---@operator call: lgi.Playerctl.Player
local M

---@param name string
---@return lgi.Playerctl.Player
function M.new(name) end

---@param name string
---@param source lgi.Playerctl.Source
---@return lgi.Playerctl.Player
function M.new_for_source(name, source) end

---@param name lgi.Playerctl.PlayerName
---@return lgi.Playerctl.Player
function M.new_from_name(name) end
