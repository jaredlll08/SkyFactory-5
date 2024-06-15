import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.item.IItemStack;

val itemsToRemove as IItemStack[] = [
  <item:forcecraft:force_stick>,
  <item:forcecraft:golden_power_source>,
  <item:forcecraft:force_torch>,
  <item:forcecraft:force_red_torch>,
  <item:forcecraft:force_orange_torch>,
  <item:forcecraft:force_green_torch>,
  <item:forcecraft:force_blue_torch>,
  <item:forcecraft:force_white_torch>,
  <item:forcecraft:force_black_torch>,
  <item:forcecraft:force_brown_torch>,
  <item:forcecraft:force_light_blue_torch>,
  <item:forcecraft:force_magenta_torch>,
  <item:forcecraft:force_pink_torch>,
  <item:forcecraft:force_light_gray_torch>,
  <item:forcecraft:force_lime_torch>,
  <item:forcecraft:force_cyan_torch>,
  <item:forcecraft:force_purple_torch>,
  <item:forcecraft:force_gray_torch>,
  <item:forcecraft:time_torch>,
  <item:forcecraft:force_sapling>,
  <item:forcecraft:force_log>,
  <item:forcecraft:force_wood>,
  <item:forcecraft:force_leaves>,
  <item:forcecraft:force_planks>,
  <item:forcecraft:force_plank_stairs>,
  <item:forcecraft:force_plank_slab>,
  <item:cyclic:amethyst_pickaxe>,
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
  <item:pickletweaks:watering_can>,
  <item:pickletweaks:reinforced_watering_can>,
  <item:exnihilosequentia:iron_pieces>,
  <item:exnihilosequentia:gold_pieces>,
  <item:exnihilosequentia:copper_pieces>,
  <item:exnihilosequentia:copper_nugget>,
  <item:exnihilosequentia:lead_ingot>,
  <item:exnihilosequentia:raw_lead>,
  <item:exnihilosequentia:lead_pieces>,
  <item:exnihilosequentia:lead_nugget>,
  <item:exnihilosequentia:nickel_ingot>,
  <item:exnihilosequentia:raw_nickel>,
  <item:exnihilosequentia:nickel_pieces>,
  <item:exnihilosequentia:nickel_nugget>,
  <item:exnihilosequentia:silver_ingot>,
  <item:exnihilosequentia:raw_silver>,
  <item:exnihilosequentia:silver_pieces>,
  <item:exnihilosequentia:silver_nugget>,
  <item:exnihilosequentia:tin_ingot>,
  <item:exnihilosequentia:raw_tin>,
  <item:exnihilosequentia:tin_pieces>,
  <item:exnihilosequentia:tin_nugget>,
  <item:exnihilosequentia:aluminum_ingot>,
  <item:exnihilosequentia:raw_aluminum>,
  <item:exnihilosequentia:aluminum_pieces>,
  <item:exnihilosequentia:aluminum_nugget>,
  <item:exnihilosequentia:platinum_ingot>,
  <item:exnihilosequentia:raw_platinum>,
  <item:exnihilosequentia:platinum_pieces>,
  <item:exnihilosequentia:platinum_nugget>,
  <item:exnihilosequentia:uranium_ingot>,
  <item:exnihilosequentia:raw_uranium>,
  <item:exnihilosequentia:uranium_pieces>,
  <item:exnihilosequentia:uranium_nugget>,
  <item:exnihilosequentia:zinc_ingot>,
  <item:exnihilosequentia:raw_zinc>,
  <item:exnihilosequentia:zinc_pieces>,
  <item:exnihilosequentia:zinc_nugget>,
  <item:luphieclutteredmod:luphie_purple_planks>,
  <item:luphieclutteredmod:luphie_pink_planks>,
  // <item:botania:pebble>,
  // <item:botania:living_root>,
  <item:immersiveengineering:ingot_lead>,
  <item:immersiveengineering:nugget_lead>,
  <item:immersiveengineering:raw_lead>,
  <item:immersiveengineering:plate_lead>,
  <item:immersiveengineering:dust_lead>,
  <item:immersiveengineering:storage_lead>,
  <item:immersiveengineering:slab_storage_lead>,
  <item:immersiveengineering:ingot_silver>,
  <item:immersiveengineering:nugget_silver>,
  <item:immersiveengineering:raw_silver>,
  <item:immersiveengineering:plate_silver>,
  <item:immersiveengineering:dust_silver>,
  <item:immersiveengineering:storage_silver>,
  <item:immersiveengineering:slab_storage_silver>,
  <item:immersiveengineering:ingot_steel>,
  <item:immersiveengineering:nugget_steel>,
  <item:immersiveengineering:plate_steel>,
  <item:immersiveengineering:dust_steel>,
  <item:occultism:raw_silver>,
  <item:occultism:silver_ingot>,
  <item:occultism:silver_nugget>,
  <item:occultism:silver_dust>,
  <item:immersiveengineering:ingot_nickel>,
  <item:immersiveengineering:nugget_nickel>,
  <item:immersiveengineering:raw_nickel>,
  <item:immersiveengineering:plate_nickel>,
  <item:immersiveengineering:dust_nickel>,
  <item:immersiveengineering:storage_nickel>,
  <item:immersiveengineering:slab_storage_nickel>,
  <item:enderio:powdered_iron>,
  <item:enderio:powdered_gold>,
  <item:enderio:powdered_copper>,
  <item:enderio:powdered_tin>,
  <item:enderio:powdered_ender_pearl>,
  <item:enderio:powdered_lapis_lazuli>,
  <item:enderio:powdered_obsidian>,
  <item:enderio:powdered_quartz>,
  <item:industrialforegoing:iron_gear>,
  <item:industrialforegoing:gold_gear>,
  <item:industrialforegoing:diamond_gear>,
  <item:immersiveengineering:ingot_electrum>,
  <item:immersiveengineering:dust_electrum>,
  <item:immersiveengineering:storage_constantan>,
  <item:immersiveengineering:ingot_constantan>,
  <item:immersiveengineering:nugget_constantan>,
  <item:immersiveengineering:plate_constantan>,
  <item:immersiveengineering:dust_constantan>,
  <item:silentgear:diamond_shard>,
  <item:silentgear:emerald_shard>,
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
  <item:create:iron_sheet>,
  <item:create:copper_sheet>,
  <item:create:golden_sheet>,
  <item:immersiveengineering:plate_copper>,
  <item:immersiveengineering:plate_electrum>,
  <item:immersiveengineering:plate_iron>,
  <item:immersiveengineering:plate_gold>,
  <item:ae2:certus_quartz_axe>,
  <item:ae2:certus_quartz_hoe>,
  <item:ae2:certus_quartz_shovel>,
  <item:ae2:certus_quartz_pickaxe>,
  <item:ae2:certus_quartz_sword>,
  // Pickle Tweaks
  <item:pickletweaks:white_cobblestone>,
  <item:pickletweaks:orange_cobblestone>,
  <item:pickletweaks:magenta_cobblestone>,
  <item:pickletweaks:light_blue_cobblestone>,
  <item:pickletweaks:yellow_cobblestone>,
  <item:pickletweaks:lime_cobblestone>,
  <item:pickletweaks:pink_cobblestone>,
  <item:pickletweaks:gray_cobblestone>,
  <item:pickletweaks:light_gray_cobblestone>,
  <item:pickletweaks:cyan_cobblestone>,
  <item:pickletweaks:purple_cobblestone>,
  <item:pickletweaks:blue_cobblestone>,
  <item:pickletweaks:brown_cobblestone>,
  <item:pickletweaks:green_cobblestone>,
  <item:pickletweaks:red_cobblestone>,
  <item:pickletweaks:black_cobblestone>,
];

for item in itemsToRemove {
  for tag in <tagmanager:items>.getTagsFor(item) {
    tag.remove(item);
  }
}

// Tag additions
<tagmanager:items>.addId(<tag:items:forge:dusts/ender>, <resource:thermal:ender_pearl_dust>);
<tagmanager:items>.addId(<tag:items:minecraft:pressure_plates>, <resource:minecraft:stone_pressure_plate>);

// Ex Nihilo Sequentia
// Crucibles
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:black_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:blue_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:brown_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:cyan_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:gray_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:green_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:light_blue_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:light_gray_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:lime_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:magenta_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:none_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:orange_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:pink_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:purple_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:red_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:white_crucible>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/crucibles>, <resource:exnihilocoloratus:yellow_crucible>);

// Barrels
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:black_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:blue_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:brown_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:cyan_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:gray_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:green_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:light_blue_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:light_gray_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:lime_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:magenta_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:none_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:orange_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:pink_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:purple_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:red_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:white_barrel>);
<tagmanager:items>.addId(<tag:items:exnihilosequentia/barrels>, <resource:exnihilocoloratus:yellow_barrel>);



// Adds Crafting Tables to forge:workbench tag
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:enderio:painted_crafting_table>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_none>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_black>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_blue>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_brown>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_cyan>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_gray>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_green>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_light_blue>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_light_gray>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_lime>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_magenta>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_orange>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_pink>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_purple>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_red>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_white>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:colouredstuff:crafting_table_yellow>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:minecraft:crafting_table>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:cyclic:workbench>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:craftingstation:crafting_station>);
<tagmanager:items>.addId(<tag:items:forge:workbench>, <resource:craftingstation:crafting_station_slab>);

// Using this as a test for goat spawns not working on this block normally
<tagmanager:blocks>.addId(<tag:blocks:minecraft:dirt>, <resource:colouredstuff:dirt_none>);

