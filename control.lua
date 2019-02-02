-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
-- The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

require("persistance")
require("prototypes.scripts.totals")

local debug = true
local debugset = false;

function OnInit()
    setupColi()
    initTotals()
    if game ~= nil then
        for i=1,#game.players do
            CreateGui(i)
        end
    end

end

function OnLoad()
    OnInit()
end

function OnPlayerCreated(event)
    local index = event.player_index
    CreateGui(index)

end

function OnTick(event)

    if debug then
        if not debugset then
            debugset = true
            for i,player in pairs(global.players) do
                player.force.research_all_technologies()
                player.cheat_mode=true
            end
        end
    end

    for k=1, #coli.ticks do
        local v = coli.ticks[k]
        v()
    end

end

function OnEntityDied(event)
    for k=1, #coli.on_entitydied do
        local v = coli.on_entitydied[k]
        v(entity)
    end
end

function OnPlayerRespawned(event)
    --reset player stats
    local index = event.player_index
    local player = global.coli.players[index]

end

function OnPlayerMinedTile(event)
    --work around to only give xp on mined
    
end

function OnPlayerJoinedGame(event)
    local index = event.player_index
    local player = global.players[index]

end

function OnPlayerLeftGame(event)
    local index = event.player_index
    local player = global.players[index]

end


local local_on_added = function(event)
    local entity = event.created_entity
    if entity ~= nil then
        for k=1, #coli.on_added do
            local v = coli.on_added[k]
            v(entity)
        end
    end
end
local local_on_removed = function(event)
    local entity = event.entity
    if entity ~= nil then
        for k=1, #coli.on_remove do
            local v = coli.on_remove[k]
            v(entity)
        end
    end
end

script.on_init(OnInit)
script.on_load(OnLoad)
script.on_event(defines.events.on_tick, OnTick)
script.on_event(defines.events.on_entity_died, OnEntityDied)
script.on_event(defines.events.on_player_created, OnPlayerCreated)
script.on_event(defines.events.on_player_respawned, OnPlayerRespawned)
script.on_event(defines.events.on_player_joined_game, OnPlayerJoinedGame)
script.on_event(defines.events.on_player_left_game, OnPlayerLeftGame)

local build_events = {defines.events.on_built_entity, defines.events.on_robot_built_entity}-- defines.events.on_player_built_tile, defines.events.on_robot_built_tile}
local remove_events = {defines.events.on_entity_died,defines.events.on_robot_pre_mined,defines.events.on_robot_mined_entity,defines.events.on_pre_player_mined_entity,defines.events.on_player_mined_entity}

script.on_event(build_events, local_on_added)
script.on_event(remove_events, local_on_removed)
