data:extend(
  {
    {
      type = "recipe",
      name = "fishing-inserter",
      enabled = true,
      ingredients =
      {
        {"iron-gear-wheel", 1},
        {"iron-plate", 1},
        {"inserter", 1}
      },
      result = "fishing-inserter"
    },
  })

data:extend({
    {
        type = "recipe",
        name = "colonial-training-center",
        energy_required = 15,
        ingredients =
        {
            {"iron-plate", 1},
        },
        result = "colonial-training-center",
        enabled = true,
    },

  {
    type = "recipe",
    name = "Latrine",
    energy_required = 3,
    enabled = true,
    ingredients =
    {
      {"raw-wood", 4},
      {"stone", 10}
    },
    result= "latrine"
  },

  {
    type = "recipe",
    name = "waste-disposal",
    energy_required = 15,
    ingredients =
    {
      {"iron-plate", 1},
    },
    result = "waste-disposal",
    enabled = true,
  },

  {
    type = "recipe",
    name = "chop-house",
    ingredients =
    {
        {"wood", 1},
        {"iron-plate", 1},
    },
    result = "chop-house",
    enabled = true,
  },
  {
    type = "recipe",
    name = "cantine",
    ingredients =
    {
      {"wood", 1},
      {"iron-plate", 1},
    },
    result = "cantine",
    enabled = true,
  },
  {
    type = "recipe",
    name = "restaurant",
    ingredients =
    {
      {"wood", 1},
      {"iron-plate", 1},
    },
    result = "restaurant",
    enabled = true,
  },

  -- Waste
  {
    type = "recipe",
    name = "void-waste",
    category = "void-fluid",
    hidden = "true",
    energy_required = 1,
    ingredients =
    {
      { type="fluid", name="waste", amount=25 }
    },
    results=
    {
      { type="item", name="void", amount=1, probability=0 },
    },
    subgroup = "void",
    icon = "__ColonialIndustry__/graphics/icons/fluid/oxygen.png",
    icon_size = 32,
    emissions_multiplier = -1,
    order = "waste"
  },

  {
    type = "recipe",
    name = "sulfur-from-waste",
    category = "chemistry",
    energy_required = 1,
    enabled = true,
    subgroup="colonial-waste",
    ingredients =
    {
      {type="fluid", name="waste", amount=3},
    },
    results=
    {
      {type="item", name="sulfur", amount=2}
    },
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.659, b = 0.000, a = 0.000}, -- #ffa70000
      secondary = {r = 0.812, g = 1.000, b = 0.000, a = 0.000}, -- #cfff0000
      tertiary = {r = 0.960, g = 0.806, b = 0.000, a = 0.000}, -- #f4cd0000
    }
  },

  {
    type = "recipe",
    name = "solid-fuel-from-waste",
    category = "chemistry",
    energy_required = 3,
    ingredients =
    {
      {type="fluid", name="waste", amount=10}
    },
    results=
    {
      {type="item", name="solid-fuel", amount=1}
    },
    icon = "__base__/graphics/icons/solid-fuel-from-light-oil.png",
    icon_size = 32,
    subgroup="colonial-waste",
    enabled = true,
    order = "b[fluid-chemistry]-c[solid-fuel-from-light-oil]",
    crafting_machine_tint =
    {
      primary = {r = 0.270, g = 0.122, b = 0.000, a = 0.000}, -- #441f0000
      secondary = {r = 0.735, g = 0.546, b = 0.325, a = 0.000}, -- #bb8b5200
      tertiary = {r = 0.610, g = 0.348, b = 0.000, a = 0.000}, -- #9b580000
    }
  },

  {
    type = "recipe",
    name = "fertilizer-from-waste",
    category = "chemistry",
    energy_required = 3,
    ingredients =
    {
      {type="fluid", name="waste", amount=10}
    },
    results=
    {
      {type="item", name="fertilizer", amount=1}
    },
    icon = "__FoodIndustry__/graphics/icons/items/fertilizer.png",
    icon_size = 32,
    subgroup="colonial-waste",
    enabled = true,
    order = "b[fluid-chemistry]-c[solid-fuel-from-light-oil]",
    crafting_machine_tint =
    {
      primary = {r = 0.270, g = 0.122, b = 0.000, a = 0.000}, -- #441f0000
      secondary = {r = 0.735, g = 0.546, b = 0.325, a = 0.000}, -- #bb8b5200
      tertiary = {r = 0.610, g = 0.348, b = 0.000, a = 0.000}, -- #9b580000
    }
  },

  -- Food
  {
    type = "recipe",
    name = "wood-waste",
    category = "waste-fluid",
    energy_required = 1,
    ingredients =
    {
      {"raw-wood", 1},
    },
    results=
    {
      {type="fluid", name="waste", amount=1}
    },
    enabled = true,
  },

  -- Jobs
  {
    type = "recipe",
    category="colonist",
    name = "colonist-speed-module",
    energy_required = 10,
    ingredients =
    {
      {"colonist", 4},
    },
    result = "colonist-speed-module",
    enabled = true,
  },
  {
    type = "recipe",
    category="colonist",
    name = "colonist-effectivity-module",
    energy_required = 10,
    ingredients =
    {
      {"colonist", 4},
    },
    result = "colonist-effectivity-module",
    enabled = true,
  },
  {
    type = "recipe",
    category="colonist",
    name = "colonist-productivity-module",
    energy_required = 10,
    ingredients =
    {
      {"colonist", 4},
    },
    result = "colonist-productivity-module",
    enabled = true,
  },
  {
    type = "recipe",
    category="colonist",
    name = "colonist-pollution-module",
    energy_required = 10,
    ingredients =
    {
      {"colonist", 4},
    },
    result = "colonist-pollution-module",
    enabled = true,
  }
})