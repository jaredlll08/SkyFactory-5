// Script for obtaining dye items
// Ash to Gray Dye
/*
craftingTable.addShapeless(
  "ash_to_gray_dye",
  <item:minecraft:gray_dye>,
  [<item:supplementaries:ash>]
);


// Light Gray Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.remove(<item:minecraft:light_gray_dye>);

mods.recipestages.Recipes.addShapeless(
  Stage.Light_Gray,
  "light_gray_dye_combo",
  <item:minecraft:light_gray_dye> * 2,
  [<item:minecraft:gray_dye>, <item:minecraft:white_dye>]
);

// Gray Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.remove(<item:minecraft:gray_dye>);

mods.recipestages.Recipes.addShapeless(
  Stage.Gray,
  "gray_dye_combo",
  <item:minecraft:gray_dye> * 2,
  [<item:minecraft:white_dye>, <item:minecraft:black_dye>]
);

// Orange Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.remove(<item:minecraft:orange_dye>);

mods.recipestages.Recipes.addShapeless(
  Stage.Orange,
  "orange_dye_combo",
  <item:minecraft:orange_dye> * 2,
  [<item:minecraft:red_dye>, <item:minecraft:yellow_dye>]
);

// Purple Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.remove(<item:minecraft:purple_dye>);

mods.recipestages.Recipes.addShapeless(
  Stage.Purple,
  "purple_dye_combo",
  <item:minecraft:purple_dye> * 2,
  [<item:minecraft:red_dye>, <item:minecraft:blue_dye>]
);

// Magenta Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.remove(<item:minecraft:magenta_dye>);

mods.recipestages.Recipes.addShapeless(
  Stage.Magenta,
  "magenta_dye_combo",
  <item:minecraft:magenta_dye> * 2,
  [<item:minecraft:purple_dye>, <item:minecraft:pink_dye>]
);

// Lime Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.remove(<item:minecraft:lime_dye>);

mods.recipestages.Recipes.addShapeless(
  Stage.Lime,
  "lime_dye_combo",
  <item:minecraft:lime_dye> * 2,
  [<item:minecraft:purple_dye>, <item:minecraft:pink_dye>]
);

// Pink Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.remove(<item:minecraft:pink_dye>);

mods.recipestages.Recipes.addShapeless(
  Stage.Pink,
  "pink_dye_combo",
  <item:minecraft:pink_dye> * 2,
  [<item:minecraft:purple_dye>, <item:minecraft:pink_dye>]
);

// Cyan Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.remove(<item:minecraft:cyan_dye>);

mods.recipestages.Recipes.addShapeless(
  Stage.Cyan,
  "cyan_dye_combo",
  <item:minecraft:cyan_dye> * 2,
  [<item:minecraft:purple_dye>, <item:minecraft:pink_dye>]
);

// Light Blue Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.remove(<item:minecraft:light_blue_dye>);

mods.recipestages.Recipes.addShapeless(
  Stage.Light_Blue,
  "light_blue_dye_combo",
  <item:minecraft:light_blue_dye> * 2,
  [<item:minecraft:purple_dye>, <item:minecraft:pink_dye>]
);


// Bonemeal from Dye
mods.recipestages.Recipes.addShapeless(
  Stage.White,
  "bonemeal_from_dye",
  <item:minecraft:bone_meal> * 2,
  [<item:minecraft:white_dye>, <item:minecraft:white_dye>, <item:minecraft:white_dye>]
);
*/


// Blocks of Dye

mods.recipestages.Recipes.addShapeless(
  Stage.Black,
  "black_dye_from_block",
  <item:minecraft:black_dye> * 9,
  [<item:sf5_things:block_of_black_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Blue,
  "blue_dye_from_block",
  <item:minecraft:blue_dye> * 9,
  [<item:sf5_things:block_of_blue_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Brown,
  "brown_dye_from_block",
  <item:minecraft:brown_dye> * 9,
  [<item:sf5_things:block_of_brown_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Cyan,
  "cyan_dye_from_block",
  <item:minecraft:cyan_dye> * 9,
  [<item:sf5_things:block_of_cyan_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Gray,
  "gray_dye_from_block",
  <item:minecraft:gray_dye> * 9,
  [<item:sf5_things:block_of_gray_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Green,
  "green_dye_from_block",
  <item:minecraft:green_dye> * 9,
  [<item:sf5_things:block_of_green_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Light_Blue,
  "light_blue_dye_from_block",
  <item:minecraft:light_blue_dye> * 9,
  [<item:sf5_things:block_of_light_blue_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Light_Gray,
  "light_gray_dye_from_block",
  <item:minecraft:light_gray_dye> * 9,
  [<item:sf5_things:block_of_light_gray_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Lime,
  "lime_dye_from_block",
  <item:minecraft:lime_dye> * 9,
  [<item:sf5_things:block_of_lime_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Magenta,
  "magenta_dye_from_block",
  <item:minecraft:magenta_dye> * 9,
  [<item:sf5_things:block_of_magenta_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Orange,
  "orange_dye_from_block",
  <item:minecraft:orange_dye> * 9,
  [<item:sf5_things:block_of_orange_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Pink,
  "pink_dye_from_block",
  <item:minecraft:pink_dye> * 9,
  [<item:sf5_things:block_of_pink_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Purple,
  "purple_dye_from_block",
  <item:minecraft:purple_dye> * 9,
  [<item:sf5_things:block_of_purple_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Red,
  "red_dye_from_block",
  <item:minecraft:red_dye> * 9,
  [<item:sf5_things:block_of_red_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.White,
  "white_dye_from_block",
  <item:minecraft:white_dye> * 9,
  [<item:sf5_things:block_of_white_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Yellow,
  "yellow_dye_from_block",
  <item:minecraft:yellow_dye> * 9,
  [<item:sf5_things:block_of_yellow_dye>]
);






mods.recipestages.Recipes.addShapeless(
  Stage.Black,
  "black_block_from_dye",
  <item:sf5_things:block_of_black_dye> * 1,
  [<item:minecraft:black_dye>, <item:minecraft:black_dye>,<item:minecraft:black_dye>,<item:minecraft:black_dye>,<item:minecraft:black_dye>,<item:minecraft:black_dye>,<item:minecraft:black_dye>,<item:minecraft:black_dye>,<item:minecraft:black_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Blue,
  "blue_block_from_dye",
  <item:sf5_things:block_of_blue_dye> * 1,
  [<item:minecraft:blue_dye>, <item:minecraft:blue_dye>,<item:minecraft:blue_dye>,<item:minecraft:blue_dye>,<item:minecraft:blue_dye>,<item:minecraft:blue_dye>,<item:minecraft:blue_dye>,<item:minecraft:blue_dye>,<item:minecraft:blue_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Brown,
  "brown_block_from_dye",
  <item:sf5_things:block_of_brown_dye> * 1,
  [<item:minecraft:brown_dye>, <item:minecraft:brown_dye>,<item:minecraft:brown_dye>,<item:minecraft:brown_dye>,<item:minecraft:brown_dye>,<item:minecraft:brown_dye>,<item:minecraft:brown_dye>,<item:minecraft:brown_dye>,<item:minecraft:brown_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Cyan,
  "cyan_block_from_dye",
  <item:sf5_things:block_of_cyan_dye> * 1,
  [<item:minecraft:cyan_dye>, <item:minecraft:cyan_dye>,<item:minecraft:cyan_dye>,<item:minecraft:cyan_dye>,<item:minecraft:cyan_dye>,<item:minecraft:cyan_dye>,<item:minecraft:cyan_dye>,<item:minecraft:cyan_dye>,<item:minecraft:cyan_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Gray,
  "gray_block_from_dye",
  <item:sf5_things:block_of_gray_dye> * 1,
  [<item:minecraft:gray_dye>, <item:minecraft:gray_dye>,<item:minecraft:gray_dye>,<item:minecraft:gray_dye>,<item:minecraft:gray_dye>,<item:minecraft:gray_dye>,<item:minecraft:gray_dye>,<item:minecraft:gray_dye>,<item:minecraft:gray_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Green,
  "green_block_from_dye",
  <item:sf5_things:block_of_green_dye> * 1,
  [<item:minecraft:green_dye>, <item:minecraft:green_dye>,<item:minecraft:green_dye>,<item:minecraft:green_dye>,<item:minecraft:green_dye>,<item:minecraft:green_dye>,<item:minecraft:green_dye>,<item:minecraft:green_dye>,<item:minecraft:green_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Light_Blue,
  "light_blue_block_from_dye",
  <item:sf5_things:block_of_light_blue_dye> * 1,
  [<item:minecraft:light_blue_dye>, <item:minecraft:light_blue_dye>,<item:minecraft:light_blue_dye>,<item:minecraft:light_blue_dye>,<item:minecraft:light_blue_dye>,<item:minecraft:light_blue_dye>,<item:minecraft:light_blue_dye>,<item:minecraft:light_blue_dye>,<item:minecraft:light_blue_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Light_Gray,
  "light_gray_block_from_dye",
  <item:sf5_things:block_of_light_gray_dye> * 1,
  [<item:minecraft:light_gray_dye>, <item:minecraft:light_gray_dye>,<item:minecraft:light_gray_dye>,<item:minecraft:light_gray_dye>,<item:minecraft:light_gray_dye>,<item:minecraft:light_gray_dye>,<item:minecraft:light_gray_dye>,<item:minecraft:light_gray_dye>,<item:minecraft:light_gray_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Lime,
  "lime_block_from_dye",
  <item:sf5_things:block_of_lime_dye> * 1,
  [<item:minecraft:lime_dye>, <item:minecraft:lime_dye>,<item:minecraft:lime_dye>,<item:minecraft:lime_dye>,<item:minecraft:lime_dye>,<item:minecraft:lime_dye>,<item:minecraft:lime_dye>,<item:minecraft:lime_dye>,<item:minecraft:lime_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Magenta,
  "magenta_block_from_dye",
  <item:sf5_things:block_of_magenta_dye> * 1,
  [<item:minecraft:magenta_dye>, <item:minecraft:magenta_dye>,<item:minecraft:magenta_dye>,<item:minecraft:magenta_dye>,<item:minecraft:magenta_dye>,<item:minecraft:magenta_dye>,<item:minecraft:magenta_dye>,<item:minecraft:magenta_dye>,<item:minecraft:magenta_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Orange,
  "orange_block_from_dye",
  <item:sf5_things:block_of_orange_dye> * 1,
  [<item:minecraft:orange_dye>, <item:minecraft:orange_dye>,<item:minecraft:orange_dye>,<item:minecraft:orange_dye>,<item:minecraft:orange_dye>,<item:minecraft:orange_dye>,<item:minecraft:orange_dye>,<item:minecraft:orange_dye>,<item:minecraft:orange_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Pink,
  "pink_block_from_dye",
  <item:sf5_things:block_of_pink_dye> * 1,
  [<item:minecraft:pink_dye>, <item:minecraft:pink_dye>,<item:minecraft:pink_dye>,<item:minecraft:pink_dye>,<item:minecraft:pink_dye>,<item:minecraft:pink_dye>,<item:minecraft:pink_dye>,<item:minecraft:pink_dye>,<item:minecraft:pink_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Purple,
  "purple_block_from_dye",
  <item:sf5_things:block_of_purple_dye> * 1,
  [<item:minecraft:purple_dye>, <item:minecraft:purple_dye>,<item:minecraft:purple_dye>,<item:minecraft:purple_dye>,<item:minecraft:purple_dye>,<item:minecraft:purple_dye>,<item:minecraft:purple_dye>,<item:minecraft:purple_dye>,<item:minecraft:purple_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Red,
  "red_block_from_dye",
  <item:sf5_things:block_of_red_dye> * 1,
  [<item:minecraft:red_dye>, <item:minecraft:red_dye>,<item:minecraft:red_dye>,<item:minecraft:red_dye>,<item:minecraft:red_dye>,<item:minecraft:red_dye>,<item:minecraft:red_dye>,<item:minecraft:red_dye>,<item:minecraft:red_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.White,
  "white_block_from_dye",
  <item:sf5_things:block_of_white_dye> * 1,
  [<item:minecraft:white_dye>, <item:minecraft:white_dye>,<item:minecraft:white_dye>,<item:minecraft:white_dye>,<item:minecraft:white_dye>,<item:minecraft:white_dye>,<item:minecraft:white_dye>,<item:minecraft:white_dye>,<item:minecraft:white_dye>]
);
mods.recipestages.Recipes.addShapeless(
  Stage.Yellow,
  "yellow_block_from_dye",
  <item:sf5_things:block_of_yellow_dye> * 1,
  [<item:minecraft:yellow_dye>, <item:minecraft:yellow_dye>,<item:minecraft:yellow_dye>,<item:minecraft:yellow_dye>,<item:minecraft:yellow_dye>,<item:minecraft:yellow_dye>,<item:minecraft:yellow_dye>,<item:minecraft:yellow_dye>,<item:minecraft:yellow_dye>]
);
