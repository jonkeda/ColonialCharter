
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
        column_count = 14
    }

    -- colonist count
    local label1_2 = layout1.add{
        type = "label",
        name = "lblDays",
        caption = {"property.days"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "days",
        caption = "0"
    }

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

    -- manager
    local label1_2 = layout1.add{
        type = "label",
        name = "lblManagers",
        caption = {"property.manager"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "managers",
        caption = "0"
    }

    -- engineer
    local label1_2 = layout1.add{
        type = "label",
        name = "lblEngineer",
        caption = {"property.engineer"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "engineers",
        caption = "0"
    }

    -- worker
    local label1_2 = layout1.add{
        type = "label",
        name = "lblWorker",
        caption = {"property.worker"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "workers",
        caption = "0"
    }

    -- environmentalist
    local label1_2 = layout1.add{
        type = "label",
        name = "lblEnvironmentalist",
        caption = {"property.environmentalist"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "environmentalists",
        caption = "0"
    }

end

local local_totals_died = function(event)
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

local function countColonistsjob(force, job)
    return tostring(
        force.item_production_statistics.get_input_count(job.."1") * 4 +
        force.item_production_statistics.get_input_count(job.."2") * 8 +
        force.item_production_statistics.get_input_count(job.."3") * 12
    )
end

local

local_totals_tick = function()

    local daytime = game.surfaces['nauvis'].daytime

    if daytime < 0.000001 then
        global.coli.days = global.coli.days + 1
    end

    surface = game.surfaces[1]
    if game.tick % 20 ~= 0 then
        return
    end

    for i,p in pairs(global.players) do
        if p.character then
            p.gui.left.coli.layout1.days.caption = tostring(global.coli.days)


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

            p.gui.left.coli.layout1.managers.caption = countColonistsjob(p.force, "colonist-speed-module-")
            p.gui.left.coli.layout1.engineers.caption = countColonistsjob(p.force, "colonist-effectivity-module-")
            p.gui.left.coli.layout1.workers.caption = countColonistsjob(p.force, "colonist-productivity-module-")
            p.gui.left.coli.layout1.environmentalists.caption = countColonistsjob(p.force, "colonist-pollution-module-")

        end
    end


end




function initTotals()

    if coli.ticks ~= nil then
        table.insert(coli.ticks, local_totals_tick)
        table.insert(coli.on_entitydied, local_totals_died)
        --table.insert(foodi.on_remove,local_fishing_inserter_removed)
    end
end