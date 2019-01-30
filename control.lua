-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
-- The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

function OnInit()
    if global.coli == nil then
        global.coli={}
        global.players={}
        global.coli.players={}
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

function CreateGui(index)
    local player = game.players[index]
    if player.gui.left.coli then
        return
    end
    table.insert(global.players, player)
    table.insert(
        global.coli.players,
        {
            lv=1,
            exp=0,
        }
    )
    local root = player.gui.left.add{
        type = "frame",
        name = "coli",
        direction = "vertical", --horizontal
        column_count = 1
    }
    root.style.top_padding = 4
    root.style.bottom_padding = 4
    root.style.minimal_width = 230
    --    root.style.maximum_width = 230
    local layout1 = root.add{
        type = "table",
        name = "layout1",
        column_count = 2
    }

--    local label1_1 = layout1.add{
--        type = "label",
--        name = "label1_1",
--        style = "caption_label",
--        caption = player.name
--    }
    -- colonist count
    local label1_2 = layout1.add{
        type = "label",
        name = "lblColonists",
        caption = {"property.colonistsCount"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "colonistsCount",
        caption = "0"
    }

    -- colonist count
    local label1_2 = layout1.add{
        type = "label",
        name = "lblWaste",
        caption = {"property.waste"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "waste",
        caption = "0"
    }

end

function OnTick(event)
    surface = game.surfaces[1]
    if game.tick % 20 ~= 0 then
        return
    end
    for i,p in pairs(global.players) do
        if p.character then
            local buildInput = p.force.entity_build_count_statistics.get_input_count("colonist")
            local productionInput = p.force.item_production_statistics.get_input_count("colonist")
            local totalInput = buildInput + productionInput

            local buildOutput = p.force.entity_build_count_statistics.get_output_count("colonist")
            local productionOutput = p.force.item_production_statistics.get_output_count("colonist")
            local totalOutput = buildOutput + productionOutput

            p.gui.left.coli.layout1.colonistsCount.caption = tostring(totalInput - totalOutput)

            local wasteInput = p.force.fluid_production_statistics .get_input_count("waste")
            --local wasteOutput = p.force.fluid_production_statistics .get_output_count("waste")

            p.gui.left.coli.layout1.waste.caption = tostring(wasteInput)

        end
    end
end

function OnEntityDied(event)

    local entity = event.entity
    local i = 1
    local inventory = entity.get_inventory(i)
    while inventory ~= nil do

        local colonists = inventory.get_item_count("colonist")

        local buildOutput = entity.force.entity_build_count_statistics.get_output_count("colonist")

        entity.force.entity_build_count_statistics.set_output_count("colonist", buildOutput + colonists)

        i = i + 1
        inventory = entity.get_inventory(i)
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

script.on_init(OnInit)
script.on_load(OnLoad)
script.on_event(defines.events.on_tick, OnTick)
script.on_event(defines.events.on_entity_died, OnEntityDied)
script.on_event(defines.events.on_player_created, OnPlayerCreated)
script.on_event(defines.events.on_player_respawned, OnPlayerRespawned)
script.on_event(defines.events.on_player_joined_game, OnPlayerJoinedGame)
script.on_event(defines.events.on_player_left_game, OnPlayerLeftGame)
