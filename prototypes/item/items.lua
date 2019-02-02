data:extend({
    -- training

    {
        type = "item",
        name = "colonial-training-1",
        icon = "__ColonialIndustry__/graphics/icons/colonial-workshop.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings-training",
        order = "a[colonial-training-1]",
        place_result = "colonial-training-1",
        stack_size = 20
    },
    {
        type = "item",
        name = "colonial-training-2",
        icon = "__ColonialIndustry__/graphics/icons/colonial-workshop.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings-training",
        order = "b[colonial-training-1]",
        place_result = "colonial-training-2",
        stack_size = 20
    },
    {
        type = "item",
        name = "colonial-training-3",
        icon = "__ColonialIndustry__/graphics/icons/colonial-workshop.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings-training",
        order = "b[colonial-training-1]",
        place_result = "colonial-training-3",
        stack_size = 20
    },

    -- waste
    {
        type = "item",
        name = "latrine",
        icon = "__base__/graphics/icons/storage-tank.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings-waste",
        order = "b[fluid]-a[latrine]",
        place_result = "latrine",
        stack_size = 50
    },

    {
        type = "item",
        name = "waste-disposal",
        icon = "__base__/graphics/icons/stone-furnace.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings-waste",
        order = "c[waste-disposal]",
        place_result = "waste-disposal",
        stack_size = 20
    },

    -- food
    {
        type = "item",
        name = "colonial-building-food-1",
        icon = "__base__/graphics/icons/assembling-machine-1.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings-food",
        order = "a[colonial-building-food-1]",
        place_result = "colonial-building-food-1",
        stack_size = 50
    },
    {
        type = "item",
        name = "colonial-building-food-2",
        icon = "__base__/graphics/icons/assembling-machine-2.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings-food",
        order = "b[colonial-building-food-2]",
        place_result = "colonial-building-food-2",
        stack_size = 50
    },
    {
        type = "item",
        name = "colonial-building-food-3",
        icon = "__base__/graphics/icons/assembling-machine-3.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings-food",
        order = "c[colonial-building-food-3]",
        place_result = "colonial-building-food-3",
        stack_size = 50
    },

    -- void
    {
        type = "item",
        name = "void",
        icon = "__ColonialIndustry__/graphics/icons/fluid/oxygen.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory", "hidden"},
        subgroup = "void",
        order = "void",
        stack_size = 100
    },

    -- Jobs
    -- https://www.iconexperience.com/o_collection/icons/?icon=scientist&color_style=orange_dark_grey
      -- manager
      {
        type = "module",
        name = "colonist-speed-module-1",
        icon = "__ColonialIndustry__/graphics/icons/speedworker.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        category = "speed",
        tier = 1,
        order = "a[speed]-a[speed-module-1]",
        stack_size = 5,
        default_request_amount = 1,
        effect = { speed = {bonus = 0.2}, consumption = {bonus = 0.0}}
      },
      -- engineer
      {
        type = "module",
        name = "colonist-effectivity-module-1",
        icon = "__ColonialIndustry__/graphics/icons/effectivityworker.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        category = "effectivity",
        tier = 1,
        order = "a[effectivity]-a[effectivity-module-1]",
        stack_size = 5,
        default_request_amount = 1,
        effect = { consumption = {bonus = -0.2}}
      },
      -- worker
      {
        type = "module",
        name = "colonist-productivity-module-1",
        icon = "__ColonialIndustry__/graphics/icons/productivityworker.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        category = "productivity",
        tier = 1,
        order = "a[pollution]-a[productivity-module-1]",
        stack_size = 5,
        default_request_amount = 1,
        effect = { productivity = {bonus = 0.04},}
      },
      -- environmentalist
      {
        type = "module",
        name = "colonist-pollution-module-1",
        icon = "__ColonialIndustry__/graphics/icons/pollutionworker.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        category = "pollution",
        tier = 1,
        order = "a[pollution]-a[pollution-module-1]",
        stack_size = 5,
        default_request_amount = 1,
        effect = { pollution = {bonus = -0.05},}
      },

    -- manager
    {
        type = "module",
        name = "colonist-speed-module-2",
        icon = "__ColonialIndustry__/graphics/icons/speedworker.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        category = "speed",
        tier = 1,
        order = "a[speed]-a[speed-module-2]",
        stack_size = 5,
        default_request_amount = 1,
        effect = { speed = {bonus = 0.2}, consumption = {bonus = 0.0}}
    },
    -- engineer
    {
        type = "module",
        name = "colonist-effectivity-module-2",
        icon = "__ColonialIndustry__/graphics/icons/effectivityworker.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        category = "effectivity",
        tier = 1,
        order = "a[effectivity]-a[effectivity-module-2]",
        stack_size = 5,
        default_request_amount = 1,
        effect = { consumption = {bonus = -0.2}}
    },
    -- worker
    {
        type = "module",
        name = "colonist-productivity-module-2",
        icon = "__ColonialIndustry__/graphics/icons/productivityworker.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        category = "productivity",
        tier = 1,
        order = "a[pollution]-a[productivity-module-2]",
        stack_size = 5,
        default_request_amount = 1,
        effect = { productivity = {bonus = 0.04},}
    },
    -- environmentalist
    {
        type = "module",
        name = "colonist-pollution-module-2",
        icon = "__ColonialIndustry__/graphics/icons/pollutionworker.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        category = "pollution",
        tier = 1,
        order = "a[pollution]-a[pollution-module-2]",
        stack_size = 5,
        default_request_amount = 1,
        effect = { pollution = {bonus = -0.05},}
    },

    -- manager
    {
        type = "module",
        name = "colonist-speed-module-3",
        icon = "__ColonialIndustry__/graphics/icons/speedworker.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        category = "speed",
        tier = 1,
        order = "a[speed]-a[speed-module-3]",
        stack_size = 5,
        default_request_amount = 1,
        effect = { speed = {bonus = 0.2}, consumption = {bonus = 0.0}}
    },
    -- engineer
    {
        type = "module",
        name = "colonist-effectivity-module-3",
        icon = "__ColonialIndustry__/graphics/icons/effectivityworker.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        category = "effectivity",
        tier = 1,
        order = "a[effectivity]-a[effectivity-module-3]",
        stack_size = 5,
        default_request_amount = 1,
        effect = { consumption = {bonus = -0.2}}
    },
    -- worker
    {
        type = "module",
        name = "colonist-productivity-module-3",
        icon = "__ColonialIndustry__/graphics/icons/productivityworker.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        category = "productivity",
        tier = 1,
        order = "a[pollution]-a[productivity-module-3]",
        stack_size = 5,
        default_request_amount = 1,
        effect = { productivity = {bonus = 0.04},}
    },
    -- environmentalist
    {
        type = "module",
        name = "colonist-pollution-module-3",
        icon = "__ColonialIndustry__/graphics/icons/pollutionworker.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "colonial-colonist",
        category = "pollution",
        tier = 1,
        order = "a[pollution]-a[pollution-module-3]",
        stack_size = 5,
        default_request_amount = 1,
        effect = { pollution = {bonus = -0.05},}
    }
})
