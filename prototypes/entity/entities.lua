data:extend({
    -- colonial training center
    {
        type = "assembling-machine",
        name = "colonial-training-center",
        icon = "__ColonialIndustry__/graphics/icons/colonial-workshop.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "colonial-workshop"},
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        -- light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
        -- alert_icon_shift = util.by_pixel(-3, -12),
        animation =
        {
            layers =
            {
                {
                    filename = "__ColonialIndustry__/graphics/entity/colonial-workshop/colonial-workshop.png",
                    width = 98,
                    height = 87,
                    frame_count = 33,
                    line_length = 11,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(0, 1.5),
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-workshop/hr-colonial-workshop.png",
                        width = 194,
                        height = 174,
                        frame_count = 33,
                        line_length = 11,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(0, 1.5),
                        scale = 0.5
                    }
                },
                {
                    filename = "__ColonialIndustry__/graphics/entity/colonial-workshop/colonial-workshop-shadow.png",
                    width = 122,
                    height = 68,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 33,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(13, 11),
                    draw_as_shadow = true,
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-workshop/hr-colonial-workshop-shadow.png",
                        width = 242,
                        height = 136,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 33,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(13, 11),
                        scale = 0.5,
                        draw_as_shadow = true
                    }
                }
            }
        },
        crafting_categories = {"colonist"},
        crafting_speed = 5,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            -- emissions = 0.05 / 1.5
        },
        energy_usage = "200kW",
        ingredient_count = 4,
        -- open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        -- close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/lab.ogg",
                volume = 0.7
            },
            apparent_volume = 1
        },
        -- module_specification = { module_slots = 0 }
    },

    -- waste disposal
    {
        type = "furnace",
        name = "waste-disposal",
        icon = "__base__/graphics/icons/stone-furnace.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 1, result = "waste-disposal"},
        allowed_effects = {"consumption", "speed", "pollution"},
        max_health = 100,
--        fast_replaceable_group = "pipe",
        corpse = "small-remnants",
        resistances =
        {
            {
                type = "fire",
                percent = 80
            },
            {
                type = "explosion",
                percent = 30
            }
        },
        fluid_boxes =
        {
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                base_area = 1,
                base_level = -1,
                pipe_connections = {{ type="input", position = {0, 1} }}
            },
        },
        energy_source =
        {
            type = "burner",
            fuel_category = "chemical",
            effectivity = 1,
            fuel_inventory_size = 1,
            emissions = 0.01,
            smoke =
            {
                {
                    name = "smoke",
                    deviation = {0.1, 0.1},
                    frequency = 5,
                    position = {0.0, -0.8},
                    starting_vertical_speed = 0.08,
                    starting_frame_deviation = 60
                }
            }
        },
        energy_usage = "1kW",
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        crafting_categories = {"void-fluid"},
        result_inventory_size = 1,
        crafting_speed = 5,
        source_inventory_size = 1,
        animation =
        {
            north =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-up.png",
                width = 46,
                height = 56,
                frame_count = 8,
                shift = {0.09375, 0.03125},
                animation_speed = 0.5
            },
            east =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-right.png",
                width = 51,
                height = 56,
                frame_count = 8,
                shift = {0.265625, -0.21875},
                animation_speed = 0.5
            },
            south =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-down.png",
                width = 61,
                height = 58,
                frame_count = 8,
                shift = {0.421875, -0.125},
                animation_speed = 0.5
            },
            west =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-left.png",
                width = 56,
                height = 44,
                frame_count = 8,
                shift = {0.3125, 0.0625},
                animation_speed = 0.5
            }
        },
    },

    -- cantine
    {
        type = "assembling-machine",
        name = "cantine",
        icon = "__base__/graphics/icons/assembling-machine-2.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "cantine"},
        max_health = 350,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        alert_icon_shift = util.by_pixel(-3, -12),
        resistances =
        {
            {
                type = "fire",
                percent = 70
            }
        },
        fluid_boxes =
        {
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{ type="input", position = {0, -2} }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = {{ type="output", position = {0, 2} }},
                secondary_draw_orders = { north = -1 }
            },
            off_when_no_fluid_recipe = true
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        fast_replaceable_group = "assembling-machine",
        animation =
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
                    priority = "high",
                    width = 108,
                    height = 110,
                    frame_count = 32,
                    line_length = 8,
                    shift = util.by_pixel(0, 4),
                    hr_version =
                    {
                        filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2.png",
                        priority = "high",
                        width = 214,
                        height = 218,
                        frame_count = 32,
                        line_length = 8,
                        shift = util.by_pixel(0, 4),
                        scale = 0.5
                    }
                },
                {
                    filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
                    priority = "high",
                    width = 98,
                    height = 82,
                    frame_count = 32,
                    line_length = 8,
                    draw_as_shadow = true,
                    shift = util.by_pixel(12, 5),
                    hr_version =
                    {
                        filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
                        priority = "high",
                        width = 196,
                        height = 163,
                        frame_count = 32,
                        line_length = 8,
                        draw_as_shadow = true,
                        shift = util.by_pixel(12, 4.75),
                        scale = 0.5
                    }
                }
            }
        },
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            sound =
            {
                {
                    filename = "__base__/sound/assembling-machine-t2-1.ogg",
                    volume = 0.8
                },
                {
                    filename = "__base__/sound/assembling-machine-t2-2.ogg",
                    volume = 0.8
                }
            },
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 1.5
        },
        crafting_categories = {"waste-fluid"},
        crafting_speed = 0.75,
        energy_source =
        {
            type = "burner",
            fuel_category = "chemical",
            effectivity = 1,
            fuel_inventory_size = 1,
            emissions = 0.01,
            smoke =
            {
                {
                    name = "smoke",
                    deviation = {0.1, 0.1},
                    frequency = 5,
                    position = {0.0, -0.8},
                    starting_vertical_speed = 0.08,
                    starting_frame_deviation = 60
                }
            }
        },
        energy_usage = "150kW",
        ingredient_count = 4,
        module_specification =
        {
            module_slots = 2
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"}
    },
})
