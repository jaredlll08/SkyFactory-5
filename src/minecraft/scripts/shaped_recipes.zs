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





// Treasure Bag Recipes


// Black Bag
craftingTable.addShaped(
  "treasure_bag_black",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/black", BagType: "treasurebags:black"}}),
  [
    [<item:minecraft:black_wool>, <item:minecraft:black_wool>, <item:minecraft:black_wool>],
    [<item:minecraft:black_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:black_wool>],
    [<item:minecraft:black_wool>, <item:minecraft:black_wool>, <item:minecraft:black_wool>]
  ]
);
// Blue Bag
craftingTable.addShaped(
  "treasure_bag_blue",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/blue", BagType: "treasurebags:blue"}}),
  [
    [<item:minecraft:blue_wool>, <item:minecraft:blue_wool>, <item:minecraft:blue_wool>],
    [<item:minecraft:blue_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:blue_wool>],
    [<item:minecraft:blue_wool>, <item:minecraft:blue_wool>, <item:minecraft:blue_wool>]
  ]
);
// Brown Bag
craftingTable.addShaped(
  "treasure_bag_brown",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/brown", BagType: "treasurebags:brown"}}),
  [
    [<item:minecraft:brown_wool>, <item:minecraft:brown_wool>, <item:minecraft:brown_wool>],
    [<item:minecraft:brown_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:brown_wool>],
    [<item:minecraft:brown_wool>, <item:minecraft:brown_wool>, <item:minecraft:brown_wool>]
  ]
);
// Cyan Bag
craftingTable.addShaped(
  "treasure_bag_cyan",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/cyan", BagType: "treasurebags:cyan"}}),
  [
    [<item:minecraft:cyan_wool>, <item:minecraft:cyan_wool>, <item:minecraft:cyan_wool>],
    [<item:minecraft:cyan_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:cyan_wool>],
    [<item:minecraft:cyan_wool>, <item:minecraft:cyan_wool>, <item:minecraft:cyan_wool>]
  ]
);
// Gray Bag
craftingTable.addShaped(
  "treasure_bag_gray",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/gray", BagType: "treasurebags:gray"}}),
  [
    [<item:minecraft:gray_wool>, <item:minecraft:gray_wool>, <item:minecraft:gray_wool>],
    [<item:minecraft:gray_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:gray_wool>],
    [<item:minecraft:gray_wool>, <item:minecraft:gray_wool>, <item:minecraft:gray_wool>]
  ]
);
// Green Bag
craftingTable.addShaped(
  "treasure_bag_green",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/green", BagType: "treasurebags:green"}}),
  [
    [<item:minecraft:green_wool>, <item:minecraft:green_wool>, <item:minecraft:green_wool>],
    [<item:minecraft:green_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:green_wool>],
    [<item:minecraft:green_wool>, <item:minecraft:green_wool>, <item:minecraft:green_wool>]
  ]
);
// Light_blue Bag
craftingTable.addShaped(
  "treasure_bag_light_blue",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/light_blue", BagType: "treasurebags:light_blue"}}),
  [
    [<item:minecraft:light_blue_wool>, <item:minecraft:light_blue_wool>, <item:minecraft:light_blue_wool>],
    [<item:minecraft:light_blue_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:light_blue_wool>],
    [<item:minecraft:light_blue_wool>, <item:minecraft:light_blue_wool>, <item:minecraft:light_blue_wool>]
  ]
);
// Light_gray Bag
craftingTable.addShaped(
  "treasure_bag_light_gray",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/light_gray", BagType: "treasurebags:light_gray"}}),
  [
    [<item:minecraft:light_gray_wool>, <item:minecraft:light_gray_wool>, <item:minecraft:light_gray_wool>],
    [<item:minecraft:light_gray_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:light_gray_wool>],
    [<item:minecraft:light_gray_wool>, <item:minecraft:light_gray_wool>, <item:minecraft:light_gray_wool>]
  ]
);
// Lime Bag
craftingTable.addShaped(
  "treasure_bag_lime",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/lime", BagType: "treasurebags:lime"}}),
  [
    [<item:minecraft:lime_wool>, <item:minecraft:lime_wool>, <item:minecraft:lime_wool>],
    [<item:minecraft:lime_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:lime_wool>],
    [<item:minecraft:lime_wool>, <item:minecraft:lime_wool>, <item:minecraft:lime_wool>]
  ]
);
// Magenta Bag
craftingTable.addShaped(
  "treasure_bag_magenta",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/magenta", BagType: "treasurebags:magenta"}}),
  [
    [<item:minecraft:magenta_wool>, <item:minecraft:magenta_wool>, <item:minecraft:magenta_wool>],
    [<item:minecraft:magenta_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:magenta_wool>],
    [<item:minecraft:magenta_wool>, <item:minecraft:magenta_wool>, <item:minecraft:magenta_wool>]
  ]
);
// Orange Bag
craftingTable.addShaped(
  "treasure_bag_orange",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/orange", BagType: "treasurebags:orange"}}),
  [
    [<item:minecraft:orange_wool>, <item:minecraft:orange_wool>, <item:minecraft:orange_wool>],
    [<item:minecraft:orange_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:orange_wool>],
    [<item:minecraft:orange_wool>, <item:minecraft:orange_wool>, <item:minecraft:orange_wool>]
  ]
);
// Pink Bag
craftingTable.addShaped(
  "treasure_bag_pink",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/pink", BagType: "treasurebags:pink"}}),
  [
    [<item:minecraft:pink_wool>, <item:minecraft:pink_wool>, <item:minecraft:pink_wool>],
    [<item:minecraft:pink_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:pink_wool>],
    [<item:minecraft:pink_wool>, <item:minecraft:pink_wool>, <item:minecraft:pink_wool>]
  ]
);
// Purple Bag
craftingTable.addShaped(
  "treasure_bag_purple",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/purple", BagType: "treasurebags:purple"}}),
  [
    [<item:minecraft:purple_wool>, <item:minecraft:purple_wool>, <item:minecraft:purple_wool>],
    [<item:minecraft:purple_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:purple_wool>],
    [<item:minecraft:purple_wool>, <item:minecraft:purple_wool>, <item:minecraft:purple_wool>]
  ]
);
// Red Bag
craftingTable.addShaped(
  "treasure_bag_red",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/red", BagType: "treasurebags:red"}}),
  [
    [<item:minecraft:red_wool>, <item:minecraft:red_wool>, <item:minecraft:red_wool>],
    [<item:minecraft:red_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:red_wool>],
    [<item:minecraft:red_wool>, <item:minecraft:red_wool>, <item:minecraft:red_wool>]
  ]
);
// White Bag
craftingTable.addShaped(
  "treasure_bag_white",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/white", BagType: "treasurebags:white"}}),
  [
    [<item:minecraft:white_wool>, <item:minecraft:white_wool>, <item:minecraft:white_wool>],
    [<item:minecraft:white_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:white_wool>],
    [<item:minecraft:white_wool>, <item:minecraft:white_wool>, <item:minecraft:white_wool>]
  ]
);
// Yellow Bag
craftingTable.addShaped(
  "treasure_bag_yellow",
  <item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/yellow", BagType: "treasurebags:yellow"}}),
  [
    [<item:minecraft:yellow_wool>, <item:minecraft:yellow_wool>, <item:minecraft:yellow_wool>],
    [<item:minecraft:yellow_wool>, <item:sf5_things:treasure_bag_template>, <item:minecraft:yellow_wool>],
    [<item:minecraft:yellow_wool>, <item:minecraft:yellow_wool>, <item:minecraft:yellow_wool>]
  ]
);
