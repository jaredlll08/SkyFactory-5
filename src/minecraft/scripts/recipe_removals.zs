// Removes vanilla Crafting Table and Chest recipes so
// we can implement the color versions

craftingTable.removeByName("minecraft:chest");

// NEED TO FIND RECIPE NAME FOR VANILLA CRAFTING TABLE RECIPE AND ADD
// craftingTable.removeByName("minecraft:crafting_table");



// Removes recipes for Ex Deorum items
craftingTable.removeByModid("exdeorum");
// craftingTable.removeByName("exdeorum:unfired_porcelain_crucible");
// craftingTable.removeByName("exdeorum:porcelain_crucible");

// Porcelain Clay Recipe
craftingTable.addShapeless(
  "porcelain_clay_shapeless",
  <item:exdeorum:porcelain_clay_ball>,
  [<item:minecraft:clay_ball>, <item:minecraft:bone_meal>]
);



