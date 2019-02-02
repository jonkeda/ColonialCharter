--name 1,            energy 2, fullness 3,  effect 4, category 5, result = 6
local foods = {
    {"apple", 			1, 	    30, 	-20,    "colonist-food-1", "compost"},
    {"corn", 			10, 	30, 	-20,    "colonist-food-1", "waste"},
    {"cucumber", 		8, 		20, 	-20,    "colonist-food-1", "waste"},
    {"tomato", 			4, 		10, 	-15,    "colonist-food-1", "waste"},
    {"lettuce", 		3, 		8, 		-10,    "colonist-food-1", "waste"},
    {"cooked-corn", 	15, 	40, 	-40,    "colonist-food-1", "waste"},
    {"corn-bread", 		25, 	65, 	-30,    "colonist-food-1", "waste"},
    {"popcorn", 		4, 		9, 		-10,    "colonist-food-1", "waste"},
    {"basic-salad", 	25, 	40, 	-100,   "colonist-food-1", "waste"},

    {"cooked-soy", 		2,		5, 		-5,     "colonist-food-2", "waste"},
    {"food-capsule", 	50, 	50, 	-200,    "colonist-food-2", "waste"},
    {"cooked-fish", 	2,		5, 		-5,    "colonist-food-2", "waste"},
    {"baked-potato", 	10, 	30, 	-40,    "colonist-food-2", "waste"},
    {"fries", 			20, 	55, 	-50,    "colonist-food-2", "waste"},
    {"ketchup-fries", 	25, 	70, 	-50,    "colonist-food-2", "waste"},
    {"biter-meat", 		15, 	55, 	100,    "colonist-food-2", "waste"},
    {"biter-steak", 	30, 	70, 	30,    "colonist-food-2", "waste"},
    {"fish-steak", 		30, 	70, 	30,    "colonist-food-2", "waste"},
    {"schnitzel", 		35, 	80, 	40,    "colonist-food-2", "waste"},
    {"pickles", 		3, 		5, 		-5,    "colonist-food-2", "waste"},
    {"tofu", 			25, 	60, 	-15,    "colonist-food-2", "waste"},

    {"pizza", 			70, 	95, 	-60,    "colonist-food-3", "waste"},
    {"burger", 			75, 	100, 	-60,    "colonist-food-3", "waste"},
    {"tofu-pizza", 		65, 	95, 	-80,    "colonist-food-3", "waste"},
    {"tofu-burger", 	60, 	100, 	-80,    "colonist-food-3", "waste"},
    {"fish-pizza", 		65, 	95, 	-80,    "colonist-food-3", "waste"},
    {"fish-burger", 	60, 	100, 	-80,    "colonist-food-3", "waste"},
    {"best-salad", 		45, 	70, 	-200,    "colonist-food-3", "waste"},
    {"fish-salad", 		45, 	70, 	-200,    "colonist-food-3", "waste"},
    {"fish-and-chips", 	75, 	100, 	-200,    "colonist-food-3", "waste"},
    {"vegan-food-capsule", 50, 	50, 	-80,    "colonist-food-3", "waste"},
    {"cooked-biter-meat", 20, 	60, 	50,    "colonist-food-3", "waste"}
}

-- Food

for i,f in pairs(foods) do
    local result
    local subgroup
    local category
    if f[6] == "compost" then
        subgroup = "food-items"
        result = {{type="item", name="compost", amount=f[2]}}
    else
        subgroup = "colonial-fluids"
        result = {{type="fluid", name="waste", amount=f[2]}}
    end
    data:extend({
    {
        type = "recipe",
        name = f[1].."-waste",
        icon = "__FoodIndustry__/graphics/icons/items/"..f[1]..".png",
        icon_size = 32,
        category = "colonist-food-1",
        subgroup = subgroup,
        energy_required = 1,
        ingredients =
        {
            {f[1], 1},
        },
        results = result,
        enabled = true,
        main_product = ""
    },
    })

end
