
// Recipe to make a Colorless Paintbrush / Golden Watering Can
craftingTable.addShaped(
  "colorless_paintbrush",
  <item:exdeorum:golden_watering_can>.withTag({Fluid: {FluidName: "minecraft:water", Amount: 4000}}),
  [
    [<item:minecraft:air>, <item:colouredstuff:sapling_none>],
    [<item:minecraft:stick>, <item:minecraft:air>]
  ]
);

