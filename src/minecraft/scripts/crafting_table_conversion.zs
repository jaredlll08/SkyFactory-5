// Example scripts for using gamestages with recipes
// mods.recipestages.Recipes.setRecipeStage("test_stage", <item:minecraft:stone_hoe>);



// Adds a recipe to convert any ColourfulStuff Crafting Table into a vanilla Crafting Table
// Currently, for some unknown reason it only works in certain tables and not the vanilla table
// Makes sense and is dumb.
mods.recipestages.Recipes.addShapeless("colorless", "crafting_table_conversion", <item:minecraft:crafting_table>,
[<tag:items:skyfactory_5:coloured_crafting_tables>]);

// Stages the vanilla crafting table after the 'brown' stage is obtained
mods.recipestages.Recipes.setRecipeStage("brown", <item:minecraft:crafting_table>);


mods.recipestages.Recipes.addShaped("colorless", "colorless_crafting_table", <item:colouredstuff:crafting_table_none>,
[[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>],[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);
