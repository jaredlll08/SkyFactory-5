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

craftingTable.remove(<item:exnihilosequentia:string_mesh>);
craftingTable.remove(<item:exnihilosequentia:flint_mesh>);
craftingTable.remove(<item:exnihilosequentia:iron_mesh>);
craftingTable.remove(<item:exnihilosequentia:diamond_mesh>);
craftingTable.remove(<item:exnihilosequentia:emerald_mesh>);
craftingTable.remove(<item:exnihilosequentia:netherite_mesh>);
craftingTable.remove(<item:exnihilosequentia:andesite_crook>);
craftingTable.remove(<item:exnihilosequentia:bamboo_crook>);
craftingTable.remove(<item:exnihilosequentia:basalt_crook>);
craftingTable.remove(<item:exnihilosequentia:blackstone_crook>);
craftingTable.remove(<item:exnihilosequentia:bone_crook>);
craftingTable.remove(<item:exnihilosequentia:calcite_crook>);
craftingTable.remove(<item:exnihilosequentia:cherry_crook>);
craftingTable.remove(<item:exnihilosequentia:copper_crook>);
craftingTable.remove(<item:exnihilosequentia:deepslate_crook>);
craftingTable.remove(<item:exnihilosequentia:diamond_crook>);
craftingTable.remove(<item:exnihilosequentia:diorite_crook>);
craftingTable.remove(<item:exnihilosequentia:dripstone_crook>);
craftingTable.remove(<item:exnihilosequentia:golden_crook>);
craftingTable.remove(<item:exnihilosequentia:granite_crook>);
craftingTable.remove(<item:exnihilosequentia:iron_crook>);
craftingTable.remove(<item:exnihilosequentia:nether_brick_crook>);
craftingTable.remove(<item:exnihilosequentia:netherite_crook>);
craftingTable.remove(<item:exnihilosequentia:red_nether_brick_crook>);
craftingTable.remove(<item:exnihilosequentia:stone_crook>);
craftingTable.remove(<item:exnihilosequentia:terracotta_crook>);
craftingTable.remove(<item:exnihilosequentia:tuff_crook>);
craftingTable.remove(<item:exnihilosequentia:wooden_crook>);
craftingTable.remove(<item:exnihilosequentia:unfired_crucible>);
craftingTable.remove(<item:exnihilosequentia:fired_crucible>);
craftingTable.remove(<item:exnihilosequentia:acacia_crucible>);
craftingTable.remove(<item:exnihilosequentia:bamboo_crucible>);
craftingTable.remove(<item:exnihilosequentia:birch_crucible>);
craftingTable.remove(<item:exnihilosequentia:cherry_crucible>);
craftingTable.remove(<item:exnihilosequentia:dark_oak_crucible>);
craftingTable.remove(<item:exnihilosequentia:jungle_crucible>);
craftingTable.remove(<item:exnihilosequentia:mangrove_crucible>);
craftingTable.remove(<item:exnihilosequentia:oak_crucible>);
craftingTable.remove(<item:exnihilosequentia:spruce_crucible>);
craftingTable.remove(<item:exnihilosequentia:crimson_crucible>);
craftingTable.remove(<item:exnihilosequentia:warped_crucible>);
craftingTable.remove(<item:exnihilosequentia:acacia_barrel>);
craftingTable.remove(<item:exnihilosequentia:bamboo_barrel>);
craftingTable.remove(<item:exnihilosequentia:birch_barrel>);
craftingTable.remove(<item:exnihilosequentia:cherry_barrel>);
craftingTable.remove(<item:exnihilosequentia:dark_oak_barrel>);
craftingTable.remove(<item:exnihilosequentia:jungle_barrel>);
craftingTable.remove(<item:exnihilosequentia:mangrove_barrel>);
craftingTable.remove(<item:exnihilosequentia:oak_barrel>);
craftingTable.remove(<item:exnihilosequentia:spruce_barrel>);
craftingTable.remove(<item:exnihilosequentia:crimson_barrel>);
craftingTable.remove(<item:exnihilosequentia:warped_barrel>);
craftingTable.remove(<item:exnihilosequentia:stone_barrel>);
craftingTable.remove(<item:exnihilosequentia:acacia_sieve>);
craftingTable.remove(<item:exnihilosequentia:bamboo_sieve>);
craftingTable.remove(<item:exnihilosequentia:birch_sieve>);
craftingTable.remove(<item:exnihilosequentia:cherry_sieve>);
craftingTable.remove(<item:exnihilosequentia:dark_oak_sieve>);
craftingTable.remove(<item:exnihilosequentia:jungle_sieve>);
craftingTable.remove(<item:exnihilosequentia:mangrove_sieve>);
craftingTable.remove(<item:exnihilosequentia:oak_sieve>);
craftingTable.remove(<item:exnihilosequentia:spruce_sieve>);
craftingTable.remove(<item:exnihilosequentia:crimson_sieve>);
craftingTable.remove(<item:exnihilosequentia:warped_sieve>);

// Cyclic Tools and Weapons
craftingTable.remove(<item:cyclic:amethyst_pickaxe>);
craftingTable.remove(<item:cyclic:copper_pickaxe>);
craftingTable.remove(<item:cyclic:emerald_pickaxe>);
craftingTable.remove(<item:cyclic:crystal_pickaxe>);
craftingTable.remove(<item:cyclic:sandstone_pickaxe>);
craftingTable.remove(<item:cyclic:netherbrick_pickaxe>);
craftingTable.remove(<item:cyclic:amethyst_axe>);
craftingTable.remove(<item:cyclic:copper_axe>);
craftingTable.remove(<item:cyclic:emerald_axe>);
craftingTable.remove(<item:cyclic:crystal_axe>);
craftingTable.remove(<item:cyclic:sandstone_axe>);
craftingTable.remove(<item:cyclic:netherbrick_axe>);
craftingTable.remove(<item:cyclic:amethyst_hoe>);
craftingTable.remove(<item:cyclic:copper_hoe>);
craftingTable.remove(<item:cyclic:emerald_hoe>);
craftingTable.remove(<item:cyclic:crystal_hoe>);
craftingTable.remove(<item:cyclic:sandstone_hoe>);
craftingTable.remove(<item:cyclic:netherbrick_hoe>);
craftingTable.remove(<item:cyclic:amethyst_shovel>);
craftingTable.remove(<item:cyclic:copper_shovel>);
craftingTable.remove(<item:cyclic:emerald_shovel>);
craftingTable.remove(<item:cyclic:crystal_shovel>);
craftingTable.remove(<item:cyclic:sandstone_shovel>);
craftingTable.remove(<item:cyclic:netherbrick_shovel>);
craftingTable.remove(<item:cyclic:amethyst_sword>);
craftingTable.remove(<item:cyclic:copper_sword>);
craftingTable.remove(<item:cyclic:emerald_sword>);
craftingTable.remove(<item:cyclic:crystal_sword>);
craftingTable.remove(<item:cyclic:sandstone_sword>);
craftingTable.remove(<item:cyclic:netherbrick_sword>);
craftingTable.remove(<item:cyclic:shield_wood>);
craftingTable.remove(<item:cyclic:shield_leather>);
craftingTable.remove(<item:cyclic:shield_flint>);
craftingTable.remove(<item:cyclic:shield_obsidian>);
craftingTable.remove(<item:cyclic:shield_bone>);


// Cyclic Apples
craftingTable.remove(<item:cyclic:apple_ender>);
craftingTable.remove(<item:cyclic:apple_lofty_stature>);
craftingTable.remove(<item:cyclic:apple_honey>);
craftingTable.remove(<item:cyclic:apple_chorus>);
craftingTable.remove(<item:cyclic:apple_bone>);
craftingTable.remove(<item:cyclic:apple_prismarine>);
craftingTable.remove(<item:cyclic:apple_lapis>);
craftingTable.remove(<item:cyclic:apple_iron>);
craftingTable.remove(<item:cyclic:apple_diamond>);
craftingTable.remove(<item:cyclic:apple_emerald>);
craftingTable.remove(<item:cyclic:apple_chocolate>);
craftingTable.remove(<item:cyclic:apple_sprout>);
craftingTable.remove(<item:cyclic:apple_sprout_diamond>);
craftingTable.remove(<item:cyclic:apple_sprout_emerald>);

// Mystical Agriculture
craftingTable.remove(<item:mysticalagriculture:diamond_scythe>);
craftingTable.remove(<item:mysticalagriculture:diamond_sickle>);

// TODO The following recipes need to be removed not only from shaped crafting but
// from the Mystical Agriculture infuser and other machines

craftingTable.remove(<item:mysticalagriculture:soulium_dagger>);
craftingTable.remove(<item:mysticalagriculture:passive_soulium_dagger>);
craftingTable.remove(<item:mysticalagriculture:hostile_soulium_dagger>);
craftingTable.remove(<item:mysticalagriculture:creative_soulium_dagger>);
craftingTable.remove(<item:mysticalagriculture:soul_extractor>);
craftingTable.remove(<item:mysticalagriculture:soulium_spawner>);
craftingTable.remove(<item:mysticalagriculture:soulium_ingot>);
craftingTable.remove(<item:mysticalagriculture:soulium_nugget>);
craftingTable.remove(<item:mysticalagriculture:soulium_gemstone>);
craftingTable.remove(<item:mysticalagriculture:soulium_seed_base>);
craftingTable.remove(<item:mysticalagriculture:soul_dust>);
craftingTable.remove(<item:mysticalagriculture:soulium_dust>);
craftingTable.remove(<item:mysticalagriculture:soul_jar>);
craftingTable.remove(<item:mysticalagriculture:soulium_ingot_block>);
craftingTable.remove(<item:mysticalagriculture:soulium_gemstone_block>);
craftingTable.remove(<item:mysticalagriculture:soulium_ore>);
craftingTable.remove(<item:mysticalagriculture:soulstone>);
craftingTable.remove(<item:mysticalagriculture:soulstone_cobble>);
craftingTable.remove(<item:mysticalagriculture:soulstone_bricks>);
craftingTable.remove(<item:mysticalagriculture:soulstone_cracked_bricks>);
craftingTable.remove(<item:mysticalagriculture:soulstone_chiseled_bricks>);
craftingTable.remove(<item:mysticalagriculture:soulstone_smooth>);
craftingTable.remove(<item:mysticalagriculture:soul_glass>);
craftingTable.remove(<item:mysticalagriculture:soulstone_slab>);
craftingTable.remove(<item:mysticalagriculture:soulstone_cobble_slab>);
craftingTable.remove(<item:mysticalagriculture:soulstone_bricks_slab>);
craftingTable.remove(<item:mysticalagriculture:soulstone_smooth_slab>);
craftingTable.remove(<item:mysticalagriculture:soulstone_stairs>);
craftingTable.remove(<item:mysticalagriculture:soulstone_cobble_stairs>);
craftingTable.remove(<item:mysticalagriculture:soulstone_bricks_stairs>);
craftingTable.remove(<item:mysticalagriculture:soulstone_cobble_wall>);
craftingTable.remove(<item:mysticalagriculture:soulstone_bricks_wall>);
craftingTable.remove(<item:mysticalagriculture:soulium_ingot_block>);
craftingTable.remove(<item:mysticalagriculture:soulium_gemstone_block>);
craftingTable.remove(<item:mysticalagriculture:soulium_ore>);
craftingTable.remove(<item:mysticalagriculture:soulstone>);
craftingTable.remove(<item:mysticalagriculture:soulstone_cobble>);
craftingTable.remove(<item:mysticalagriculture:soulstone_bricks>);
craftingTable.remove(<item:mysticalagriculture:soulstone_cracked_bricks>);
craftingTable.remove(<item:mysticalagriculture:soulstone_chiseled_bricks>);
craftingTable.remove(<item:mysticalagriculture:soulstone_smooth>);
craftingTable.remove(<item:mysticalagriculture:soul_glass>);
craftingTable.remove(<item:mysticalagriculture:soulstone_slab>);
craftingTable.remove(<item:mysticalagriculture:soulstone_cobble_slab>);
craftingTable.remove(<item:mysticalagriculture:soulstone_bricks_slab>);
craftingTable.remove(<item:mysticalagriculture:soulstone_smooth_slab>);
craftingTable.remove(<item:mysticalagriculture:soulstone_stairs>);
craftingTable.remove(<item:mysticalagriculture:soulstone_cobble_stairs>);
craftingTable.remove(<item:mysticalagriculture:soulstone_bricks_stairs>);
craftingTable.remove(<item:mysticalagriculture:soulstone_cobble_wall>);
craftingTable.remove(<item:mysticalagriculture:soulstone_bricks_wall>);

// Removes Colossal Chest upgrades/downgrades and metal materials
craftingTable.remove(<item:colossalchests:upgrade_tool>);
craftingTable.remove(<item:colossalchests:upgrade_tool_reverse>);
craftingTable.remove(<item:colossalchests:chest_wall_copper>);
craftingTable.remove(<item:colossalchests:colossal_chest_copper>);
craftingTable.remove(<item:colossalchests:interface_copper>);
craftingTable.remove(<item:colossalchests:chest_wall_iron>);
craftingTable.remove(<item:colossalchests:colossal_chest_iron>);
craftingTable.remove(<item:colossalchests:interface_iron>);
craftingTable.remove(<item:colossalchests:chest_wall_silver>);
craftingTable.remove(<item:colossalchests:colossal_chest_silver>);
craftingTable.remove(<item:colossalchests:interface_silver>);
craftingTable.remove(<item:colossalchests:chest_wall_gold>);
craftingTable.remove(<item:colossalchests:colossal_chest_gold>);
craftingTable.remove(<item:colossalchests:interface_gold>);
craftingTable.remove(<item:colossalchests:chest_wall_diamond>);
craftingTable.remove(<item:colossalchests:colossal_chest_diamond>);
craftingTable.remove(<item:colossalchests:interface_diamond>);
craftingTable.remove(<item:colossalchests:chest_wall_obsidian>);
craftingTable.remove(<item:colossalchests:colossal_chest_obsidian>);
craftingTable.remove(<item:colossalchests:interface_obsidian>);



// Removes Ex Nihilo Pebble Recipes
craftingTable.removeByName("minecraft:ens_andesite");
craftingTable.removeByName("minecraft:ens_basalt");
craftingTable.removeByName("minecraft:ens_blackstone");
craftingTable.removeByName("minecraft:ens_calcite");
craftingTable.removeByName("minecraft:ens_deepslate");
craftingTable.removeByName("minecraft:ens_diorite");
craftingTable.removeByName("minecraft:ens_dripstone_block");
craftingTable.removeByName("minecraft:ens_end_stone");
craftingTable.removeByName("minecraft:ens_granite");
craftingTable.removeByName("minecraft:ens_netherrack");
craftingTable.removeByName("minecraft:ens_cobblestone");
craftingTable.removeByName("minecraft:ens_tuff");
craftingTable.remove(<item:exnihilosequentia:iron_pieces>);
craftingTable.remove(<item:exnihilosequentia:gold_pieces>);
craftingTable.remove(<item:exnihilosequentia:copper_pieces>);
craftingTable.remove(<item:exnihilosequentia:copper_nugget>);
craftingTable.remove(<item:exnihilosequentia:lead_ingot>);
craftingTable.remove(<item:exnihilosequentia:raw_lead>);
craftingTable.remove(<item:exnihilosequentia:lead_pieces>);
craftingTable.remove(<item:exnihilosequentia:lead_nugget>);
craftingTable.remove(<item:exnihilosequentia:nickel_ingot>);
craftingTable.remove(<item:exnihilosequentia:raw_nickel>);
craftingTable.remove(<item:exnihilosequentia:nickel_pieces>);
craftingTable.remove(<item:exnihilosequentia:nickel_nugget>);
craftingTable.remove(<item:exnihilosequentia:silver_ingot>);
craftingTable.remove(<item:exnihilosequentia:raw_silver>);
craftingTable.remove(<item:exnihilosequentia:silver_pieces>);
craftingTable.remove(<item:exnihilosequentia:silver_nugget>);
craftingTable.remove(<item:exnihilosequentia:tin_ingot>);
craftingTable.remove(<item:exnihilosequentia:raw_tin>);
craftingTable.remove(<item:exnihilosequentia:tin_pieces>);
craftingTable.remove(<item:exnihilosequentia:tin_nugget>);
craftingTable.remove(<item:exnihilosequentia:aluminum_ingot>);
craftingTable.remove(<item:exnihilosequentia:raw_aluminum>);
craftingTable.remove(<item:exnihilosequentia:aluminum_pieces>);
craftingTable.remove(<item:exnihilosequentia:aluminum_nugget>);
craftingTable.remove(<item:exnihilosequentia:platinum_ingot>);
craftingTable.remove(<item:exnihilosequentia:raw_platinum>);
craftingTable.remove(<item:exnihilosequentia:platinum_pieces>);
craftingTable.remove(<item:exnihilosequentia:platinum_nugget>);
craftingTable.remove(<item:exnihilosequentia:uranium_ingot>);
craftingTable.remove(<item:exnihilosequentia:raw_uranium>);
craftingTable.remove(<item:exnihilosequentia:uranium_pieces>);
craftingTable.remove(<item:exnihilosequentia:uranium_nugget>);
craftingTable.remove(<item:exnihilosequentia:zinc_ingot>);
craftingTable.remove(<item:exnihilosequentia:raw_zinc>);
craftingTable.remove(<item:exnihilosequentia:zinc_pieces>);
craftingTable.remove(<item:exnihilosequentia:zinc_nugget>);

// Cluttered mod
craftingTable.removeByName("luphieclutteredmod:luphie_purple_plank_set_stick_recipe");
craftingTable.removeByName("luphieclutteredmod:luphie_glow_wood_set_stick_recipe");

// Tag unification
craftingTable.remove(<item:immersiveengineering:dust_electrum>);


craftingTable.remove(<item:immersiveengineering:storage_constantan>);
craftingTable.remove(<item:immersiveengineering:ingot_constantan>);
craftingTable.remove(<item:immersiveengineering:nugget_constantan>);
craftingTable.remove(<item:immersiveengineering:plate_constantan>);
craftingTable.remove(<item:immersiveengineering:dust_constantan>);

// Silent's Gear Item Cleanup
craftingTable.remove(<item:silentgear:diamond_shard>);
craftingTable.remove(<item:silentgear:emerald_shard>);
