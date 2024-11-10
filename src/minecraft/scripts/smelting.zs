
// Smelting Recipes

// Smelts Slimeballs to Dry Rubber
furnace.addRecipe(
  "slime_to_dry_rubber_smelting",
  <item:industrialforegoing:tinydryrubber>,
  <tag:items:forge:slimeballs>,
  0.15,
  100
);

// Smelts Seeds to Black Seed
furnace.addRecipe(
  "color_seeds_to_black_seed_smelting",
  <item:mysticalagriculture:black_crop_seeds>,
  <tag:items:skyfactory_5:color_seeds>,
  0.15,
  100
);

// Block of Meat to Charcoal
furnace.addRecipe(
  "block_of_meat_to_charcoal",
  <item:thermal:charcoal_block>,
  <item:sf5_things:block_of_meat>,
  0.15,
  100
);

// Flux Networks Flux Dust
furnace.addRecipe(
  "redstone_to_flux_dust",
  <item:fluxnetworks:flux_dust>,
  <item:minecraft:redstone>,
  0.15,
  100
);


// Makes items burnable
<item:minecraft:black_dye>.burnTime = 400;
