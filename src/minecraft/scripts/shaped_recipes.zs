// Recipe to make a Colorless Paintbrush / Golden Watering Can
craftingTable.addShaped(
  "colorless_paintbrush",
  <item:exdeorum:golden_watering_can>.withTag({Fluid: {FluidName: "minecraft:water", Amount: 4000}}),
  [
    [<item:minecraft:air>, <item:colouredstuff:sapling_none>],
    [<item:minecraft:stick>, <item:minecraft:air>]
  ]
);


// NOTE TO NECRON NEED TO GENERATE RECIPES FOR EVERY STICK COLOR FROM COLOR PLANKS BUT ALSO NEED TO GENERATE ALL THE STICKS FIRST IN JSON THINGS

craftingTable.addShaped(
  "green_stick",
  <item:sf5_things:green_stick> * 4,
  [
    [<item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>]
  ]
);

craftingTable.addShaped(
  "colorless_stick",
  <item:sf5_things:colorless_stick> * 4,
  [
    [<item:colouredstuff:planks_none>],
    [<item:colouredstuff:planks_none>]
  ]
);

