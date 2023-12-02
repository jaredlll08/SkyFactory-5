#loader tags

import crafttweaker.api.resource.ResourceLocation;

val items as ResourceLocation[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <resource:colouredstuff:brick_brown>,
  <resource:colouredstuff:chiseled_sandstone_brown>,
  <resource:colouredstuff:chiseled_stone_bricks_brown>,
  <resource:colouredstuff:cobblestone_brown>,
  <resource:colouredstuff:crafting_table_brown>,
  <resource:colouredstuff:cut_sandstone_brown>,
  <resource:colouredstuff:dirt_brown>,
  <resource:colouredstuff:farmland_brown>,
  <resource:colouredstuff:fence_planks_brown>,
  <resource:colouredstuff:gate_planks_brown>,
  <resource:colouredstuff:leaves_brown>,
  <resource:colouredstuff:log_brown>,
  <resource:colouredstuff:log_stripped_brown>,
  <resource:colouredstuff:path_brown>,
  <resource:colouredstuff:planks_brown>,
  <resource:colouredstuff:sandstone_brown>,
  <resource:colouredstuff:sapling_brown>,
  <resource:colouredstuff:slab_brick_brown>,
  <resource:colouredstuff:slab_cobblestone_brown>,
  <resource:colouredstuff:slab_planks_brown>,
  <resource:colouredstuff:slab_sandstone_brown>,
  <resource:colouredstuff:slab_stone_bricks_brown>,
  <resource:colouredstuff:slab_stone_brown>,
  <resource:colouredstuff:smooth_sandstone_brown>,
  <resource:colouredstuff:stairs_brick_brown>,
  <resource:colouredstuff:stairs_cobblestone_brown>,
  <resource:colouredstuff:stairs_planks_brown>,
  <resource:colouredstuff:stairs_sandstone_brown>,
  <resource:colouredstuff:stairs_stone_bricks_brown>,
  <resource:colouredstuff:stairs_stone_brown>,
  <resource:colouredstuff:stone_bricks_brown>,
  <resource:colouredstuff:stone_brown>,
  <resource:colouredstuff:wall_brick_brown>,
  <resource:colouredstuff:wall_cobblestone_brown>,
  <resource:colouredstuff:wall_planks_brown>,
  <resource:colouredstuff:wall_sandstone_brown>,
  <resource:colouredstuff:wall_stone_bricks_brown>,
  <resource:colouredstuff:wall_stone_brown>,
  <resource:forcecraft:brown_force_furnace>,
  <resource:forcecraft:force_brick_brown>,
  <resource:forcecraft:force_brick_brown_slab>,
  <resource:forcecraft:force_brick_brown_stairs>,
  <resource:forcecraft:force_brown_torch>,
  <resource:minecraft:brown_banner>,
  <resource:minecraft:brown_bed>,
  <resource:minecraft:brown_candle>,
  <resource:minecraft:brown_carpet>,
  <resource:minecraft:brown_concrete>,
  <resource:minecraft:brown_concrete_powder>,
  <resource:minecraft:brown_dye>,
  <resource:minecraft:brown_glazed_terracotta>,
  <resource:minecraft:brown_mushroom>,
  <resource:minecraft:brown_mushroom_block>,
  <resource:minecraft:brown_shulker_box>,
  <resource:minecraft:brown_stained_glass>,
  <resource:minecraft:brown_stained_glass_pane>,
  <resource:minecraft:brown_terracotta>,
  <resource:minecraft:brown_wool>,
  <resource:minecraft:coarse_dirt>,
  <resource:minecraft:dirt>,
  <resource:minecraft:leather>,
  <resource:minecraft:rooted_dirt>,
  <resource:mysticalagriculture:brown_crop_essence>,
  <resource:mysticalagriculture:brown_crop_seeds>,
  <resource:sf5_things:brown_apple>,
  <resource:tinted_torches:brown_torch>,
  <resource:tintedcampfires:brown_campfire>

  // GENERATOR END
];

for item in items {
  <tag:items:skyfactory_5:colored_items>.addId(item);
  <tag:items:skyfactory_5:colored_items/brown>.addId(item);
}
