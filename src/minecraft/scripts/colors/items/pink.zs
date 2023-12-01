import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.Pink];
val textColor = 0xFFFFFF;

val items as IItemStack[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <item:biggerreactors:ludicrite_block>,
  <item:colouredstuff:brick_pink>,
  <item:colouredstuff:chiseled_sandstone_pink>,
  <item:colouredstuff:cobblestone_pink>,
  <item:colouredstuff:crafting_table_pink>,
  <item:colouredstuff:dirt_pink>,
  <item:colouredstuff:farmland_pink>,
  <item:colouredstuff:fence_planks_pink>,
  <item:colouredstuff:gate_planks_pink>,
  <item:colouredstuff:log_pink>,
  <item:colouredstuff:log_stripped_pink>,
  <item:colouredstuff:path_pink>,
  <item:colouredstuff:planks_pink>,
  <item:colouredstuff:sapling_pink>,
  <item:colouredstuff:slab_brick_pink>,
  <item:colouredstuff:slab_cobblestone_pink>,
  <item:colouredstuff:slab_planks_pink>,
  <item:colouredstuff:slab_sandstone_pink>,
  <item:colouredstuff:slab_stone_bricks_pink>,
  <item:colouredstuff:slab_stone_pink>,
  <item:colouredstuff:smooth_sandstone_pink>,
  <item:colouredstuff:stairs_brick_pink>,
  <item:colouredstuff:stairs_cobblestone_pink>,
  <item:colouredstuff:stairs_planks_pink>,
  <item:colouredstuff:stairs_stone_bricks_pink>,
  <item:colouredstuff:stairs_stone_pink>,
  <item:colouredstuff:stone_bricks_pink>,
  <item:colouredstuff:wall_cobblestone_pink>,
  <item:colouredstuff:wall_sandstone_pink>,
  <item:colouredstuff:wall_stone_bricks_pink>,
  <item:colouredstuff:wall_stone_pink>,
  <item:colourfulllamas:llama_steak>,
  <item:create:electron_tube>,
  <item:create:polished_rose_quartz>,
  <item:create:rose_quartz>,
  <item:forcecraft:baconator>,
  <item:forcecraft:force_brick_pink>,
  <item:forcecraft:force_brick_pink_slab>,
  <item:forcecraft:force_brick_pink_stairs>,
  <item:forcecraft:pink_force_furnace>,
  <item:forcecraft:raw_bacon>,
  <item:immersiveengineering:sheetmetal_colored_pink>,
  <item:immersiveengineering:slab_sheetmetal_colored_pink>,
  <item:minecraft:beef>,
  <item:minecraft:cherry_boat>,
  <item:minecraft:cherry_chest_boat>,
  <item:minecraft:cherry_door>,
  <item:minecraft:cherry_fence_gate>,
  <item:minecraft:cherry_log>,
  <item:minecraft:cherry_planks>,
  <item:minecraft:cherry_pressure_plate>,
  <item:minecraft:cherry_sapling>,
  <item:minecraft:cherry_trapdoor>,
  <item:minecraft:chicken>,
  <item:minecraft:mutton>,
  <item:minecraft:pink_banner>,
  <item:minecraft:pink_carpet>,
  <item:minecraft:pink_concrete>,
  <item:minecraft:pink_concrete_powder>,
  <item:minecraft:pink_dye>,
  <item:minecraft:pink_shulker_box>,
  <item:minecraft:pink_stained_glass>,
  <item:minecraft:pink_stained_glass_pane>,
  <item:minecraft:pink_wool>,
  <item:minecraft:porkchop>,
  <item:minecraft:rabbit>,
  <item:minecraft:stripped_cherry_log>,
  <item:mysticalagriculture:pink_crop_essence>,
  <item:mysticalagriculture:pink_crop_seeds>,
  <item:openstairs:open_cherry_stairs>,
  <item:openstairs:open_cherry_stairs_float>,
  <item:openstairs:open_cherry_stairs_outside>,
  <item:openstairs:open_cherry_stairsinside>,
  <item:pizzacraft:ham>,
  <item:pizzacraft:wing>,
  <item:scarecrowsterritory:pink_scarecrow>,
  <item:sf5_things:pink_apple>,
  <item:sf5stuff:crucible_pink>,
  <item:supplementaries:soap>,
  <item:supplementaries:trapped_present_pink>

  // GENERATOR END
];

for item in items {
  item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(textColor)));

  if (!item.hasTag) {
    <tag:items:skyfactory_5:colored_items>.add(item);
    <tag:items:skyfactory_5:colored_items/pink>.add(item);
  }
}
