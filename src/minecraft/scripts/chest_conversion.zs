// Stages the vanilla chest after the 'brown' stage is obtained
// CONVERSION RECIPE CURRENTLY DOES NOT WORK DUE TO RECIPE STAGES BUG
 mods.recipestages.Recipes.addShapeless(
  Stage.Brown,
  "chest_conversion",
  <item:minecraft:chest>,
  [<tag:items:forge:chests/wooden>]
 );
