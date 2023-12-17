#loader tags

import crafttweaker.api.resource.ResourceLocation;

val items as ResourceLocation[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <resource:colouredstuff:brick_blue>,
  <resource:colouredstuff:chiseled_sandstone_blue>,
  <resource:colouredstuff:cobblestone_blue>,
  <resource:colouredstuff:crafting_table_blue>,
  <resource:colouredstuff:dirt_blue>,
  <resource:colouredstuff:farmland_blue>,
  <resource:colouredstuff:fence_planks_blue>,
  <resource:colouredstuff:gate_planks_blue>,
  <resource:colouredstuff:log_blue>,
  <resource:colouredstuff:log_stripped_blue>,
  <resource:colouredstuff:path_blue>,
  <resource:colouredstuff:planks_blue>,
  <resource:colouredstuff:sapling_blue>,
  <resource:colouredstuff:slab_brick_blue>,
  <resource:colouredstuff:slab_cobblestone_blue>,
  <resource:colouredstuff:slab_planks_blue>,
  <resource:colouredstuff:slab_sandstone_blue>,
  <resource:colouredstuff:slab_stone_blue>,
  <resource:colouredstuff:slab_stone_bricks_blue>,
  <resource:colouredstuff:smooth_sandstone_blue>,
  <resource:colouredstuff:stairs_brick_blue>,
  <resource:colouredstuff:stairs_cobblestone_blue>,
  <resource:colouredstuff:stairs_planks_blue>,
  <resource:colouredstuff:stairs_stone_blue>,
  <resource:colouredstuff:stairs_stone_bricks_blue>,
  <resource:colouredstuff:stone_bricks_blue>,
  <resource:colouredstuff:wall_cobblestone_blue>,
  <resource:colouredstuff:wall_sandstone_blue>,
  <resource:colouredstuff:wall_stone_blue>,
  <resource:colouredstuff:wall_stone_bricks_blue>,
  <resource:energeticsheep:blue_energetic_wool>,
  <resource:forcecraft:blue_chu_jelly>,
  <resource:forcecraft:blue_force_furnace>,
  <resource:forcecraft:force_blue_torch>,
  <resource:forcecraft:force_brick_blue>,
  <resource:forcecraft:force_brick_blue_slab>,
  <resource:forcecraft:force_brick_blue_stairs>,
  <resource:minecraft:blue_banner>,
  <resource:minecraft:blue_bed>,
  <resource:minecraft:blue_candle>,
  <resource:minecraft:blue_carpet>,
  <resource:minecraft:blue_concrete>,
  <resource:minecraft:blue_concrete_powder>,
  <resource:minecraft:blue_dye>,
  <resource:minecraft:blue_glazed_terracotta>,
  <resource:minecraft:blue_ice>,
  <resource:minecraft:blue_orchid>,
  <resource:minecraft:blue_shulker_box>,
  <resource:minecraft:blue_stained_glass>,
  <resource:minecraft:blue_stained_glass_pane>,
  <resource:minecraft:blue_terracotta>,
  <resource:minecraft:blue_wool>,
  <resource:minecraft:lapis_lazuli>,
  <resource:minecraft:water_bucket>,
  <resource:mysticalagriculture:blue_crop_essence>,
  <resource:mysticalagriculture:blue_crop_seeds>,
  <resource:mysticalagriculture:imperium_essence>,
  <resource:sf5_things:block_of_blue_dye>,
  <resource:sf5_things:blue_apple>,
  <resource:sf5_things:light_blue_apple>,
  <resource:supplementaries:candle_holder_blue>,
  <resource:supplementaries:colouredstuff/sign_post_blue>,
  <resource:tintedcampfires:blue_campfire>

  // GENERATOR END
];

for item in items {
  <tag:items:skyfactory_5:colored_items>.addId(item);
  <tag:items:skyfactory_5:colored_items/blue>.addId(item);
}
