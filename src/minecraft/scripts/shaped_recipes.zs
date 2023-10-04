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
