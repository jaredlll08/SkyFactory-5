// Stages the vanilla chest after the 'brown' stage is obtained
// CONVERSION RECIPE CURRENTLY DOES NOT WORK DUE TO RECIPE STAGES BUG
 mods.recipestages.Recipes.addShapeless(
  Stage.Brown,
  "chest_conversion",
  <item:minecraft:chest>,
  [<tag:items:forge:chests/wooden>]
 );


// NOTE FOR NECRON THIS RECIPE NEEDS TO BE DONE FOR EVERY COLOR
// Green Planks make Green Chest
    craftingTable.addShaped(
  "green_chest_shaped",
  <item:sophisticatedstorage:chest>.withTag({mainColor: 1466134, accentColor: 6710886}),
  [
    [<item:colouredstuff:planks_green>, <item:colouredstuff:planks_green>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:colouredstuff:planks_green>, <item:colouredstuff:planks_green>],
  ]
);

// Colorless Planks make Colorless Chest
    craftingTable.addShaped(
  "colorless_chest_shaped",
  <item:sophisticatedstorage:chest>.withTag({mainColor: 9539985, accentColor: 6710886}),
  [
    [<item:colouredstuff:planks_none>, <item:colouredstuff:planks_none>, <item:colouredstuff:planks_none>],
    [<item:colouredstuff:planks_none>, <item:minecraft:air>, <item:colouredstuff:planks_none>],
    [<item:colouredstuff:planks_none>, <item:colouredstuff:planks_none>, <item:colouredstuff:planks_none>],
  ]
);








// LIST OF IDs FOR ALL CHEST IDs NEEDING TO BE USED
// sophisticatedstorage:chest{accentColor:16383998,mainColor:16383998}
// sophisticatedstorage:chest{accentColor:16351261,mainColor:16351261}
// sophisticatedstorage:chest{accentColor:13061821,mainColor:13061821}
// sophisticatedstorage:chest{accentColor:3847130,mainColor:3847130}
// sophisticatedstorage:chest{accentColor:16701501,mainColor:16701501}
// sophisticatedstorage:chest{accentColor:8439583,mainColor:8439583}
// sophisticatedstorage:chest{accentColor:15961002,mainColor:15961002}
// sophisticatedstorage:chest{accentColor:4673362,mainColor:4673362}
// sophisticatedstorage:chest{accentColor:10329495,mainColor:10329495}
// sophisticatedstorage:chest{accentColor:1481884,mainColor:1481884}
// sophisticatedstorage:chest{accentColor:8991416,mainColor:8991416}
// sophisticatedstorage:chest{accentColor:3949738,mainColor:3949738}
// sophisticatedstorage:chest{accentColor:8606770,mainColor:8606770}
// sophisticatedstorage:chest{accentColor:6192150,mainColor:6192150}
// sophisticatedstorage:chest{accentColor:11546150,mainColor:11546150}
// sophisticatedstorage:chest{accentColor:1908001,mainColor:1908001}
