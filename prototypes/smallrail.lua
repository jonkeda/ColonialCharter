data:extend({
    {
        type = "straight-rail",
        name = "straight-small-rail",
        icon = "__base__/graphics/icons/rail.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation", "building-direction-8-way"},
        minable = {mining_time = 0.5, result = "small-rail"},
        max_health = 100,
        corpse = "straight-rail-remnants",
        resistances =
        {
            {
                type = "fire",
                percent = 100
            }
        },
        collision_box = {{-0.7, -0.8}, {0.7, 0.8}},
        selection_box = {{-0.7, -0.8}, {0.7, 0.8}},
        rail_category = "regular",
        pictures = rail_pictures()
    },
    {
        type = "curved-rail",
        name = "curved-small-rail",
        icon = "__base__/graphics/icons/curved-rail.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation", "building-direction-8-way"},
        minable = {mining_time = 0.5, result = "small-rail", count = 4},
        max_health = 200,
        corpse = "curved-rail-remnants",
        resistances =
        {
            {
                type = "fire",
                percent = 100
            }
        },
        collision_box = {{-0.75, -0.55}, {0.75, 1.6}},
        secondary_collision_box = {{-0.65, -2.43}, {0.65, 2.43}},
        selection_box = {{-1.7, -0.8}, {1.7, 0.8}},
        rail_category = "regular",
        pictures = rail_pictures(),
        placeable_by = { item="small-rail", count = 4}
    },

    {
        type = "rail-planner",
        name = "small-rail",
        icon = "__base__/graphics/icons/rail.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "transport",
        order = "a[train-system]-a[small-rail]",
        place_result = "straight-small-rail",
        stack_size = 100,
        straight_rail = "straight-small-rail",
        curved_rail = "curved-small-rail"
    },

    {
        type = "recipe",
        name = "small-rail",
        enabled = true,
        ingredients =
        {
            {"stone", 1},
            {"iron-stick", 1},
            {"steel-plate", 1}
        },
        result = "small-rail",
        result_count = 2
    },

--    {
--        type = "technology",
--        name = "small-railway",
--        icon_size = 128,
--        icon = "__base__/graphics/technology/railway.png",
--        effects =
--        {
--            {
--                type = "unlock-recipe",
--                recipe = "small-rail"
--            },
----            {
----                type = "unlock-recipe",
----                recipe = "locomotive"
----            },
----            {
----                type = "unlock-recipe",
----                recipe = "cargo-wagon"
----            }
--        },
--    }
})
