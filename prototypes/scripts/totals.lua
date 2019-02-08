
function CreateGui(index)
    local player = game.players[index]
    if player.gui.left.coli then
        return
    end
    table.insert(global.players, player)
    global.force = player.force
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

    -- workers needed
    local label1_2 = layout1.add{
        type = "label",
        name = "lblJobs",
        caption = {"property.jobs"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "jobs",
        caption = "0"
    }

    -- housing
    local label1_2 = layout1.add{
        type = "label",
        name = "lblhousing",
        caption = {"property.housing"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "housing",
        caption = "0"
    }

    -- Food needed this turn
    local label1_2 = layout1.add{
        type = "label",
        name = "lblFoodNeeded",
        caption = {"property.foodneeded"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "foodneeded",
        caption = "0"
    }

    -- Food needed this turn
    local label1_2 = layout1.add{
        type = "label",
        name = "lblFoodEaten",
        caption = {"property.foodeaten"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "foodeaten",
        caption = "0"
    }

    -- Hunger state
    local label1_2 = layout1.add{
        type = "label",
        name = "lblHungerState",
        caption = {"property.hungerstate"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "hungerstate",
        caption = "0"
    }


    -- Cold state
    local label1_2 = layout1.add{
        type = "label",
        name = "lblColdState",
        caption = {"property.coldstate"}
    }
    local label1_2 = layout1.add{
        type = "label",
        name = "coldstate",
        caption = "0"
    }
end

local function isWorkerEntity(entity)
    if entity.type == "lab" or

        entity.type == "assembling-machine" or
        entity.type == "furnace" or
        entity.type == "mining-drill" or

        entity.type == "reactor" or
        entity.type == "roboport" or

        entity.type == "radar" or
        entity.type == "ammo-turret" or
        entity.type == "electric-turret" or
        entity.type == "fluid-turret" or

        entity.type == "locomotive" or

        entity.type == "rocket-silo" then
        return true
    else
        return false
    end
end

local function isHousingEntity(entity)
    if entity.name == "colonial-housing-1" or
        entity.name == "colonial-housing-2" or
        entity.name == "colonial-housing-3" then
        return true
    else
        return false
    end
end
local local_totals_added = function(event)

    local entity = event.created_entity
    if isWorkerEntity(entity) then
        local e = entity.prototype.max_health
        global.coli.jobs = global.coli.jobs + e
    elseif isHousingEntity(entity) then
        local e = entity.prototype.max_health
        global.coli.housing = global.coli.housing + e
    end

end

local local_totals_removed = function(event)

    local entity = event.entity
    if isWorkerEntity(entity) then
        local e = entity.prototype.max_health
        global.coli.jobs = global.coli.jobs - e
    elseif isHousingEntity(entity) then
        local e = entity.prototype.max_health
        global.coli.housing = global.coli.housing - e
    end

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

local function calculateTotalWaste()

    return global.force.fluid_production_statistics.get_input_count("waste") +
            global.force.item_production_statistics.get_input_count("compostwaste")

end

local MinHungerState = 1
local MaxHungerState = 5
local HungerTime = 3600 / 4

local function calculateHunger()

    local totalWaste = calculateTotalWaste()
    local totalFoodNeeded = global.coli.housing

    global.coli.foodneeded = totalFoodNeeded

    global.coli.totalWasteLastPeriod = totalWaste
    global.coli.foodEaten = global.coli.totalWasteLastPeriod - totalWaste

    if global.coli.foodEaten < global.coli.foodneeded then

        -- todo: Eat Food rations

        -- hunger
        if global.coli.hungerstate > MinHungerState then
            global.coli.hungerstate = global.coli.hungerstate -1
        end

    else
        -- enough food
        if global.coli.hungerstate < MaxHungerState then
            global.coli.hungerstate = global.coli.hungerstate + 1
        end
    end

end

local local_totals_tick = function()

    local daytime = game.surfaces['nauvis'].daytime

    if daytime < 0.000001 then
        global.coli.days = global.coli.days + 1
    end

    surface = game.surfaces[1]
    if game.tick % 20 ~= 0 then
        return
    end

    if game.tick % HungerTime == 0 then
        calculateHunger()
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

            local wasteInput = calculateTotalWaste()

            p.gui.left.coli.layout1.waste.caption = tostring(wasteInput)

            p.gui.left.coli.layout1.managers.caption = countColonistsjob(p.force, "colonist-speed-module-")
            p.gui.left.coli.layout1.engineers.caption = countColonistsjob(p.force, "colonist-effectivity-module-")
            p.gui.left.coli.layout1.workers.caption = countColonistsjob(p.force, "colonist-productivity-module-")
            p.gui.left.coli.layout1.environmentalists.caption = countColonistsjob(p.force, "colonist-pollution-module-")

            p.gui.left.coli.layout1.jobs.caption = tostring(global.coli.jobs)
            p.gui.left.coli.layout1.housing.caption = tostring(global.coli.housing)

            -- food needed
            p.gui.left.coli.layout1.foodneeded.caption = tostring(global.coli.foodneeded)
            p.gui.left.coli.layout1.foodeaten.caption = tostring(global.coli.foodeaten)
            p.gui.left.coli.layout1.hungerstate.caption = tostring(global.coli.hungerstate)
        end
    end
end

local isInitTotals = false
function initTotals()
    if coli.ticks ~= nil and not isInitTotals then
        isInitTotals = true
        table.insert(coli.ticks, local_totals_tick)
        table.insert(coli.on_entitydied, local_totals_died)
        table.insert(coli.on_added, local_totals_added)
        table.insert(coli.on_remove, local_totals_removed)
    end
end