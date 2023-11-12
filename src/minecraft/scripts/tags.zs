// Item Tags

// New and improved!
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
  <item:cyclic:shield_bone>
];

for item in itemsToRemove {
  for tag in <tagmanager:items>.getTagsFor(item) {
    tag.remove(item);
  }
}
