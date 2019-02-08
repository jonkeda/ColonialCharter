--name 1,            energy 2, fullness 3,  effect 4, category 5, result = 6, technology = 7
local foods = {
    {"apple", 			1, 	    30, 	-20,    "colonist-food-1", "compost"},
    {"orange", 			1, 	    30, 	-20,    "colonist-food-1", "compost"},
    {"corn", 			10, 	30, 	-20,    "colonist-food-1", "compost"},
    {"cucumber", 		8, 		20, 	-20,    "colonist-food-1", "compost"},
    {"tomato", 			4, 		10, 	-15,    "colonist-food-1", "compost"},
    {"lettuce", 		3, 		8, 		-10,    "colonist-food-1", "compost"},
    {"cooked-corn", 	15, 	40, 	-40,    "colonist-food-1", "waste", "cooking"},
    {"corn-bread", 		25, 	65, 	-30,    "colonist-food-1", "waste", "flour"},
    {"popcorn", 		4, 		9, 		-10,    "colonist-food-1", "waste", "frying"},
    {"basic-salad", 	25, 	40, 	-100,   "colonist-food-1", "waste", "salad"},

    {"cooked-soy", 		2,		5, 		-5,     "colonist-food-2", "waste", "cooking"},
    {"food-capsule", 	50, 	50, 	-200,   "colonist-food-2", "waste", "advanced-nutrient-extraction"},
    {"cooked-fish", 	2,		5, 		-5,     "colonist-food-2", "waste", "cooking"},
    {"baked-potato", 	10, 	30, 	-40,    "colonist-food-2", "waste", "cooking"},
    {"fries", 			20, 	55, 	-50,    "colonist-food-2", "waste", "frying"},
    {"ketchup-fries", 	25, 	70, 	-50,    "colonist-food-2", "waste", "seasoning"},
    {"biter-meat", 		15, 	55, 	100,    "colonist-food-2", "compost"},
    {"biter-steak", 	30, 	70, 	30,     "colonist-food-2", "waste", "frying"},
    {"fish-steak", 		30, 	70, 	30,     "colonist-food-2", "waste", "frying"},
    {"schnitzel", 		35, 	80, 	40,     "colonist-food-2", "waste", "frying"},
    --{"pickles", 		3, 		5, 		-5,     "colonist-food-2", "waste"},
    {"tofu", 			25, 	60, 	-15,    "colonist-food-2", "waste", "fermentation"},

    {"pizza", 			70, 	95, 	-60,    "colonist-food-3", "waste", "complex-foods"},
    {"burger", 			75, 	100, 	-60,    "colonist-food-3", "waste", "complex-foods"},
    {"tofu-pizza", 		65, 	95, 	-80,    "colonist-food-3", "waste", "complex-foods"},
    {"tofu-burger", 	60, 	100, 	-80,    "colonist-food-3", "waste", "complex-foods"},
    {"fish-pizza", 		65, 	95, 	-80,    "colonist-food-3", "waste", "complex-foods"},
    {"fish-burger", 	60, 	100, 	-80,    "colonist-food-3", "waste", "complex-foods"},
    {"best-salad", 		45, 	70, 	-200,   "colonist-food-3", "waste", "seasoning"},
    {"fish-salad", 		45, 	70, 	-200,   "colonist-food-3", "waste", "seasoning"},
    {"fish-and-chips", 	75, 	100, 	-200,   "colonist-food-3", "waste", "frying"},
    {"vegan-food-capsule", 50, 	50, 	-80,    "colonist-food-3", "waste", "advanced-nutrient-extraction"},
    {"cooked-biter-meat", 20, 	60, 	50,     "colonist-food-3", "waste", "cooking"}
}

-- Food

for i,f in pairs(foods) do
    if f[6] == "compost" then
        data:extend({
        {
            type = "recipe",
            name = f[1].."-waste",
            icon = "__FoodIndustry__/graphics/icons/items/"..f[1]..".png",
            icon_size = 32,
            category = f[5],
            subgroup = "colonial-fluids",
            energy_required = 10,
            ingredients =
            {
                {f[1], 1},
            },
            results = {{type="item", name="compostwaste", amount=f[2]} },
            enabled = true,
            main_product = ""
        },
        })
    else
        data:extend({
        {
            type = "recipe",
            name = f[1].."-waste",
            icon = "__FoodIndustry__/graphics/icons/items/"..f[1]..".png",
            icon_size = 32,
            category = f[5],
            subgroup = "colonial-fluids",
            energy_required = 10,
            ingredients =
            {
                {f[1], 1},
            },
            results = {{type="fluid", name="waste", amount=f[2]}},
            enabled = false,
            main_product = ""
        },
        })
        local tech = f[7]
        if tech ~= nil then
        local t = data.raw["technology"][tech]["effects"]
        table.insert(t, {type = "unlock-recipe", recipe = f[1].."-waste"})
        end
    end
end
