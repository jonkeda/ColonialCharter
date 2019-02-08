data:extend({

    -- housing
    -- colonial-housing-1
    {
        type = "assembling-machine",
        name = "colonial-housing-1",
        icon = "__ColonialIndustry__/graphics/icons/colonial-housing.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "colonial-housing-1"},
        max_health = 200,
        corpse = "medium-remnants",
        collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
        selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
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
        crafting_categories = {"void-air"},
        crafting_speed = 5,
        ingredient_count = 0,

        energy_usage = "1KW",
        darkness_for_all_lamps_on = 0.5,
        darkness_for_all_lamps_off = 0.3,
        light = {intensity = 0.9, size = 40, color = {r=1.0, g=1.0, b=1.0}},
        light_when_colored = {intensity = 1, size = 6, color = {r=1.0, g=1.0, b=1.0}},
        glow_size = 6,
        glow_color_intensity = 0.135,
        picture =
        {
            layers =
            {
                {
                    filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing.png",
                    width = 98,
                    height = 87,
                    frame_count = 33,
                    line_length = 11,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(0, 1.5),
                    scale = 0.66,
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing.png",
                        width = 194,
                        height = 174,
                        frame_count = 33,
                        line_length = 11,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(0, 1.5),
                        scale = 0.33
                    }
                },
                {
                    filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing-shadow.png",
                    width = 122,
                    height = 68,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 33,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(13, 11),
                    draw_as_shadow = true,
                    scale = 0.66,
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing-shadow.png",
                        width = 242,
                        height = 136,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 33,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(13, 11),
                        scale = 0.33,
                        draw_as_shadow = true
                    }
                }
            }
        },
        overlay =
        {
            filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing.png",
            width = 98,
            height = 87,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 0.66,
            hr_version =
            {
                filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing.png",
                width = 194,
                height = 174,
                frame_count = 33,
                line_length = 11,
                animation_speed = 1 / 3,
                shift = util.by_pixel(0, 1.5),
                scale = 0.33
            }
        },
        animation =
        {
            layers =
            {
                {
                    filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing.png",
                    width = 98,
                    height = 87,
                    frame_count = 33,
                    line_length = 11,
                    animation_speed = 0.01,
                    shift = util.by_pixel(0, 1.5),
                    scale = 0.66,
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing.png",
                        width = 194,
                        height = 174,
                        frame_count = 33,
                        line_length = 11,
                        animation_speed = 0.01,
                        shift = util.by_pixel(0, 1.5),
                        scale = 0.33
                    }
                },
                {
                    filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing-shadow.png",
                    width = 122,
                    height = 68,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 33,
                    animation_speed = 0.01,
                    shift = util.by_pixel(13, 11),
                    draw_as_shadow = true,
                    scale = 0.66,
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing-shadow.png",
                        width = 242,
                        height = 136,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 33,
                        animation_speed = 0.01,
                        shift = util.by_pixel(13, 11),
                        scale = 0.33,
                        draw_as_shadow = true
                    }
                }
            }
        },
        height = 1,
        width = 1,
        --        signal_to_color_mapping =
        --        {
        --            {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
        --            {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
        --            {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
        --            {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
        --            {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
        --            {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}}
        --        },
        --
        --        circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
        --        circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
        --        circuit_wire_max_distance = default_circuit_wire_max_distance
        --production = "5kW"
    },

    -- colonial-housing-1
    {
        type = "solar-panel",
        name = "colonial-housing-2",
        icon = "__ColonialIndustry__/graphics/icons/colonial-housing.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "colonial-housing-2"},
        max_health = 400,
        corpse = "medium-remnants",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        energy_source =
        {
            type = "electric",
            usage_priority = "solar"
        },
        --        energy_usage_per_tick = "5KW",
        darkness_for_all_lamps_on = 0.5,
        darkness_for_all_lamps_off = 0.3,
        light = {intensity = 0.9, size = 40, color = {r=1.0, g=1.0, b=1.0}},
        light_when_colored = {intensity = 1, size = 6, color = {r=1.0, g=1.0, b=1.0}},
        glow_size = 6,
        glow_color_intensity = 0.135,
        picture =
        {
            layers =
            {
                {
                    filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing.png",
                    width = 98,
                    height = 87,
                    frame_count = 33,
                    line_length = 11,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(0, 1.5),
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing.png",
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
                    filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing-shadow.png",
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
                        filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing-shadow.png",
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
        overlay =
        {
            filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing.png",
            width = 98,
            height = 87,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            hr_version =
            {
                filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing.png",
                width = 194,
                height = 174,
                frame_count = 33,
                line_length = 11,
                animation_speed = 1 / 3,
                shift = util.by_pixel(0, 1.5),
                scale = 0.5
            }
        },
        animation =
        {
            layers =
            {
                {
                    filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing.png",
                    width = 98,
                    height = 87,
                    frame_count = 33,
                    line_length = 11,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(0, 1.5),
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing.png",
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
                    filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing-shadow.png",
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
                        filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing-shadow.png",
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
        --        signal_to_color_mapping =
        --        {
        --            {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
        --            {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
        --            {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
        --            {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
        --            {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
        --            {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}}
        --        },
        --
        --        circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
        --        circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
        --        circuit_wire_max_distance = default_circuit_wire_max_distance
        production = "10kW"
    },

    -- colonial-housing-1
    {
        type = "solar-panel",
        name = "colonial-housing-3",
        icon = "__ColonialIndustry__/graphics/icons/colonial-housing.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "colonial-housing-3"},
        max_health = 800,
        corpse = "medium-remnants",
        collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
        selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        energy_source =
        {
            type = "electric",
            usage_priority = "solar"
        },
        --        energy_usage_per_tick = "5KW",
        darkness_for_all_lamps_on = 0.5,
        darkness_for_all_lamps_off = 0.3,
        light = {intensity = 0.9, size = 40, color = {r=1.0, g=1.0, b=1.0}},
        light_when_colored = {intensity = 1, size = 6, color = {r=1.0, g=1.0, b=1.0}},
        glow_size = 6,
        glow_color_intensity = 0.135,
        picture =
        {
            layers =
            {
                {
                    filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing.png",
                    width = 98,
                    height = 87,
                    frame_count = 33,
                    line_length = 11,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(0, 1.5),
                    scale = 1.33,
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing.png",
                        width = 194,
                        height = 174,
                        frame_count = 33,
                        line_length = 11,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(0, 1.5),
                        scale = 0.666
                    }
                },
                {
                    filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing-shadow.png",
                    width = 122,
                    height = 68,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 33,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(13, 11),
                    draw_as_shadow = true,
                    scale = 1.33,
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing-shadow.png",
                        width = 242,
                        height = 136,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 33,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(13, 11),
                        scale = 0.666,
                        draw_as_shadow = true
                    }
                }
            }
        },
        overlay =
        {
            filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing.png",
            width = 98,
            height = 87,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 1.33,
            hr_version =
            {
                filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing.png",
                width = 194,
                height = 174,
                frame_count = 33,
                line_length = 11,
                animation_speed = 1 / 3,
                shift = util.by_pixel(0, 1.5),
                scale = 0.666
            }
        },
        animation =
        {
            layers =
            {
                {
                    filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing.png",
                    width = 98,
                    height = 87,
                    frame_count = 33,
                    line_length = 11,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(0, 1.5),
                    scale = 1.33,
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing.png",
                        width = 194,
                        height = 174,
                        frame_count = 33,
                        line_length = 11,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(0, 1.5),
                        scale = 0.666
                    }
                },
                {
                    filename = "__ColonialIndustry__/graphics/entity/colonial-housing/colonial-housing-shadow.png",
                    width = 122,
                    height = 68,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 33,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(13, 11),
                    draw_as_shadow = true,
                    scale = 1.33,
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-housing/hr-colonial-housing-shadow.png",
                        width = 242,
                        height = 136,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 33,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(13, 11),
                        scale = 0.666,
                        draw_as_shadow = true
                    }
                }
            }
        },
        height = 1,
        width = 1,
        --        signal_to_color_mapping =
        --        {
        --            {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
        --            {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
        --            {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
        --            {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
        --            {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
        --            {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}}
        --        },
        --
        --        circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
        --        circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
        --        circuit_wire_max_distance = default_circuit_wire_max_distance
        production = "20kW"
    },


    -- training
    -- colonial training center
    {
        type = "assembling-machine",
        name = "colonial-training-1",
        icon = "__ColonialIndustry__/graphics/icons/colonial-workshop.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "colonial-training-1"},
        max_health = 100,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
        selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
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
                    scale = 0.66,
                    hr_version =
                    {
                        filename = "__ColonialIndustry__/graphics/entity/colonial-workshop/hr-colonial-workshop.png",
                        width = 194,
                        height = 174,
                        frame_count = 33,
                        line_length = 11,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(0, 1.5),
                        scale = 0.33
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
                    scale = 0.66,
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
                        scale = 0.33,
                        draw_as_shadow = true
                    }
                }
            }
        },
        crafting_categories = {"colonist-job-basic"},
        crafting_speed = 5,
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

    -- colonial school
    {
        type = "assembling-machine",
        name = "colonial-training-2",
        icon = "__ColonialIndustry__/graphics/icons/colonial-workshop.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "colonial-training-2"},
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
        crafting_categories = {"colonist-job-basic", "colonist-job-advanced"},
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

    -- colonial university
    {
        type = "assembling-machine",
        name = "colonial-training-3",
        icon = "__ColonialIndustry__/graphics/icons/colonial-workshop.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "colonial-training-3"},
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
        crafting_categories = {"colonist-job-basic", "colonist-job-advanced", "colonist-job-expert"},
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


    -- Waste
    -- latrine
    {
        type = "storage-tank",
        name = "latrine",
        icon = "__base__/graphics/icons/storage-tank.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 1.5, result = "latrine"},
        max_health = 500,
        corpse = "medium-remnants",
        collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        fluid_box =
        {
            base_area = 25,
            filter="waste",
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = {-1, -2} },
                { position = {2, 1} },
                { position = {1, 2} },
                { position = {-2, -1} }
            }
        },
        two_direction_only = true,
        window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
        pictures =
        {
            picture =
            {
                sheets =
                {
                    {
                        filename = "__base__/graphics/entity/storage-tank/storage-tank.png",
                        priority = "extra-high",
                        frames = 2,
                        width = 110,
                        height = 108,
                        shift = util.by_pixel(0, 4),
                        hr_version =
                        {
                            filename = "__base__/graphics/entity/storage-tank/hr-storage-tank.png",
                            priority = "extra-high",
                            frames = 2,
                            width = 219,
                            height = 215,
                            shift = util.by_pixel(-0.25, 3.75),
                            scale = 0.5
                        }
                    },
                    {
                        filename = "__base__/graphics/entity/storage-tank/storage-tank-shadow.png",
                        priority = "extra-high",
                        frames = 2,
                        width = 146,
                        height = 77,
                        shift = util.by_pixel(30, 22.5),
                        draw_as_shadow = true,
                        hr_version =
                        {
                            filename = "__base__/graphics/entity/storage-tank/hr-storage-tank-shadow.png",
                            priority = "extra-high",
                            frames = 2,
                            width = 291,
                            height = 153,
                            shift = util.by_pixel(29.75, 22.25),
                            scale = 0.5,
                            draw_as_shadow = true
                        }
                    }
                }
            },
            fluid_background =
            {
                filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
                priority = "extra-high",
                width = 32,
                height = 15
            },
            window_background =
            {
                filename = "__base__/graphics/entity/storage-tank/window-background.png",
                priority = "extra-high",
                width = 17,
                height = 24,
                hr_version =
                {
                    filename = "__base__/graphics/entity/storage-tank/hr-window-background.png",
                    priority = "extra-high",
                    width = 34,
                    height = 48,
                    scale = 0.5
                }
            },
            flow_sprite =
            {
                filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
                priority = "extra-high",
                width = 160,
                height = 20
            },
            gas_flow =
            {
                filename = "__base__/graphics/entity/pipe/steam.png",
                priority = "extra-high",
                line_length = 10,
                width = 24,
                height = 15,
                frame_count = 60,
                axially_symmetrical = false,
                direction_count = 1,
                animation_speed = 0.25,
                hr_version =
                {
                    filename = "__base__/graphics/entity/pipe/hr-steam.png",
                    priority = "extra-high",
                    line_length = 10,
                    width = 48,
                    height = 30,
                    frame_count = 60,
                    axially_symmetrical = false,
                    animation_speed = 0.25,
                    direction_count = 1
                }
            }
        },
        flow_length_in_ticks = 360,
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/storage-tank.ogg",
                volume = 0.8
            },
            match_volume_to_activity = true,
            apparent_volume = 1.5,
            max_sounds_per_type = 3
        },

--        circuit_wire_connection_points = circuit_connector_definitions["latrine"].points,
--        circuit_connector_sprites = circuit_connector_definitions["latrine"].sprites,
--        circuit_wire_max_distance = default_circuit_wire_max_distance
    },

    -- waste disposal
    {
        type = "furnace",
        name = "waste-disposal",
        icon = "__ColonialIndustry__/graphics/icons/waste-disposal.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 1, result = "waste-disposal"},
        max_health = 200,
        corpse = "big-remnants",
        repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
        working_sound =
        {
            sound = { filename = "__base__/sound/furnace.ogg", }
        },
        resistances =
        {
            {
                type = "fire",
                percent = 90
            },
            {
                type = "explosion",
                percent = 30
            },
            {
                type = "impact",
                percent = 30
            }
        },        fluid_boxes =
    {
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{ type="input", position = {0, -1.5} }},
                secondary_draw_orders = { north = -1 }
            },
--        {
--            production_type = "output",
--            pipe_picture = assembler2pipepictures(),
--            pipe_covers = pipecoverspictures(),
--            base_area = 10,
--            base_level = 1,
--            pipe_connections = {{ type="output", position = {0, 2} }},
--            secondary_draw_orders = { north = -1 }
--        },
        off_when_no_fluid_recipe = false
    },
        collision_box = {{-1.35, -0.85}, {1.35, 0.85}},
        selection_box = {{-1.5, -1}, {1.5, 1}},
        crafting_categories = {"waste-fluid"},
        result_inventory_size = 1,
        energy_usage = "100kW",
        crafting_speed = 1,
        source_inventory_size = 1,
        energy_source =
        {
            type = "burner",
            fuel_category = "chemical",
            effectivity = 1,
            fuel_inventory_size = 1,
            emissions = 1,
            smoke =
            {
                {
                    name = "smoke",
                    deviation = {0.1, 0.1},
                    frequency = 5,
                    position = util.by_pixel(0, -90),
                    starting_vertical_speed = 0.08,
                    starting_frame_deviation = 60
                }
            }
        },
        animation =
        {
            layers =
            {
                {
                    filename = "__ColonialIndustry__/graphics/entity/waste-disposal/waste-disposal.png",
                    priority = "extra-high",
                    width = 157,
                    height = 121,
                    frame_count = 1,
                    shift = util.by_pixel(32, -20)
                }
            }
        },
        working_visualisations =
        {
            {
                north_position = {0.0, 0.0},
                east_position = {0.0, 0.0},
                south_position = {0.0, 0.0},
                west_position = {0.0, 0.0},
                animation =
                {
                    filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
                    line_length = 10,
                    priority = "extra-high",
                    width = 20,
                    height = 40,
                    frame_count = 60,
                    animation_speed = 0.75,
                    shift = util.by_pixel(0, -90)
                }
            }
        }
    },


    -- Food
    -- colonial-building-food-1 chop house
    {
        type = "furnace",
        name = "colonial-building-food-1",
        icon = "__base__/graphics/icons/assembling-machine-1.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "colonial-building-food-1"},
        max_health = 100,
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
--            {
--                production_type = "input",
--                pipe_picture = assembler2pipepictures(),
--                pipe_covers = pipecoverspictures(),
--                base_area = 10,
--                base_level = -1,
--                pipe_connections = {{ type="input", position = {0, -2} }},
--                secondary_draw_orders = { north = -1 }
--            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = {{ type="output", position = {0, 1} }},
                secondary_draw_orders = { north = -1 }
            },
            off_when_no_fluid_recipe = true
        },
        collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
        selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
        fast_replaceable_group = "assembling-machine",
        animation =
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
                    priority = "high",
                    width = 108,
                    height = 114,
                    frame_count = 32,
                    line_length = 8,
                    --shift = util.by_pixel(0, 4),
                    scale = 0.66,
                    hr_version =
                    {
                        filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
                        priority = "high",
                        width = 214,
                        height = 226,
                        frame_count = 32,
                        line_length = 8,
                        --shift = util.by_pixel(0, 4),
                        scale = 0.33
                    }
                },
                {
                    filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
                    priority = "high",
                    width = 95,
                    height = 83,
                    frame_count = 32,
                    line_length = 8,
                    draw_as_shadow = true,
                    --shift = util.by_pixel(12, 5),
                    scale = 0.66,
                    hr_version =
                    {
                        filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
                        priority = "high",
                        width = 190,
                        height = 165,
                        frame_count = 32,
                        line_length = 8,
                        draw_as_shadow = true,
                        --shift = util.by_pixel(12, 4.75),
                        scale = 0.33
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
        crafting_categories = {"waste-fluid", "colonist-food-1" },
        source_inventory_size = 1,
        crafting_speed = 0.75,
        result_inventory_size = 1,
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
        energy_usage = "10kW",
        ingredient_count = 4,
        module_specification =
        {
            module_slots = 1
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"}
    },

    -- colonial-building-food-2 cantine
    {
        type = "assembling-machine",
        name = "colonial-building-food-2",
        icon = "__base__/graphics/icons/assembling-machine-2.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "colonial-building-food-2"},
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
--            {
--                production_type = "input",
--                pipe_picture = assembler2pipepictures(),
--                pipe_covers = pipecoverspictures(),
--                base_area = 10,
--                base_level = -1,
--                pipe_connections = {{ type="input", position = {0, -2} }},
--                secondary_draw_orders = { north = -1 }
--            },
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
        crafting_categories = {"waste-fluid", "colonist-food-1" , "colonist-food-2" },
        crafting_speed = 0.75,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.04 / 2.5
        },
        energy_usage = "150kW",
        ingredient_count = 4,
        module_specification =
        {
            module_slots = 2
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"}
    },

    -- colonial-building-food-3 restaurant
    {
        type = "assembling-machine",
        name = "colonial-building-food-3",
        icon = "__base__/graphics/icons/assembling-machine-3.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "colonial-building-food-3"},
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
--            {
--                production_type = "input",
--                pipe_picture = assembler2pipepictures(),
--                pipe_covers = pipecoverspictures(),
--                base_area = 10,
--                base_level = -1,
--                pipe_connections = {{ type="input", position = {0, -2} }},
--                secondary_draw_orders = { north = -1 }
--            },
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
                    filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
                    priority = "high",
                    width = 108,
                    height = 110,
                    frame_count = 32,
                    line_length = 8,
                    shift = util.by_pixel(0, 4),
                    hr_version =
                    {
                        filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3.png",
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
                    filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
                    priority = "high",
                    width = 98,
                    height = 82,
                    frame_count = 32,
                    line_length = 8,
                    draw_as_shadow = true,
                    shift = util.by_pixel(12, 5),
                    hr_version =
                    {
                        filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
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
        crafting_categories = {"waste-fluid", "colonist-food-1" , "colonist-food-2" , "colonist-food-3" },
        crafting_speed = 0.75,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.04 / 2.5
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
