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
    name = "cantine",
    ingredients =
    {
        {"iron-plate", 1},
    },
    result = "cantine",
    enabled = true,
  },


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
    name = "wood-waste",
    category = "waste-fluid",
    energy_required = 1,
    ingredients =
    {
      {"wood", 1},
    },
    results=
    {
      {type="fluid", name="waste", amount=1}
    },
    enabled = true,
  },

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