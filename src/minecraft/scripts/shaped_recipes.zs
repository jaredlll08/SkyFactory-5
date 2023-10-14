// Recipe to make a Colorless Paintbrush / Golden Watering Can
craftingTable.addShaped(
  "colorless_paintbrush",
  <item:exdeorum:golden_watering_can>.withTag({Fluid: {FluidName: "minecraft:water", Amount: 4000}}),
  [
    [<item:minecraft:air>, <item:colouredstuff:sapling_none>],
    [<item:minecraft:stick>, <item:minecraft:air>]
  ]
);

// Treasure Bag Template
craftingTable.addShaped(
  "treasure_bag_template",
  <item:sf5_things:treasure_bag_template>,
  [
    [<item:minecraft:string>, <item:silentgear:template_board>, <item:minecraft:string>],
    [<item:silentgear:template_board>, <item:sophisticatedstorage:chest>.withTag({mainColor: 9539985, accentColor: 6710886}), <item:silentgear:template_board>],
    [<item:silentgear:template_board>, <item:silentgear:template_board>, <item:silentgear:template_board>]
  ]
);


craftingTable.remove(<item:exdeorum:oak_crucible>);
craftingTable.remove(<item:exdeorum:spruce_crucible>);
craftingTable.remove(<item:exdeorum:birch_crucible>);
craftingTable.remove(<item:exdeorum:jungle_crucible>);
craftingTable.remove(<item:exdeorum:acacia_crucible>);
craftingTable.remove(<item:exdeorum:dark_oak_crucible>);
craftingTable.remove(<item:exdeorum:mangrove_crucible>);
craftingTable.remove(<item:exdeorum:cherry_crucible>);
craftingTable.remove(<item:exdeorum:bamboo_crucible>);
craftingTable.remove(<item:exdeorum:fir_crucible>);
craftingTable.remove(<item:exdeorum:redwood_crucible>);
craftingTable.remove(<item:exdeorum:mahogany_crucible>);
craftingTable.remove(<item:exdeorum:jacaranda_crucible>);
craftingTable.remove(<item:exdeorum:palm_crucible>);
craftingTable.remove(<item:exdeorum:willow_crucible>);
craftingTable.remove(<item:exdeorum:dead_crucible>);
craftingTable.remove(<item:exdeorum:magic_crucible>);
craftingTable.remove(<item:exdeorum:umbran_crucible>);

// SF5 Color Crucibles
craftingTable.addShaped(
  "composting_bin_black",
  <item:sf5stuff:composting_bin_black>,
  [
    [<item:colouredstuff:planks_black>, <item:minecraft:air>, <item:colouredstuff:planks_black>],
    [<item:colouredstuff:planks_black>, <item:minecraft:air>, <item:colouredstuff:planks_black>],
    [<item:colouredstuff:planks_black>, <item:colouredstuff:slab_planks_black>, <item:colouredstuff:planks_black>]
  ]
);
craftingTable.addShaped(
  "composting_bin_blue",
  <item:sf5stuff:composting_bin_blue>,
  [
    [<item:colouredstuff:planks_blue>, <item:minecraft:air>, <item:colouredstuff:planks_blue>],
    [<item:colouredstuff:planks_blue>, <item:minecraft:air>, <item:colouredstuff:planks_blue>],
    [<item:colouredstuff:planks_blue>, <item:colouredstuff:slab_planks_blue>, <item:colouredstuff:planks_blue>]
  ]
);
craftingTable.addShaped(
  "composting_bin_brown",
  <item:sf5stuff:composting_bin_brown>,
  [
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:planks_brown>, <item:colouredstuff:slab_planks_brown>, <item:colouredstuff:planks_brown>]
  ]
);
craftingTable.addShaped(
  "composting_bin_cyan",
  <item:sf5stuff:composting_bin_cyan>,
  [
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:planks_cyan>, <item:colouredstuff:slab_planks_cyan>, <item:colouredstuff:planks_cyan>]
  ]
);
craftingTable.addShaped(
  "composting_bin_gray",
  <item:sf5stuff:composting_bin_gray>,
  [
    [<item:colouredstuff:planks_gray>, <item:minecraft:air>, <item:colouredstuff:planks_gray>],
    [<item:colouredstuff:planks_gray>, <item:minecraft:air>, <item:colouredstuff:planks_gray>],
    [<item:colouredstuff:planks_gray>, <item:colouredstuff:slab_planks_gray>, <item:colouredstuff:planks_gray>]
  ]
);
craftingTable.addShaped(
  "composting_bin_green",
  <item:sf5stuff:composting_bin_green>,
  [
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:colouredstuff:slab_planks_green>, <item:colouredstuff:planks_green>]
  ]
);
craftingTable.addShaped(
  "composting_bin_light_blue",
  <item:sf5stuff:composting_bin_light_blue>,
  [
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:planks_light_blue>, <item:colouredstuff:slab_planks_light_blue>, <item:colouredstuff:planks_light_blue>]
  ]
);
craftingTable.addShaped(
  "composting_bin_light_gray",
  <item:sf5stuff:composting_bin_light_gray>,
  [
    [<item:colouredstuff:planks_light_gray>, <item:minecraft:air>, <item:colouredstuff:planks_light_gray>],
    [<item:colouredstuff:planks_light_gray>, <item:minecraft:air>, <item:colouredstuff:planks_light_gray>],
    [<item:colouredstuff:planks_light_gray>, <item:colouredstuff:slab_planks_light_gray>, <item:colouredstuff:planks_light_gray>]
  ]
);
craftingTable.addShaped(
  "composting_bin_lime",
  <item:sf5stuff:composting_bin_lime>,
  [
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:planks_lime>, <item:colouredstuff:slab_planks_lime>, <item:colouredstuff:planks_lime>]
  ]
);
craftingTable.addShaped(
  "composting_bin_magenta",
  <item:sf5stuff:composting_bin_magenta>,
  [
    [<item:colouredstuff:planks_magenta>, <item:minecraft:air>, <item:colouredstuff:planks_magenta>],
    [<item:colouredstuff:planks_magenta>, <item:minecraft:air>, <item:colouredstuff:planks_magenta>],
    [<item:colouredstuff:planks_magenta>, <item:colouredstuff:slab_planks_magenta>, <item:colouredstuff:planks_magenta>]
  ]
);
craftingTable.addShaped(
  "composting_bin_none",
  <item:sf5stuff:composting_bin_none>,
  [
    [<item:colouredstuff:planks_none>, <item:minecraft:air>, <item:colouredstuff:planks_none>],
    [<item:colouredstuff:planks_none>, <item:minecraft:air>, <item:colouredstuff:planks_none>],
    [<item:colouredstuff:planks_none>, <item:colouredstuff:slab_planks_none>, <item:colouredstuff:planks_none>]
  ]
);
craftingTable.addShaped(
  "composting_bin_orange",
  <item:sf5stuff:composting_bin_orange>,
  [
    [<item:colouredstuff:planks_orange>, <item:minecraft:air>, <item:colouredstuff:planks_orange>],
    [<item:colouredstuff:planks_orange>, <item:minecraft:air>, <item:colouredstuff:planks_orange>],
    [<item:colouredstuff:planks_orange>, <item:colouredstuff:slab_planks_orange>, <item:colouredstuff:planks_orange>]
  ]
);
craftingTable.addShaped(
  "composting_bin_pink",
  <item:sf5stuff:composting_bin_pink>,
  [
    [<item:colouredstuff:planks_pink>, <item:minecraft:air>, <item:colouredstuff:planks_pink>],
    [<item:colouredstuff:planks_pink>, <item:minecraft:air>, <item:colouredstuff:planks_pink>],
    [<item:colouredstuff:planks_pink>, <item:colouredstuff:slab_planks_pink>, <item:colouredstuff:planks_pink>]
  ]
);
craftingTable.addShaped(
  "composting_bin_purple",
  <item:sf5stuff:composting_bin_purple>,
  [
    [<item:colouredstuff:planks_purple>, <item:minecraft:air>, <item:colouredstuff:planks_purple>],
    [<item:colouredstuff:planks_purple>, <item:minecraft:air>, <item:colouredstuff:planks_purple>],
    [<item:colouredstuff:planks_purple>, <item:colouredstuff:slab_planks_purple>, <item:colouredstuff:planks_purple>]
  ]
);
craftingTable.addShaped(
  "composting_bin_red",
  <item:sf5stuff:composting_bin_red>,
  [
    [<item:colouredstuff:planks_red>, <item:minecraft:air>, <item:colouredstuff:planks_red>],
    [<item:colouredstuff:planks_red>, <item:minecraft:air>, <item:colouredstuff:planks_red>],
    [<item:colouredstuff:planks_red>, <item:colouredstuff:slab_planks_red>, <item:colouredstuff:planks_red>]
  ]
);
craftingTable.addShaped(
  "composting_bin_white",
  <item:sf5stuff:composting_bin_white>,
  [
    [<item:colouredstuff:planks_white>, <item:minecraft:air>, <item:colouredstuff:planks_white>],
    [<item:colouredstuff:planks_white>, <item:minecraft:air>, <item:colouredstuff:planks_white>],
    [<item:colouredstuff:planks_white>, <item:colouredstuff:slab_planks_white>, <item:colouredstuff:planks_white>]
  ]
);
craftingTable.addShaped(
  "composting_bin_yellow",
  <item:sf5stuff:composting_bin_yellow>,
  [
    [<item:colouredstuff:planks_yellow>, <item:minecraft:air>, <item:colouredstuff:planks_yellow>],
    [<item:colouredstuff:planks_yellow>, <item:minecraft:air>, <item:colouredstuff:planks_yellow>],
    [<item:colouredstuff:planks_yellow>, <item:colouredstuff:slab_planks_yellow>, <item:colouredstuff:planks_yellow>]
  ]
);












// Crucible Recipes


craftingTable.addShaped(
  "crucible_black",
  <item:sf5stuff:crucible_black>,
  [
    [<item:colouredstuff:planks_black>, <item:minecraft:air>, <item:colouredstuff:planks_black>],
    [<item:colouredstuff:planks_black>, <item:minecraft:air>, <item:colouredstuff:planks_black>],
    [<item:colouredstuff:slab_planks_black>, <item:colouredstuff:slab_planks_black>, <item:colouredstuff:slab_planks_black>]
  ]
);
craftingTable.addShaped(
  "crucible_blue",
  <item:sf5stuff:crucible_blue>,
  [
    [<item:colouredstuff:planks_blue>, <item:minecraft:air>, <item:colouredstuff:planks_blue>],
    [<item:colouredstuff:planks_blue>, <item:minecraft:air>, <item:colouredstuff:planks_blue>],
    [<item:colouredstuff:slab_planks_blue>, <item:colouredstuff:slab_planks_blue>, <item:colouredstuff:slab_planks_blue>]
  ]
);
craftingTable.addShaped(
  "crucible_brown",
  <item:sf5stuff:crucible_brown>,
  [
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:slab_planks_brown>, <item:colouredstuff:slab_planks_brown>, <item:colouredstuff:slab_planks_brown>]
  ]
);
craftingTable.addShaped(
  "crucible_cyan",
  <item:sf5stuff:crucible_cyan>,
  [
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:slab_planks_cyan>, <item:colouredstuff:slab_planks_cyan>, <item:colouredstuff:slab_planks_cyan>]
  ]
);
craftingTable.addShaped(
  "crucible_gray",
  <item:sf5stuff:crucible_gray>,
  [
    [<item:colouredstuff:planks_gray>, <item:minecraft:air>, <item:colouredstuff:planks_gray>],
    [<item:colouredstuff:planks_gray>, <item:minecraft:air>, <item:colouredstuff:planks_gray>],
    [<item:colouredstuff:slab_planks_gray>, <item:colouredstuff:slab_planks_gray>, <item:colouredstuff:slab_planks_gray>]
  ]
);
craftingTable.addShaped(
  "crucible_green",
  <item:sf5stuff:crucible_green>,
  [
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:slab_planks_green>, <item:colouredstuff:slab_planks_green>, <item:colouredstuff:slab_planks_green>]
  ]
);
craftingTable.addShaped(
  "crucible_light_blue",
  <item:sf5stuff:crucible_light_blue>,
  [
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:slab_planks_light_blue>, <item:colouredstuff:slab_planks_light_blue>, <item:colouredstuff:slab_planks_light_blue>]
  ]
);
craftingTable.addShaped(
  "crucible_light_gray",
  <item:sf5stuff:crucible_light_gray>,
  [
    [<item:colouredstuff:planks_light_gray>, <item:minecraft:air>, <item:colouredstuff:planks_light_gray>],
    [<item:colouredstuff:planks_light_gray>, <item:minecraft:air>, <item:colouredstuff:planks_light_gray>],
    [<item:colouredstuff:slab_planks_light_gray>, <item:colouredstuff:slab_planks_light_gray>, <item:colouredstuff:slab_planks_light_gray>]
  ]
);
craftingTable.addShaped(
  "crucible_lime",
  <item:sf5stuff:crucible_lime>,
  [
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:slab_planks_lime>, <item:colouredstuff:slab_planks_lime>, <item:colouredstuff:slab_planks_lime>]
  ]
);
craftingTable.addShaped(
  "crucible_magenta",
  <item:sf5stuff:crucible_magenta>,
  [
    [<item:colouredstuff:planks_magenta>, <item:minecraft:air>, <item:colouredstuff:planks_magenta>],
    [<item:colouredstuff:planks_magenta>, <item:minecraft:air>, <item:colouredstuff:planks_magenta>],
    [<item:colouredstuff:slab_planks_magenta>, <item:colouredstuff:slab_planks_magenta>, <item:colouredstuff:slab_planks_magenta>]
  ]
);
craftingTable.addShaped(
  "crucible_none",
  <item:sf5stuff:crucible_none>,
  [
    [<item:colouredstuff:planks_none>, <item:minecraft:air>, <item:colouredstuff:planks_none>],
    [<item:colouredstuff:planks_none>, <item:minecraft:air>, <item:colouredstuff:planks_none>],
    [<item:colouredstuff:slab_planks_none>, <item:colouredstuff:slab_planks_none>, <item:colouredstuff:slab_planks_none>]
  ]
);
craftingTable.addShaped(
  "crucible_pink",
  <item:sf5stuff:crucible_pink>,
  [
    [<item:colouredstuff:planks_pink>, <item:minecraft:air>, <item:colouredstuff:planks_pink>],
    [<item:colouredstuff:planks_pink>, <item:minecraft:air>, <item:colouredstuff:planks_pink>],
    [<item:colouredstuff:slab_planks_pink>, <item:colouredstuff:slab_planks_pink>, <item:colouredstuff:slab_planks_pink>]
  ]
);
craftingTable.addShaped(
  "crucible_purple",
  <item:sf5stuff:crucible_purple>,
  [
    [<item:colouredstuff:planks_purple>, <item:minecraft:air>, <item:colouredstuff:planks_purple>],
    [<item:colouredstuff:planks_purple>, <item:minecraft:air>, <item:colouredstuff:planks_purple>],
    [<item:colouredstuff:slab_planks_purple>, <item:colouredstuff:slab_planks_purple>, <item:colouredstuff:slab_planks_purple>]
  ]
);
craftingTable.addShaped(
  "crucible_red",
  <item:sf5stuff:crucible_red>,
  [
    [<item:colouredstuff:planks_red>, <item:minecraft:air>, <item:colouredstuff:planks_red>],
    [<item:colouredstuff:planks_red>, <item:minecraft:air>, <item:colouredstuff:planks_red>],
    [<item:colouredstuff:slab_planks_red>, <item:colouredstuff:slab_planks_red>, <item:colouredstuff:slab_planks_red>]
  ]
);
craftingTable.addShaped(
  "crucible_white",
  <item:sf5stuff:crucible_white>,
  [
    [<item:colouredstuff:planks_white>, <item:minecraft:air>, <item:colouredstuff:planks_white>],
    [<item:colouredstuff:planks_white>, <item:minecraft:air>, <item:colouredstuff:planks_white>],
    [<item:colouredstuff:slab_planks_white>, <item:colouredstuff:slab_planks_white>, <item:colouredstuff:slab_planks_white>]
  ]
);
craftingTable.addShaped(
  "crucible_yellow",
  <item:sf5stuff:crucible_yellow>,
  [
    [<item:colouredstuff:planks_yellow>, <item:minecraft:air>, <item:colouredstuff:planks_yellow>],
    [<item:colouredstuff:planks_yellow>, <item:minecraft:air>, <item:colouredstuff:planks_yellow>],
    [<item:colouredstuff:slab_planks_yellow>, <item:colouredstuff:slab_planks_yellow>, <item:colouredstuff:slab_planks_yellow>]
  ]
);
craftingTable.addShaped(
  "crucible_porcelain_clay",
  <item:sf5stuff:crucible_porcelain_clay>,
  [
    [<item:exdeorum:porcelain_clay_ball>, <item:minecraft:air>, <item:exdeorum:porcelain_clay_ball>],
    [<item:exdeorum:porcelain_clay_ball>, <item:minecraft:air>, <item:exdeorum:porcelain_clay_ball>],
    [<item:exdeorum:porcelain_clay_ball>, <item:exdeorum:porcelain_clay_ball>, <item:exdeorum:porcelain_clay_ball>]
  ]
);
