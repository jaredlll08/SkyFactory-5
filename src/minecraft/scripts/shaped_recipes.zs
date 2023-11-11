// Treasure Bag Template
craftingTable.addShaped(
  "treasure_bag_template",
  <item:sf5_things:treasure_bag_template>,
  [
    [<item:minecraft:string>, <item:silentgear:template_board>, <item:minecraft:string>],
    [<item:silentgear:template_board>, <tag:items:forge:chests>, <item:silentgear:template_board>],
    [<item:silentgear:template_board>, <item:silentgear:template_board>, <item:silentgear:template_board>]
  ]
);

craftingTable.addShaped(
  "porcelain_clay_crucible",
  <item:sf5stuff:crucible_porcelain_clay>,
  [
    [<item:exnihilosequentia:porcelain_clay>, <item:minecraft:air>, <item:exnihilosequentia:porcelain_clay>],
    [<item:exnihilosequentia:porcelain_clay>, <item:minecraft:air>, <item:exnihilosequentia:porcelain_clay>],
    [<item:exnihilosequentia:porcelain_clay>, <item:exnihilosequentia:porcelain_clay>, <item:exnihilosequentia:porcelain_clay>]
  ]
);


// Dimensional Paintings Mod
craftingTable.remove(<item:dimpaintings:nether_painting>);
craftingTable.remove(<item:dimpaintings:end_painting>);
craftingTable.remove(<item:dimpaintings:overworld_painting>);
craftingTable.addShaped(
  "dimensional_painting_nether",
  <item:dimpaintings:nether_painting>,
  [
    [<item:sf5_things:block_of_red_dye>, <item:sf5_things:block_of_red_dye>, <item:sf5_things:block_of_red_dye>],
    [<item:sf5_things:block_of_purple_dye>, <item:minecraft:painting>, <item:sf5_things:block_of_purple_dye>],
    [<item:sf5_things:block_of_light_gray_dye>, <item:sf5_things:block_of_light_gray_dye>, <item:sf5_things:block_of_light_gray_dye>]
  ]
);

craftingTable.addShaped(
  "dimensional_painting_end",
  <item:dimpaintings:end_painting>,
  [
    [<item:sf5_things:block_of_black_dye>, <item:sf5_things:block_of_cyan_dye>, <item:sf5_things:block_of_black_dye>],
    [<item:sf5_things:block_of_purple_dye>, <item:minecraft:painting>, <item:sf5_things:block_of_purple_dye>],
    [<item:sf5_things:block_of_black_dye>, <item:sf5_things:block_of_cyan_dye>, <item:sf5_things:block_of_black_dye>]
  ]
);

craftingTable.addShaped(
  "dimensional_painting_overworld",
  <item:dimpaintings:overworld_painting>,
  [
    [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_green_dye>],
    [<item:sf5_things:block_of_blue_dye>, <item:minecraft:painting>, <item:sf5_things:block_of_blue_dye>],
    [<item:sf5_things:block_of_yellow_dye>, <item:sf5_things:block_of_yellow_dye>, <item:sf5_things:block_of_yellow_dye>]
  ]
);

// Boats
craftingTable.remove(<item:minecraft:dark_oak_boat>);
craftingTable.remove(<item:minecraft:cherry_boat>);
craftingTable.remove(<item:minecraft:acacia_boat>);
craftingTable.addShaped(
  "boat_brown",
  <item:minecraft:acacia_boat>,
  [
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:colouredstuff:planks_green>, <item:colouredstuff:planks_green>]
  ]
);
craftingTable.addShaped(
  "boat_pink",
  <item:minecraft:cherry_boat>,
  [
    [<item:colouredstuff:planks_pink>, <item:minecraft:air>, <item:colouredstuff:planks_pink>],
    [<item:colouredstuff:planks_pink>, <item:colouredstuff:planks_pink>, <item:colouredstuff:planks_pink>]
  ]
);
craftingTable.addShaped(
  "boat_green",
  <item:minecraft:dark_oak_boat>,
  [
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:planks_brown>, <item:colouredstuff:planks_brown>, <item:colouredstuff:planks_brown>]
  ]
);

craftingTable.addShaped(
  "boat_lime",
  <item:minecraft:spruce_boat>,
  [
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:planks_lime>, <item:colouredstuff:planks_lime>, <item:colouredstuff:planks_lime>]
  ]
);

craftingTable.addShaped(
  "boat_red",
  <item:minecraft:oak_boat>,
  [
    [<item:colouredstuff:planks_red>, <item:minecraft:air>, <item:colouredstuff:planks_red>],
    [<item:colouredstuff:planks_red>, <item:colouredstuff:planks_red>, <item:colouredstuff:planks_red>]
  ]
);

craftingTable.addShaped(
  "boat_purple",
  <item:minecraft:birch_boat>,
  [
    [<item:colouredstuff:planks_purple>, <item:minecraft:air>, <item:colouredstuff:planks_purple>],
    [<item:colouredstuff:planks_purple>, <item:colouredstuff:planks_purple>, <item:colouredstuff:planks_purple>]
  ]
);

craftingTable.addShaped(
  "boat_cyan",
  <item:minecraft:jungle_boat>,
  [
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:planks_cyan>, <item:colouredstuff:planks_cyan>, <item:colouredstuff:planks_cyan>]
  ]
);

craftingTable.addShaped(
  "boat_light_blue",
  <item:minecraft:mangrove_boat>,
  [
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:planks_light_blue>, <item:colouredstuff:planks_light_blue>, <item:colouredstuff:planks_light_blue>]
  ]
);
