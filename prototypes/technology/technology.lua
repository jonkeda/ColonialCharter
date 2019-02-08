require("prototypes.foods")
-- jobs
data:extend({
    {
        type = "technology",
        name = "colonist-job-a",
        icon = "__ColonialIndustry__/graphics/technology/colonial-charter.png",
        icon_size = 128,
        effects =
        {
            {type = "unlock-recipe", recipe = "colonial-training-1"},
            {type = "unlock-recipe", recipe = "colonist-speed-module-1"},
            {type = "unlock-recipe", recipe = "colonist-effectivity-module-1"},
            {type = "unlock-recipe", recipe = "colonist-productivity-module-1"},
            {type = "unlock-recipe", recipe = "colonist-pollution-module-1"},
        },
        unit =
        {
            time = 60,
            count = 150,
            ingredients =
            {
                {"science-pack-1", 1}
            },
        },
        order = "w",
    },
    {
        type = "technology",
        name = "colonist-job-b",
        icon = "__ColonialIndustry__/graphics/technology/colonial-charter.png",
        icon_size = 128,
        effects =
        {
            {type = "unlock-recipe", recipe = "colonial-training-2"},
            {type = "unlock-recipe", recipe = "colonist-speed-module-2"},
            {type = "unlock-recipe", recipe = "colonist-effectivity-module-2"},
            {type = "unlock-recipe", recipe = "colonist-productivity-module-2"},
            {type = "unlock-recipe", recipe = "colonist-pollution-module-2"},
        },
        unit =
        {
            time = 60,
            count = 150,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
            },
        },
        order = "w",
    },
    {
        type = "technology",
        name = "colonist-job-c",
        icon = "__ColonialIndustry__/graphics/technology/colonial-charter.png",
        icon_size = 128,
        prerequisites =
        {
            "colonist-job-b"
        },
        effects =
        {
            {type = "unlock-recipe", recipe = "colonial-training-3"},
            {type = "unlock-recipe", recipe = "colonist-speed-module-3"},
            {type = "unlock-recipe", recipe = "colonist-effectivity-module-3"},
            {type = "unlock-recipe", recipe = "colonist-productivity-module-3"},
            {type = "unlock-recipe", recipe = "colonist-pollution-module-3"},
        },
        unit =
        {
            time = 60,
            count = 150,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},

            },
        },
        order = "w",
    },

})

-- jobs
data:extend({
    {
        type = "technology",
        name = "colonist-food-b",
        icon = "__ColonialIndustry__/graphics/technology/colonial-charter.png",
        icon_size = 128,
        prerequisites =
        {
            "frying"
        },
        effects =
        {
            {type = "unlock-recipe", recipe = "colonial-building-food-2"},
        },
        unit =
        {
            time = 60,
            count = 150,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
            },
        },
        order = "w",
    },
    {
        type = "technology",
        name = "colonist-food-c",
        icon = "__ColonialIndustry__/graphics/technology/colonial-charter.png",
        icon_size = 128,
        prerequisites =
        {
            "complex-foods"
        },
        effects =
        {
            {type = "unlock-recipe", recipe = "colonial-building-food-3"},
        },
        unit =
        {
            time = 60,
            count = 150,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
            },
        },
        order = "w",
    },

    -- waste

})

--for i,f in pairs(foods) do
--    if f[6] == "compost" then
--    else
--        local tech = f[7]
--        table.insert(data.raw["technology"][tech]["effects"], {type = "unlock-recipe", recipe = f[1].."-waste"})
--    end
--
--end
