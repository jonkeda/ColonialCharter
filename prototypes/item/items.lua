data:extend({
    {
        type = "item",
        name = "colonial-training-center",
        icon = "__ColonialIndustry__/graphics/icons/colonial-workshop.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings",
        order = "b[colonial-training-center]",
        place_result = "colonial-training-center",
        stack_size = 20
    },

    {
        type = "item",
        name = "waste-disposal",
        icon = "__base__/graphics/icons/stone-furnace.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings",
        order = "b[waste-disposal]",
        place_result = "waste-disposal",
        stack_size = 20
    },

    {
        type = "item",
        name = "cantine",
        icon = "__base__/graphics/icons/assembling-machine-2.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "colonial-buildings",
        order = "b[cantine]",
        place_result = "cantine",
        stack_size = 50
    },

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


    -- Workers
  -- https://www.iconexperience.com/o_collection/icons/?icon=scientist&color_style=orange_dark_grey
      -- manager
      {
        type = "module",
        name = "colonist-speed-module",
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
        name = "colonist-effectivity-module",
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
        name = "colonist-productivity-module",
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
        name = "colonist-pollution-module",
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
      }
})
