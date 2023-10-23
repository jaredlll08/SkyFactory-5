// Script for obtaining base items/resources from dyes

// Grass seeds
craftingTable.addShapeless(
  "grass_seeds_from_dye",
  <item:exdeorum:grass_seeds>,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/brown>]
);

// Sugarcane
craftingTable.addShapeless(
  "sugarcane_from_dye",
  <item:minecraft:sugar_cane>,
  [<tag:items:forge:dyes/lime>, <tag:items:forge:dyes/lime>, <tag:items:forge:dyes/white>,]
);

// Kelp
craftingTable.addShapeless(
  "kelp_from_dye",
  <item:minecraft:kelp> * 2,
  [<tag:items:forge:dyes/lime>, <tag:items:forge:dyes/green>, <tag:items:forge:dyes/green>,]
);

// Vines
craftingTable.addShapeless(
  "vines_from_dye",
  <item:minecraft:vine> * 2,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/green>, <tag:items:forge:dyes/green>,]
);
