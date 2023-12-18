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


// Ex Nihilo Barrel Recipes
craftingTable.addShaped(
  "dark_oak_barrel_black",
  <item:exnihilosequentia:dark_oak_barrel> * 1,
  [
    [<item:colouredstuff:planks_black>, <item:minecraft:air>, <item:colouredstuff:planks_black>],
    [<item:colouredstuff:planks_black>, <item:minecraft:air>, <item:colouredstuff:planks_black>],
    [<item:colouredstuff:planks_black>, <item:colouredstuff:slab_planks_black>, <item:colouredstuff:planks_black>]
  ]
);
craftingTable.addShaped(
  "jungle_barrel_blue",
  <item:exnihilosequentia:jungle_barrel> * 1,
  [
    [<item:colouredstuff:planks_blue>, <item:minecraft:air>, <item:colouredstuff:planks_blue>],
    [<item:colouredstuff:planks_blue>, <item:minecraft:air>, <item:colouredstuff:planks_blue>],
    [<item:colouredstuff:planks_blue>, <item:colouredstuff:slab_planks_blue>, <item:colouredstuff:planks_blue>]
  ]
);
craftingTable.addShaped(
  "mangrove_barrel_brown",
  <item:exnihilosequentia:mangrove_barrel> * 1,
  [
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:planks_brown>, <item:colouredstuff:slab_planks_brown>, <item:colouredstuff:planks_brown>]
  ]
);
craftingTable.addShaped(
  "oak_barrel_cyan",
  <item:exnihilosequentia:oak_barrel> * 1,
  [
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:planks_cyan>, <item:colouredstuff:slab_planks_cyan>, <item:colouredstuff:planks_cyan>]
  ]
);
craftingTable.addShaped(
  "acacia_barrel_gray",
  <item:exnihilosequentia:acacia_barrel> * 1,
  [
    [<item:colouredstuff:planks_gray>, <item:minecraft:air>, <item:colouredstuff:planks_gray>],
    [<item:colouredstuff:planks_gray>, <item:minecraft:air>, <item:colouredstuff:planks_gray>],
    [<item:colouredstuff:planks_gray>, <item:colouredstuff:slab_planks_gray>, <item:colouredstuff:planks_gray>]
  ]
);
craftingTable.addShaped(
  "bamboo_barrel_green",
  <item:exnihilosequentia:bamboo_barrel> * 1,
  [
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:colouredstuff:slab_planks_green>, <item:colouredstuff:planks_green>]
  ]
);
craftingTable.addShaped(
  "birch_barrel_light_blue",
  <item:exnihilosequentia:birch_barrel> * 1,
  [
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:planks_light_blue>, <item:colouredstuff:slab_planks_light_blue>, <item:colouredstuff:planks_light_blue>]
  ]
);
craftingTable.addShaped(
  "cherry_barrel_light_gray",
  <item:exnihilosequentia:cherry_barrel> * 1,
  [
    [<item:colouredstuff:planks_light_gray>, <item:minecraft:air>, <item:colouredstuff:planks_light_gray>],
    [<item:colouredstuff:planks_light_gray>, <item:minecraft:air>, <item:colouredstuff:planks_light_gray>],
    [<item:colouredstuff:planks_light_gray>, <item:colouredstuff:slab_planks_light_gray>, <item:colouredstuff:planks_light_gray>]
  ]
);
craftingTable.addShaped(
  "spruce_barrel_lime",
  <item:exnihilosequentia:spruce_barrel> * 1,
  [
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:planks_lime>, <item:colouredstuff:slab_planks_lime>, <item:colouredstuff:planks_lime>]
  ]
);
craftingTable.addShaped(
  "crimson_barrel_magenta",
  <item:exnihilosequentia:crimson_barrel> * 1,
  [
    [<item:colouredstuff:planks_magenta>, <item:minecraft:air>, <item:colouredstuff:planks_magenta>],
    [<item:colouredstuff:planks_magenta>, <item:minecraft:air>, <item:colouredstuff:planks_magenta>],
    [<item:colouredstuff:planks_magenta>, <item:colouredstuff:slab_planks_magenta>, <item:colouredstuff:planks_magenta>]
  ]
);
craftingTable.addShaped(
  "warped_barrel_orange",
  <item:exnihilosequentia:warped_barrel> * 1,
  [
    [<item:colouredstuff:planks_orange>, <item:minecraft:air>, <item:colouredstuff:planks_orange>],
    [<item:colouredstuff:planks_orange>, <item:minecraft:air>, <item:colouredstuff:planks_orange>],
    [<item:colouredstuff:planks_orange>, <item:colouredstuff:slab_planks_orange>, <item:colouredstuff:planks_orange>]
  ]
);
craftingTable.addShaped(
  "stone_barrel_recipe",
  <item:exnihilosequentia:stone_barrel> * 1,
  [
    [<item:minecraft:stone>, <item:minecraft:air>, <item:minecraft:stone>],
    [<item:minecraft:stone>, <item:minecraft:air>, <item:minecraft:stone>],
    [<item:minecraft:stone>, <item:minecraft:stone>, <item:minecraft:stone>]
  ]
);

// Ex Nihilo Crucible Recipes
craftingTable.addShaped(
  "acacia_crucible_black",
  <item:exnihilosequentia:acacia_crucible> * 1,
  [
    [<item:colouredstuff:planks_black>, <item:minecraft:air>, <item:colouredstuff:planks_black>],
    [<item:colouredstuff:planks_black>, <item:minecraft:air>, <item:colouredstuff:planks_black>],
    [<item:colouredstuff:planks_black>, <item:colouredstuff:planks_black>, <item:colouredstuff:planks_black>]
  ]
);
craftingTable.addShaped(
  "bamboo_crucible_blue",
  <item:exnihilosequentia:bamboo_crucible> * 1,
  [
    [<item:colouredstuff:planks_blue>, <item:minecraft:air>, <item:colouredstuff:planks_blue>],
    [<item:colouredstuff:planks_blue>, <item:minecraft:air>, <item:colouredstuff:planks_blue>],
    [<item:colouredstuff:planks_blue>, <item:colouredstuff:planks_blue>, <item:colouredstuff:planks_blue>]
  ]
);
craftingTable.addShaped(
  "birch_crucible_brown",
  <item:exnihilosequentia:birch_crucible> * 1,
  [
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:planks_brown>, <item:colouredstuff:planks_brown>, <item:colouredstuff:planks_brown>]
  ]
);
craftingTable.addShaped(
  "cherry_crucible_cyan",
  <item:exnihilosequentia:cherry_crucible> * 1,
  [
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:planks_cyan>, <item:colouredstuff:planks_cyan>, <item:colouredstuff:planks_cyan>]
  ]
);
craftingTable.addShaped(
  "dark_oak_crucible_gray",
  <item:exnihilosequentia:dark_oak_crucible> * 1,
  [
    [<item:colouredstuff:planks_gray>, <item:minecraft:air>, <item:colouredstuff:planks_gray>],
    [<item:colouredstuff:planks_gray>, <item:minecraft:air>, <item:colouredstuff:planks_gray>],
    [<item:colouredstuff:planks_gray>, <item:colouredstuff:planks_gray>, <item:colouredstuff:planks_gray>]
  ]
);
craftingTable.addShaped(
  "jungle_crucible_green",
  <item:exnihilosequentia:jungle_crucible> * 1,
  [
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:colouredstuff:planks_green>, <item:colouredstuff:planks_green>]
  ]
);
craftingTable.addShaped(
  "mangrove_crucible_light_blue",
  <item:exnihilosequentia:mangrove_crucible> * 1,
  [
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:planks_light_blue>, <item:colouredstuff:planks_light_blue>, <item:colouredstuff:planks_light_blue>]
  ]
);
craftingTable.addShaped(
  "oak_crucible_light_gray",
  <item:exnihilosequentia:oak_crucible> * 1,
  [
    [<item:colouredstuff:planks_light_gray>, <item:minecraft:air>, <item:colouredstuff:planks_light_gray>],
    [<item:colouredstuff:planks_light_gray>, <item:minecraft:air>, <item:colouredstuff:planks_light_gray>],
    [<item:colouredstuff:planks_light_gray>, <item:colouredstuff:planks_light_gray>, <item:colouredstuff:planks_light_gray>]
  ]
);
craftingTable.addShaped(
  "spruce_crucible_lime",
  <item:exnihilosequentia:spruce_crucible> * 1,
  [
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:planks_lime>, <item:colouredstuff:planks_lime>, <item:colouredstuff:planks_lime>]
  ]
);
craftingTable.addShaped(
  "crimson_crucible_magenta",
  <item:exnihilosequentia:crimson_crucible> * 1,
  [
    [<item:colouredstuff:planks_magenta>, <item:minecraft:air>, <item:colouredstuff:planks_magenta>],
    [<item:colouredstuff:planks_magenta>, <item:minecraft:air>, <item:colouredstuff:planks_magenta>],
    [<item:colouredstuff:planks_magenta>, <item:colouredstuff:planks_magenta>, <item:colouredstuff:planks_magenta>]
  ]
);
craftingTable.addShaped(
  "warped_crucible_orange",
  <item:exnihilosequentia:warped_crucible> * 1,
  [
    [<item:colouredstuff:planks_orange>, <item:minecraft:air>, <item:colouredstuff:planks_orange>],
    [<item:colouredstuff:planks_orange>, <item:minecraft:air>, <item:colouredstuff:planks_orange>],
    [<item:colouredstuff:planks_orange>, <item:colouredstuff:planks_orange>, <item:colouredstuff:planks_orange>]
  ]
);

craftingTable.addShaped(
  "unfired_crucible_recipe",
  <item:exnihilosequentia:unfired_crucible> * 1,
  [
    [<item:exnihilosequentia:porcelain_clay>, <item:minecraft:air>, <item:exnihilosequentia:porcelain_clay>],
    [<item:exnihilosequentia:porcelain_clay>, <item:minecraft:air>, <item:exnihilosequentia:porcelain_clay>],
    [<item:exnihilosequentia:porcelain_clay>, <item:exnihilosequentia:porcelain_clay>, <item:exnihilosequentia:porcelain_clay>]
  ]
);
