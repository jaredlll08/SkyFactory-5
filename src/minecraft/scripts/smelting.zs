
// Smelting Recipes

// Smelts Slimeballs to Dry Rubber
furnace.addJsonRecipe("slime_to_dry_rubber_smelting", {
 ingredient: <tag:items:forge:slimeballs>,
 result: <item:industrialforegoing:tinydryrubber>.registryName,
 experience: 0.15 as float,
 cookingtime:100
 });

// Smelts Seeds to Black Seed
furnace.addJsonRecipe("color_seeds_to_black_seed_smelting", {
 ingredient: <tag:items:skyfactory_5:color_seeds>,
 result: <item:mysticalagriculture:black_crop_seeds>.registryName,
 experience: 0.15 as float,
 cookingtime:100
 });
