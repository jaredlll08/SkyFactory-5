// Script for obtaining dye items
// Ash to Gray Dye

craftingTable.addShapeless(
  "ash_to_gray_dye",
  <item:minecraft:gray_dye>,
  [<item:supplementaries:ash>]
);
// Light Gray Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:light_gray_dye_from_gray_white_dye");
craftingTable.removeByName("minecraft:light_gray_dye_from_black_white_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Light_Gray,
  "light_gray_dye_combo",
  <item:minecraft:light_gray_dye> * 2,
  [<item:minecraft:gray_dye>, <item:minecraft:white_dye>]
);

// Gray Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:gray_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Gray,
  "gray_dye_combo",
  <item:minecraft:gray_dye> * 2,
  [<item:minecraft:white_dye>, <item:minecraft:black_dye>]
);

// Orange Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:orange_dye_from_red_yellow");

mods.recipestages.Recipes.addShapeless(
  Stage.Orange,
  "orange_dye_combo",
  <item:minecraft:orange_dye> * 2,
  [<item:minecraft:red_dye>, <item:minecraft:yellow_dye>]
);

// Purple Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:purple_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Purple,
  "purple_dye_combo",
  <item:minecraft:purple_dye> * 2,
  [<item:minecraft:red_dye>, <item:minecraft:blue_dye>]
);

// Magenta Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:magenta_dye_from_blue_red_pink");
craftingTable.removeByName("minecraft:magenta_dye_from_blue_red_white_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Magenta,
  "magenta_dye_combo",
  <item:minecraft:magenta_dye> * 2,
  [<item:minecraft:purple_dye>, <item:minecraft:pink_dye>]
);

// Lime Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:lime_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Lime,
  "lime_dye_combo",
  <item:minecraft:lime_dye> * 2,
  [<item:minecraft:green_dye>, <item:minecraft:white_dye>]
);

// Pink Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:pink_dye_from_red_white_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Pink,
  "pink_dye_combo",
  <item:minecraft:pink_dye> * 2,
  [<item:minecraft:white_dye>, <item:minecraft:red_dye>]
);

// Cyan Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:cyan_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Cyan,
  "cyan_dye_combo",
  <item:minecraft:cyan_dye> * 2,
  [<item:minecraft:blue_dye>, <item:minecraft:green_dye>]
);

// Light Blue Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:light_blue_dye_from_blue_white_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Light_Blue,
  "light_blue_dye_combo",
  <item:minecraft:light_blue_dye> * 2,
  [<item:minecraft:blue_dye>, <item:minecraft:white_dye>]
);


// Green Dye Combination
mods.recipestages.Recipes.addShapeless(
  Stage.Green,
  "green_dye_combo",
  <item:minecraft:green_dye> * 2,
  [<item:minecraft:blue_dye>, <item:minecraft:yellow_dye>]
);



// Bonemeal from Dye
mods.recipestages.Recipes.addShapeless(
  Stage.White,
  "bonemeal_from_dye",
  <item:minecraft:bone_meal> * 2,
  [<item:minecraft:white_dye>, <item:minecraft:white_dye>, <item:minecraft:white_dye>]
);


// Mystical Agriculture Essence to Dye Recipes



mods.recipestages.Recipes.addShapeless(
  Stage.Black,
  "black_dye_from_black_essence",
  <item:minecraft:black_dye> * 4,
  [<item:mysticalagriculture:black_crop_essence>, <item:mysticalagriculture:black_crop_essence>, <item:mysticalagriculture:black_crop_essence>, <item:mysticalagriculture:black_crop_essence>, <item:mysticalagriculture:black_crop_essence>, <item:mysticalagriculture:black_crop_essence>, <item:mysticalagriculture:black_crop_essence>, <item:mysticalagriculture:black_crop_essence>, ]
);


mods.recipestages.Recipes.addShapeless(
  Stage.Blue,
  "blue_dye_from_blue_essence",
  <item:minecraft:blue_dye> * 4,
  [<item:mysticalagriculture:blue_crop_essence>, <item:mysticalagriculture:blue_crop_essence>, <item:mysticalagriculture:blue_crop_essence>, <item:mysticalagriculture:blue_crop_essence>, <item:mysticalagriculture:blue_crop_essence>, <item:mysticalagriculture:blue_crop_essence>, <item:mysticalagriculture:blue_crop_essence>, <item:mysticalagriculture:blue_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Brown,
  "brown_dye_from_brown_essence",
  <item:minecraft:brown_dye> * 4,
  [<item:mysticalagriculture:brown_crop_essence>, <item:mysticalagriculture:brown_crop_essence>, <item:mysticalagriculture:brown_crop_essence>, <item:mysticalagriculture:brown_crop_essence>, <item:mysticalagriculture:brown_crop_essence>, <item:mysticalagriculture:brown_crop_essence>, <item:mysticalagriculture:brown_crop_essence>, <item:mysticalagriculture:brown_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Cyan,
  "cyan_dye_from_cyan_essence",
  <item:minecraft:cyan_dye> * 4,
  [<item:mysticalagriculture:cyan_crop_essence>, <item:mysticalagriculture:cyan_crop_essence>, <item:mysticalagriculture:cyan_crop_essence>, <item:mysticalagriculture:cyan_crop_essence>, <item:mysticalagriculture:cyan_crop_essence>, <item:mysticalagriculture:cyan_crop_essence>, <item:mysticalagriculture:cyan_crop_essence>, <item:mysticalagriculture:cyan_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Gray,
  "gray_dye_from_gray_essence",
  <item:minecraft:gray_dye> * 4,
  [<item:mysticalagriculture:gray_crop_essence>, <item:mysticalagriculture:gray_crop_essence>, <item:mysticalagriculture:gray_crop_essence>, <item:mysticalagriculture:gray_crop_essence>, <item:mysticalagriculture:gray_crop_essence>, <item:mysticalagriculture:gray_crop_essence>, <item:mysticalagriculture:gray_crop_essence>, <item:mysticalagriculture:gray_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Green,
  "green_dye_from_green_essence",
  <item:minecraft:green_dye> * 4,
  [<item:mysticalagriculture:green_crop_essence>, <item:mysticalagriculture:green_crop_essence>, <item:mysticalagriculture:green_crop_essence>, <item:mysticalagriculture:green_crop_essence>, <item:mysticalagriculture:green_crop_essence>, <item:mysticalagriculture:green_crop_essence>, <item:mysticalagriculture:green_crop_essence>, <item:mysticalagriculture:green_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Light_Blue,
  "light_blue_dye_from_light_blue_essence",
  <item:minecraft:light_blue_dye> * 4,
  [<item:mysticalagriculture:light_blue_crop_essence>, <item:mysticalagriculture:light_blue_crop_essence>, <item:mysticalagriculture:light_blue_crop_essence>, <item:mysticalagriculture:light_blue_crop_essence>, <item:mysticalagriculture:light_blue_crop_essence>, <item:mysticalagriculture:light_blue_crop_essence>, <item:mysticalagriculture:light_blue_crop_essence>, <item:mysticalagriculture:light_blue_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Light_Gray,
  "light_gray_dye_from_light_gray_essence",
  <item:minecraft:light_gray_dye> * 4,
  [<item:mysticalagriculture:light_gray_crop_essence>, <item:mysticalagriculture:light_gray_crop_essence>, <item:mysticalagriculture:light_gray_crop_essence>, <item:mysticalagriculture:light_gray_crop_essence>, <item:mysticalagriculture:light_gray_crop_essence>, <item:mysticalagriculture:light_gray_crop_essence>, <item:mysticalagriculture:light_gray_crop_essence>, <item:mysticalagriculture:light_gray_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Lime,
  "lime_dye_from_lime_essence",
  <item:minecraft:lime_dye> * 4,
  [<item:mysticalagriculture:lime_crop_essence>, <item:mysticalagriculture:lime_crop_essence>, <item:mysticalagriculture:lime_crop_essence>, <item:mysticalagriculture:lime_crop_essence>, <item:mysticalagriculture:lime_crop_essence>, <item:mysticalagriculture:lime_crop_essence>, <item:mysticalagriculture:lime_crop_essence>, <item:mysticalagriculture:lime_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Magenta,
  "magenta_dye_from_magenta_essence",
  <item:minecraft:magenta_dye> * 4,
  [<item:mysticalagriculture:magenta_crop_essence>, <item:mysticalagriculture:magenta_crop_essence>, <item:mysticalagriculture:magenta_crop_essence>, <item:mysticalagriculture:magenta_crop_essence>, <item:mysticalagriculture:magenta_crop_essence>, <item:mysticalagriculture:magenta_crop_essence>, <item:mysticalagriculture:magenta_crop_essence>, <item:mysticalagriculture:magenta_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Orange,
  "orange_dye_from_orange_essence",
  <item:minecraft:orange_dye> * 4,
  [<item:mysticalagriculture:orange_crop_essence>, <item:mysticalagriculture:orange_crop_essence>, <item:mysticalagriculture:orange_crop_essence>, <item:mysticalagriculture:orange_crop_essence>, <item:mysticalagriculture:orange_crop_essence>, <item:mysticalagriculture:orange_crop_essence>, <item:mysticalagriculture:orange_crop_essence>, <item:mysticalagriculture:orange_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Pink,
  "pink_dye_from_pink_essence",
  <item:minecraft:pink_dye> * 4,
  [<item:mysticalagriculture:pink_crop_essence>, <item:mysticalagriculture:pink_crop_essence>, <item:mysticalagriculture:pink_crop_essence>, <item:mysticalagriculture:pink_crop_essence>, <item:mysticalagriculture:pink_crop_essence>, <item:mysticalagriculture:pink_crop_essence>, <item:mysticalagriculture:pink_crop_essence>, <item:mysticalagriculture:pink_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Purple,
  "purple_dye_from_purple_essence",
  <item:minecraft:purple_dye> * 4,
  [<item:mysticalagriculture:purple_crop_essence>, <item:mysticalagriculture:purple_crop_essence>, <item:mysticalagriculture:purple_crop_essence>, <item:mysticalagriculture:purple_crop_essence>, <item:mysticalagriculture:purple_crop_essence>, <item:mysticalagriculture:purple_crop_essence>, <item:mysticalagriculture:purple_crop_essence>, <item:mysticalagriculture:purple_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Red,
  "red_dye_from_red_essence",
  <item:minecraft:red_dye> * 4,
  [<item:mysticalagriculture:red_crop_essence>, <item:mysticalagriculture:red_crop_essence>, <item:mysticalagriculture:red_crop_essence>, <item:mysticalagriculture:red_crop_essence>, <item:mysticalagriculture:red_crop_essence>, <item:mysticalagriculture:red_crop_essence>, <item:mysticalagriculture:red_crop_essence>, <item:mysticalagriculture:red_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.White,
  "white_dye_from_white_essence",
  <item:minecraft:white_dye> * 4,
  [<item:mysticalagriculture:white_crop_essence>, <item:mysticalagriculture:white_crop_essence>, <item:mysticalagriculture:white_crop_essence>, <item:mysticalagriculture:white_crop_essence>, <item:mysticalagriculture:white_crop_essence>, <item:mysticalagriculture:white_crop_essence>, <item:mysticalagriculture:white_crop_essence>, <item:mysticalagriculture:white_crop_essence>, ]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Yellow,
  "yellow_dye_from_yellow_essence",
  <item:minecraft:yellow_dye> * 4,
  [<item:mysticalagriculture:yellow_crop_essence>, <item:mysticalagriculture:yellow_crop_essence>, <item:mysticalagriculture:yellow_crop_essence>, <item:mysticalagriculture:yellow_crop_essence>, <item:mysticalagriculture:yellow_crop_essence>, <item:mysticalagriculture:yellow_crop_essence>, <item:mysticalagriculture:yellow_crop_essence>, <item:mysticalagriculture:yellow_crop_essence>, ]
);



