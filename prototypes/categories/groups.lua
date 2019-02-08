data:extend(
{
    -- item groups
    {
        type = "item-group",
        name = "colonial-charter",
        order = "z",
        order_in_recipe = "0",
        icon = "__ColonialIndustry__/graphics/item-group/colonial-products.png",
        icon_size = 64
    },
    {
        type = "item-subgroup",
        name = "colonial-colonist",
        group = "colonial-charter",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "colonial-products",
        group = "colonial-charter",
        order = "b"
    },
    {
        type = "item-subgroup",
        name = "colonial-buildings",
        group = "colonial-charter",
        order = "d"
    },
    {
        type = "item-subgroup",
        name = "colonial-activities",
        group = "colonial-charter",
        order = "e"
    },
    {
        type = "module-category",
        name = "pollution"
    },

    {
        type = "item-subgroup",
        name = "colonial-fluids",
        group = "colonial-charter",
        order = "f"
    },

    {
        type = "item-subgroup",
        name = "colonial-composte",
        group = "colonial-charter",
        order = "f"
    },

    {
        type = "item-subgroup",
        name = "colonial-waste",
        group = "colonial-charter",
        order = "g"
    },

    {
        type = "item-group",
        name = "void",
        order = "aaaaa",
        inventory_order = "z",
        icon = "__ColonialIndustry__/graphics/icons/fluid/oxygen.png",
        icon_size = 32,
    },
    {
        type = "item-subgroup",
        name = "void",
        group = "void",
        order = "a-a",
    },

    {
        type = "item-subgroup",
        name = "colonial-buildings-waste",
        group = "colonial-charter",
        order = "d-a"
    },

    {
        type = "item-subgroup",
        name = "colonial-buildings-food",
        group = "colonial-charter",
        order = "d-b"
    },

    {
        type = "item-subgroup",
        name = "colonial-buildings-training",
        group = "colonial-charter",
        order = "d-c"
    },

    {
        type = "item-subgroup",
        name = "colonial-buildings-housing",
        group = "colonial-charter",
        order = "d-d"
    },
})
