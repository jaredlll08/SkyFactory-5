#loader tags

import crafttweaker.api.resource.ResourceLocation;

val items as ResourceLocation[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <resource:colouredstuff:brick_gray>,
  <resource:colouredstuff:chiseled_sandstone_gray>,
  <resource:colouredstuff:chiseled_stone_bricks_gray>,
  <resource:colouredstuff:cobblestone_gray>,
  <resource:colouredstuff:crafting_table_gray>,
  <resource:colouredstuff:cut_sandstone_gray>,
  <resource:colouredstuff:dirt_gray>,
  <resource:colouredstuff:farmland_gray>,
  <resource:colouredstuff:fence_planks_gray>,
  <resource:colouredstuff:gate_planks_gray>,
  <resource:colouredstuff:leaves_gray>,
  <resource:colouredstuff:log_gray>,
  <resource:colouredstuff:log_stripped_gray>,
  <resource:colouredstuff:path_gray>,
  <resource:colouredstuff:planks_gray>,
  <resource:colouredstuff:sandstone_gray>,
  <resource:colouredstuff:sapling_gray>,
  <resource:colouredstuff:slab_brick_gray>,
  <resource:colouredstuff:slab_cobblestone_gray>,
  <resource:colouredstuff:slab_planks_gray>,
  <resource:colouredstuff:slab_sandstone_gray>,
  <resource:colouredstuff:slab_stone_bricks_gray>,
  <resource:colouredstuff:slab_stone_gray>,
  <resource:colouredstuff:smooth_sandstone_gray>,
  <resource:colouredstuff:stairs_brick_gray>,
  <resource:colouredstuff:stairs_cobblestone_gray>,
  <resource:colouredstuff:stairs_planks_gray>,
  <resource:colouredstuff:stairs_sandstone_gray>,
  <resource:colouredstuff:stairs_stone_bricks_gray>,
  <resource:colouredstuff:stairs_stone_gray>,
  <resource:colouredstuff:stone_bricks_gray>,
  <resource:colouredstuff:stone_gray>,
  <resource:colouredstuff:wall_brick_gray>,
  <resource:colouredstuff:wall_cobblestone_gray>,
  <resource:colouredstuff:wall_planks_gray>,
  <resource:colouredstuff:wall_sandstone_gray>,
  <resource:colouredstuff:wall_stone_bricks_gray>,
  <resource:colouredstuff:wall_stone_gray>,
  <resource:minecraft:chiseled_stone_bricks>,
  <resource:minecraft:cobblestone>,
  <resource:minecraft:cobblestone_slab>,
  <resource:minecraft:cobblestone_stairs>,
  <resource:minecraft:cobblestone_wall>,
  <resource:minecraft:cracked_stone_bricks>,
  <resource:minecraft:furnace>,
  <resource:minecraft:gray_concrete>,
  <resource:minecraft:gray_concrete_powder>,
  <resource:minecraft:gray_dye>,
  <resource:minecraft:infested_chiseled_stone_bricks>,
  <resource:minecraft:infested_cracked_stone_bricks>,
  <resource:minecraft:infested_stone_bricks>,
  <resource:minecraft:smooth_stone>,
  <resource:minecraft:smooth_stone_slab>,
  <resource:minecraft:stone>,
  <resource:minecraft:stone_brick_slab>,
  <resource:minecraft:stone_brick_stairs>,
  <resource:minecraft:stone_brick_wall>,
  <resource:minecraft:stone_bricks>,
  <resource:minecraft:stone_button>,
  <resource:minecraft:stone_pressure_plate>,
  <resource:minecraft:stone_slab>,
  <resource:minecraft:stone_stairs>,
  <resource:mysticalagriculture:gray_crop_essence>,
  <resource:mysticalagriculture:gray_crop_seeds>,
  <resource:sf5_things:gray_apple>,
  <resource:tinted_torches:gray_torch>

  // GENERATOR END
];

for item in items {
  <tag:items:skyfactory_5:colored_items>.addId(item);
  <tag:items:skyfactory_5:colored_items/gray>.addId(item);
}
