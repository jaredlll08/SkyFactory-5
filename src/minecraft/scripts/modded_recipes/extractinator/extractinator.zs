Extractinator.addRecipe("extractinator_potatoes", <item:minecraft:potato>, [
  // Creates a drop with a chance of 1 and uses the default min and max drop count (probably 1)
  new ExtractinatorDrop(<item:minecraft:cobblestone>, 1),
  // Creates ad rop with a chance of 0.5 and a minDropCount of 1 and a maxDropCount of 2
  new ExtractinatorDrop(<item:minecraft:stone>, 0.5, 1, 2),
]);
