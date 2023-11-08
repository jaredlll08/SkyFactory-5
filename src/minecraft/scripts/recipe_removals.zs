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
