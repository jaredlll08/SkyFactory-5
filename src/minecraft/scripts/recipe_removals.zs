// Removes vanilla Crafting Table and Chest recipes so
// we can implement the color versions

craftingTable.removeByName("minecraft:chest");

// NEED TO FIND RECIPE NAME FOR VANILLA CRAFTING TABLE RECIPE AND ADD
// craftingTable.removeByName("minecraft:crafting_table");

// Porcelain Clay Recipe
craftingTable.addShapeless(
  "porcelain_clay_shapeless",
  <item:exnihilosequentia:porcelain_clay>,
  [<item:minecraft:clay_ball>, <item:minecraft:bone_meal>]
);

import crafttweaker.api.item.IItemStack;

val items as IItemStack[] = [


<item:exnihilosequentia:string_mesh>,
<item:exnihilosequentia:flint_mesh>,
<item:exnihilosequentia:iron_mesh>,
<item:exnihilosequentia:diamond_mesh>,
<item:exnihilosequentia:emerald_mesh>,
<item:exnihilosequentia:netherite_mesh>,
<item:exnihilosequentia:andesite_crook>,
<item:exnihilosequentia:bamboo_crook>,
<item:exnihilosequentia:basalt_crook>,
<item:exnihilosequentia:blackstone_crook>,
<item:exnihilosequentia:bone_crook>,
<item:exnihilosequentia:calcite_crook>,
<item:exnihilosequentia:cherry_crook>,
<item:exnihilosequentia:copper_crook>,
<item:exnihilosequentia:deepslate_crook>,
<item:exnihilosequentia:diamond_crook>,
<item:exnihilosequentia:diorite_crook>,
<item:exnihilosequentia:dripstone_crook>,
<item:exnihilosequentia:golden_crook>,
<item:exnihilosequentia:granite_crook>,
<item:exnihilosequentia:iron_crook>,
<item:exnihilosequentia:nether_brick_crook>,
<item:exnihilosequentia:netherite_crook>,
<item:exnihilosequentia:red_nether_brick_crook>,
<item:exnihilosequentia:stone_crook>,
<item:exnihilosequentia:terracotta_crook>,
<item:exnihilosequentia:tuff_crook>,
<item:exnihilosequentia:wooden_crook>,
<item:exnihilosequentia:unfired_crucible>,
<item:exnihilosequentia:fired_crucible>,
<item:exnihilosequentia:acacia_crucible>,
<item:exnihilosequentia:bamboo_crucible>,
<item:exnihilosequentia:birch_crucible>,
<item:exnihilosequentia:cherry_crucible>,
<item:exnihilosequentia:dark_oak_crucible>,
<item:exnihilosequentia:jungle_crucible>,
<item:exnihilosequentia:mangrove_crucible>,
<item:exnihilosequentia:oak_crucible>,
<item:exnihilosequentia:spruce_crucible>,
<item:exnihilosequentia:crimson_crucible>,
<item:exnihilosequentia:warped_crucible>,
<item:exnihilosequentia:acacia_barrel>,
<item:exnihilosequentia:bamboo_barrel>,
<item:exnihilosequentia:birch_barrel>,
<item:exnihilosequentia:cherry_barrel>,
<item:exnihilosequentia:dark_oak_barrel>,
<item:exnihilosequentia:jungle_barrel>,
<item:exnihilosequentia:mangrove_barrel>,
<item:exnihilosequentia:oak_barrel>,
<item:exnihilosequentia:spruce_barrel>,
<item:exnihilosequentia:crimson_barrel>,
<item:exnihilosequentia:warped_barrel>,
<item:exnihilosequentia:stone_barrel>,
<item:exnihilosequentia:acacia_sieve>,
<item:exnihilosequentia:bamboo_sieve>,
<item:exnihilosequentia:birch_sieve>,
<item:exnihilosequentia:cherry_sieve>,
<item:exnihilosequentia:dark_oak_sieve>,
<item:exnihilosequentia:jungle_sieve>,
<item:exnihilosequentia:mangrove_sieve>,
<item:exnihilosequentia:oak_sieve>,
<item:exnihilosequentia:spruce_sieve>,
<item:exnihilosequentia:crimson_sieve>,
<item:exnihilosequentia:warped_sieve>,

// Cyclic Tools and Weapons
<item:cyclic:amethyst_pickaxe>,
<item:cyclic:copper_pickaxe>,
<item:cyclic:emerald_pickaxe>,
<item:cyclic:crystal_pickaxe>,
<item:cyclic:sandstone_pickaxe>,
<item:cyclic:netherbrick_pickaxe>,
<item:cyclic:amethyst_axe>,
<item:cyclic:copper_axe>,
<item:cyclic:emerald_axe>,
<item:cyclic:crystal_axe>,
<item:cyclic:sandstone_axe>,
<item:cyclic:netherbrick_axe>,
<item:cyclic:amethyst_hoe>,
<item:cyclic:copper_hoe>,
<item:cyclic:emerald_hoe>,
<item:cyclic:crystal_hoe>,
<item:cyclic:sandstone_hoe>,
<item:cyclic:netherbrick_hoe>,
<item:cyclic:amethyst_shovel>,
<item:cyclic:copper_shovel>,
<item:cyclic:emerald_shovel>,
<item:cyclic:crystal_shovel>,
<item:cyclic:sandstone_shovel>,
<item:cyclic:netherbrick_shovel>,
<item:cyclic:amethyst_sword>,
<item:cyclic:copper_sword>,
<item:cyclic:emerald_sword>,
<item:cyclic:crystal_sword>,
<item:cyclic:sandstone_sword>,
<item:cyclic:netherbrick_sword>,
<item:cyclic:shield_wood>,
<item:cyclic:shield_leather>,
<item:cyclic:shield_flint>,
<item:cyclic:shield_obsidian>,
<item:cyclic:shield_bone>,
<item:cyclic:shears_obsidian>,
<item:cyclic:shears_flint>,

// Cyclic Apples
<item:cyclic:apple_ender>,
<item:cyclic:apple_lofty_stature>,
<item:cyclic:apple_honey>,
<item:cyclic:apple_chorus>,
<item:cyclic:apple_bone>,
<item:cyclic:apple_prismarine>,
<item:cyclic:apple_lapis>,
<item:cyclic:apple_iron>,
<item:cyclic:apple_diamond>,
<item:cyclic:apple_emerald>,
<item:cyclic:apple_chocolate>,
<item:cyclic:apple_sprout>,
<item:cyclic:apple_sprout_diamond>,
<item:cyclic:apple_sprout_emerald>,

// Mystical Agriculture
<item:mysticalagriculture:diamond_scythe>,
<item:mysticalagriculture:diamond_sickle>,

// TODO The following recipes need to be removed not only from shaped crafting but
// from the Mystical Agriculture infuser and other machines

<item:mysticalagriculture:soulium_dagger>,
<item:mysticalagriculture:passive_soulium_dagger>,
<item:mysticalagriculture:hostile_soulium_dagger>,
<item:mysticalagriculture:creative_soulium_dagger>,
<item:mysticalagriculture:soul_extractor>,
<item:mysticalagriculture:soulium_spawner>,
<item:mysticalagriculture:soulium_ingot>,
<item:mysticalagriculture:soulium_nugget>,
<item:mysticalagriculture:soulium_gemstone>,
<item:mysticalagriculture:soulium_seed_base>,
<item:mysticalagriculture:soul_dust>,
<item:mysticalagriculture:soulium_dust>,
<item:mysticalagriculture:soul_jar>,
<item:mysticalagriculture:soulium_ingot_block>,
<item:mysticalagriculture:soulium_gemstone_block>,
<item:mysticalagriculture:soulium_ore>,
<item:mysticalagriculture:soulstone>,
<item:mysticalagriculture:soulstone_cobble>,
<item:mysticalagriculture:soulstone_bricks>,
<item:mysticalagriculture:soulstone_cracked_bricks>,
<item:mysticalagriculture:soulstone_chiseled_bricks>,
<item:mysticalagriculture:soulstone_smooth>,
<item:mysticalagriculture:soul_glass>,
<item:mysticalagriculture:soulstone_slab>,
<item:mysticalagriculture:soulstone_cobble_slab>,
<item:mysticalagriculture:soulstone_bricks_slab>,
<item:mysticalagriculture:soulstone_smooth_slab>,
<item:mysticalagriculture:soulstone_stairs>,
<item:mysticalagriculture:soulstone_cobble_stairs>,
<item:mysticalagriculture:soulstone_bricks_stairs>,
<item:mysticalagriculture:soulstone_cobble_wall>,
<item:mysticalagriculture:soulstone_bricks_wall>,
<item:mysticalagriculture:soulium_ingot_block>,
<item:mysticalagriculture:soulium_gemstone_block>,
<item:mysticalagriculture:soulium_ore>,
<item:mysticalagriculture:soulstone>,
<item:mysticalagriculture:soulstone_cobble>,
<item:mysticalagriculture:soulstone_bricks>,
<item:mysticalagriculture:soulstone_cracked_bricks>,
<item:mysticalagriculture:soulstone_chiseled_bricks>,
<item:mysticalagriculture:soulstone_smooth>,
<item:mysticalagriculture:soul_glass>,
<item:mysticalagriculture:soulstone_slab>,
<item:mysticalagriculture:soulstone_cobble_slab>,
<item:mysticalagriculture:soulstone_bricks_slab>,
<item:mysticalagriculture:soulstone_smooth_slab>,
<item:mysticalagriculture:soulstone_stairs>,
<item:mysticalagriculture:soulstone_cobble_stairs>,
<item:mysticalagriculture:soulstone_bricks_stairs>,
<item:mysticalagriculture:soulstone_cobble_wall>,
<item:mysticalagriculture:soulstone_bricks_wall>,

// Removes Colossal Chest upgrades/downgrades and metal materials
<item:colossalchests:upgrade_tool>,
<item:colossalchests:upgrade_tool_reverse>,
<item:colossalchests:chest_wall_copper>,
<item:colossalchests:colossal_chest_copper>,
<item:colossalchests:interface_copper>,
<item:colossalchests:chest_wall_iron>,
<item:colossalchests:colossal_chest_iron>,
<item:colossalchests:interface_iron>,
<item:colossalchests:chest_wall_silver>,
<item:colossalchests:colossal_chest_silver>,
<item:colossalchests:interface_silver>,
<item:colossalchests:chest_wall_gold>,
<item:colossalchests:colossal_chest_gold>,
<item:colossalchests:interface_gold>,
<item:colossalchests:chest_wall_diamond>,
<item:colossalchests:colossal_chest_diamond>,
<item:colossalchests:interface_diamond>,
<item:colossalchests:chest_wall_obsidian>,
<item:colossalchests:colossal_chest_obsidian>,
<item:colossalchests:interface_obsidian>,


// Silent's Gear Item Cleanup
<item:silentgear:diamond_shard>,
<item:silentgear:emerald_shard>,

// Cyclic
<item:cyclic:crystal_boots>,
<item:cyclic:crystal_helmet>,
<item:cyclic:crystal_chestplate>,
<item:cyclic:crystal_leggings>,
<item:cyclic:emerald_boots>,
<item:cyclic:emerald_helmet>,
<item:cyclic:emerald_chestplate>,
<item:cyclic:emerald_leggings>,
<item:cyclic:copper_pickaxe>,
<item:cyclic:copper_shovel>,
<item:cyclic:mattock>,
<item:cyclic:mattock_nether>,
<item:cyclic:mattock_stone>,

// Thermal
<item:thermal:rubber>,
<item:thermal:rubber_block>,
<item:thermal:slag_block>,


// Applied Energistics 2
<item:ae2:not_so_mysterious_cube>,
<item:ae2:certus_quartz_axe>,
<item:ae2:certus_quartz_hoe>,
<item:ae2:certus_quartz_shovel>,
<item:ae2:certus_quartz_pickaxe>,
<item:ae2:certus_quartz_sword>,

// Industrial Foregoing
<item:industrialforegoing:dryrubber>,

// RFTools
<item:rftoolsbase:machine_frame>,
<item:rftoolsbase:machine_base>,
<item:rftoolsutility:syringe>,
<item:rftoolsutility:spawner>,
<item:rftoolsutility:teleport_probe>,
<item:rftoolsutility:weakness_module>
];

for item in items {
  craftingTable.remove(item);
}

furnace.remove(<item:thermal:cured_rubber>);

// Removes Ex Nihilo Pebble Recipes
craftingTable.removeByName("minecraft:ens_andesite");
craftingTable.removeByName("minecraft:ens_basalt");
craftingTable.removeByName("minecraft:ens_blackstone");
craftingTable.removeByName("minecraft:ens_calcite");
craftingTable.removeByName("minecraft:ens_deepslate");
craftingTable.removeByName("minecraft:ens_diorite");
craftingTable.removeByName("minecraft:ens_dripstone_block");
craftingTable.removeByName("minecraft:ens_end_stone");
// craftingTable.removeByName("minecraft:ens_granite");
craftingTable.removeByName("minecraft:ens_netherrack");
craftingTable.removeByName("minecraft:ens_cobblestone");
craftingTable.removeByName("minecraft:ens_tuff");

// Cluttered mod
craftingTable.removeByName("luphieclutteredmod:luphie_purple_plank_set_stick_recipe");
craftingTable.removeByName("luphieclutteredmod:luphie_glow_wood_set_stick_recipe");

