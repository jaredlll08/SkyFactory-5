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

// Dimensional Paintings Mod
craftingTable.remove(<item:dimpaintings:nether_painting>);
craftingTable.remove(<item:dimpaintings:end_painting>);
craftingTable.remove(<item:dimpaintings:overworld_painting>);
craftingTable.addShaped(
  "dimensional_painting_nether",
  <item:dimpaintings:nether_painting>,
  [
    [<item:sf5_things:block_of_red_dye>, <item:xercapaint:item_palette>, <item:sf5_things:block_of_red_dye>],
    [<item:sf5_things:block_of_purple_dye>, <item:minecraft:painting>, <item:sf5_things:block_of_purple_dye>],
    [<item:sf5_things:block_of_light_gray_dye>, <item:minecraft:brush>, <item:sf5_things:block_of_light_gray_dye>]
  ]
);

craftingTable.addShaped(
  "dimensional_painting_end",
  <item:dimpaintings:end_painting>,
  [
    [<item:sf5_things:block_of_black_dye>, <item:xercapaint:item_palette>, <item:sf5_things:block_of_black_dye>],
    [<item:sf5_things:block_of_purple_dye>, <item:minecraft:painting>, <item:sf5_things:block_of_purple_dye>],
    [<item:sf5_things:block_of_black_dye>, <item:minecraft:brush>, <item:sf5_things:block_of_black_dye>]
  ]
);

craftingTable.addShaped(
  "dimensional_painting_overworld",
  <item:dimpaintings:overworld_painting>,
  [
    [<item:sf5_things:block_of_green_dye>, <item:xercapaint:item_palette>, <item:sf5_things:block_of_green_dye>],
    [<item:sf5_things:block_of_blue_dye>, <item:minecraft:painting>, <item:sf5_things:block_of_blue_dye>],
    [<item:sf5_things:block_of_yellow_dye>, <item:minecraft:brush>, <item:sf5_things:block_of_yellow_dye>]
  ]
);


// Xer Can Paint

craftingTable.addShaped(
  "xercapaint_palette",
  <item:xercapaint:item_palette>,
  [
    [<item:minecraft:air>, <tag:items:minecraft:wool>, <item:minecraft:air>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
);


// Fixes recipe conflict between Builders Wands and Pizzacraft Peels
craftingTable.remove(<item:pizzacraft:stone_pizza_peel>);
craftingTable.remove(<item:pizzacraft:iron_pizza_peel>);
craftingTable.remove(<item:pizzacraft:golden_pizza_peel>);
craftingTable.remove(<item:pizzacraft:diamond_pizza_peel>);

craftingTable.addShaped(
  "pizzacraft_stone_peel",
  <item:pizzacraft:stone_pizza_peel>,
  [
    [<item:minecraft:air>, <tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <tag:items:forge:cobblestone>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
  ]
);
craftingTable.addShaped(
  "pizzacraft_iron_peel",
  <item:pizzacraft:iron_pizza_peel>,
  [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:iron_ingot>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
  ]
);
craftingTable.addShaped(
  "pizzacraft_golden_peel",
  <item:pizzacraft:golden_pizza_peel>,
  [
    [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:gold_ingot>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
  ]
);
craftingTable.addShaped(
  "pizzacraft_diamond_peel",
  <item:pizzacraft:diamond_pizza_peel>,
  [
    [<item:minecraft:air>, <item:minecraft:diamond>, <item:minecraft:diamond>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:diamond>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
  ]
);

// Fixes recipe conflict between ars nouveau and spelled books
craftingTable.addShaped(
  "spelled_book",
  <item:spelled:spell_book>,
  [
    [<item:minecraft:lapis_lazuli>, <item:minecraft:book>, <item:minecraft:lapis_lazuli>]
  ]
);

// Changes the Mystical Agriculture Infusion Crystal recipe to make the Master Crystal instead
craftingTable.remove(<item:mysticalagriculture:infusion_crystal>);
craftingTable.remove(<item:mysticalagriculture:master_infusion_crystal>);

craftingTable.addShaped(
  "master_infusion_crystal",
  <item:mysticalagriculture:master_infusion_crystal>,
  [
    [<item:mysticalagriculture:inferium_essence>, <item:mysticalagriculture:prosperity_shard>, <item:mysticalagriculture:inferium_essence>],
    [<item:mysticalagriculture:prosperity_shard>, <item:minecraft:diamond>, <item:mysticalagriculture:prosperity_shard>],
    [<item:mysticalagriculture:inferium_essence>, <item:mysticalagriculture:prosperity_shard>, <item:mysticalagriculture:inferium_essence>]
  ]
);


// I don't know who made the original recipe that 4 obsidian plus a water bucket makes
// 1 crying obsidian. But I do think they wanted people to cry in real life when making that recipe.
// It's outrageous, it's egregious, and preposterous!
craftingTable.remove(<item:minecraft:crying_obsidian>);

craftingTable.addShaped(
  "better_crying_obsidian",
  <item:minecraft:crying_obsidian> * 4,
  [
    [<item:minecraft:air>, <item:minecraft:obsidian>, <item:minecraft:air>],
    [<item:minecraft:obsidian>, <item:minecraft:water_bucket>, <item:minecraft:obsidian>],
    [<item:minecraft:air>, <item:minecraft:obsidian>, <item:minecraft:air>]
  ]
);

// Vanilla Bundle item
craftingTable.addShaped(
  "bundle_recipe",
  <item:minecraft:bundle> * 1,
  [
    [<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>],
    [<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:leather>],
    [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]
  ]
);

