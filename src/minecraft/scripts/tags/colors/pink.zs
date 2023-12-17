#loader tags

import crafttweaker.api.resource.ResourceLocation;

val items as ResourceLocation[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <resource:biggerreactors:ludicrite_block>,
  <resource:colouredstuff:brick_pink>,
  <resource:colouredstuff:chiseled_sandstone_pink>,
  <resource:colouredstuff:cobblestone_pink>,
  <resource:colouredstuff:crafting_table_pink>,
  <resource:colouredstuff:dirt_pink>,
  <resource:colouredstuff:farmland_pink>,
  <resource:colouredstuff:fence_planks_pink>,
  <resource:colouredstuff:gate_planks_pink>,
  <resource:colouredstuff:log_pink>,
  <resource:colouredstuff:log_stripped_pink>,
  <resource:colouredstuff:path_pink>,
  <resource:colouredstuff:planks_pink>,
  <resource:colouredstuff:sapling_pink>,
  <resource:colouredstuff:slab_brick_pink>,
  <resource:colouredstuff:slab_cobblestone_pink>,
  <resource:colouredstuff:slab_planks_pink>,
  <resource:colouredstuff:slab_sandstone_pink>,
  <resource:colouredstuff:slab_stone_bricks_pink>,
  <resource:colouredstuff:slab_stone_pink>,
  <resource:colouredstuff:smooth_sandstone_pink>,
  <resource:colouredstuff:stairs_brick_pink>,
  <resource:colouredstuff:stairs_cobblestone_pink>,
  <resource:colouredstuff:stairs_planks_pink>,
  <resource:colouredstuff:stairs_stone_bricks_pink>,
  <resource:colouredstuff:stairs_stone_pink>,
  <resource:colouredstuff:stone_bricks_pink>,
  <resource:colouredstuff:wall_cobblestone_pink>,
  <resource:colouredstuff:wall_sandstone_pink>,
  <resource:colouredstuff:wall_stone_bricks_pink>,
  <resource:colouredstuff:wall_stone_pink>,
  <resource:colourfulllamas:llama_steak>,
  <resource:create:electron_tube>,
  <resource:create:polished_rose_quartz>,
  <resource:create:rose_quartz>,
  <resource:forcecraft:baconator>,
  <resource:forcecraft:force_brick_pink>,
  <resource:forcecraft:force_brick_pink_slab>,
  <resource:forcecraft:force_brick_pink_stairs>,
  <resource:forcecraft:pink_force_furnace>,
  <resource:forcecraft:raw_bacon>,
  <resource:immersiveengineering:sheetmetal_colored_pink>,
  <resource:immersiveengineering:slab_sheetmetal_colored_pink>,
  <resource:minecraft:beef>,
  <resource:minecraft:cherry_boat>,
  <resource:minecraft:cherry_chest_boat>,
  <resource:minecraft:cherry_door>,
  <resource:minecraft:cherry_fence_gate>,
  <resource:minecraft:cherry_log>,
  <resource:minecraft:cherry_planks>,
  <resource:minecraft:cherry_pressure_plate>,
  <resource:minecraft:cherry_sapling>,
  <resource:minecraft:cherry_trapdoor>,
  <resource:minecraft:chicken>,
  <resource:minecraft:mutton>,
  <resource:minecraft:pink_banner>,
  <resource:minecraft:pink_carpet>,
  <resource:minecraft:pink_concrete>,
  <resource:minecraft:pink_concrete_powder>,
  <resource:minecraft:pink_dye>,
  <resource:minecraft:pink_shulker_box>,
  <resource:minecraft:pink_stained_glass>,
  <resource:minecraft:pink_stained_glass_pane>,
  <resource:minecraft:pink_wool>,
  <resource:minecraft:porkchop>,
  <resource:minecraft:rabbit>,
  <resource:minecraft:stripped_cherry_log>,
  <resource:mysticalagriculture:pink_crop_essence>,
  <resource:mysticalagriculture:pink_crop_seeds>,
  <resource:openstairs:open_cherry_stairs>,
  <resource:openstairs:open_cherry_stairs_float>,
  <resource:openstairs:open_cherry_stairs_outside>,
  <resource:openstairs:open_cherry_stairsinside>,
  <resource:pizzacraft:ham>,
  <resource:pizzacraft:wing>,
  <resource:scarecrowsterritory:pink_scarecrow>,
  <resource:sf5_things:pink_apple>,
  <resource:supplementaries:soap>,
  <resource:supplementaries:trapped_present_pink>

  // GENERATOR END
];

for item in items {
  <tag:items:skyfactory_5:colored_items>.addId(item);
  <tag:items:skyfactory_5:colored_items/pink>.addId(item);
}
