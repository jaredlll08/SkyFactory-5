import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.LightGray];
val textColor = 0xFFFFFF;

val items as IItemStack[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <item:colouredstuff:brick_light_gray>,
  <item:colouredstuff:chiseled_sandstone_light_gray>,
  <item:colouredstuff:chiseled_stone_bricks_light_gray>,
  <item:colouredstuff:cobblestone_light_gray>,
  <item:colouredstuff:crafting_table_light_gray>,
  <item:colouredstuff:cut_sandstone_light_gray>,
  <item:colouredstuff:dirt_light_gray>,
  <item:colouredstuff:farmland_light_gray>,
  <item:colouredstuff:fence_planks_light_gray>,
  <item:colouredstuff:gate_planks_light_gray>,
  <item:colouredstuff:leaves_light_gray>,
  <item:colouredstuff:log_light_gray>,
  <item:colouredstuff:log_stripped_light_gray>,
  <item:colouredstuff:path_light_gray>,
  <item:colouredstuff:planks_light_gray>,
  <item:colouredstuff:sandstone_light_gray>,
  <item:colouredstuff:sapling_light_gray>,
  <item:colouredstuff:slab_brick_light_gray>,
  <item:colouredstuff:slab_cobblestone_light_gray>,
  <item:colouredstuff:slab_planks_light_gray>,
  <item:colouredstuff:slab_sandstone_light_gray>,
  <item:colouredstuff:slab_stone_bricks_light_gray>,
  <item:colouredstuff:slab_stone_light_gray>,
  <item:colouredstuff:smooth_sandstone_light_gray>,
  <item:colouredstuff:stairs_brick_light_gray>,
  <item:colouredstuff:stairs_cobblestone_light_gray>,
  <item:colouredstuff:stairs_planks_light_gray>,
  <item:colouredstuff:stairs_sandstone_light_gray>,
  <item:colouredstuff:stairs_stone_bricks_light_gray>,
  <item:colouredstuff:stairs_stone_light_gray>,
  <item:colouredstuff:stone_bricks_light_gray>,
  <item:colouredstuff:stone_light_gray>,
  <item:colouredstuff:wall_brick_light_gray>,
  <item:colouredstuff:wall_cobblestone_light_gray>,
  <item:colouredstuff:wall_planks_light_gray>,
  <item:colouredstuff:wall_sandstone_light_gray>,
  <item:colouredstuff:wall_stone_bricks_light_gray>,
  <item:colouredstuff:wall_stone_light_gray>,
  <item:energeticsheep:light_gray_energetic_wool>,
  <item:forcecraft:force_brick_light_gray_slab>,
  <item:forcecraft:force_brick_light_gray_stairs>,
  <item:forcecraft:force_brick_light_gray>,
  <item:forcecraft:force_light_gray_torch>,
  <item:forcecraft:light_gray_force_furnace>,
  <item:minecraft:goat_horn>,
  <item:minecraft:iron_bars>,
  <item:minecraft:iron_block>,
  <item:minecraft:iron_door>,
  <item:minecraft:iron_ingot>,
  <item:minecraft:iron_nugget>,
  <item:minecraft:iron_trapdoor>,
  <item:minecraft:light_gray_banner>,
  <item:minecraft:light_gray_bed>,
  <item:minecraft:light_gray_candle>,
  <item:minecraft:light_gray_carpet>,
  <item:minecraft:light_gray_concrete_powder>,
  <item:minecraft:light_gray_concrete>,
  <item:minecraft:light_gray_dye>,
  <item:minecraft:light_gray_glazed_terracotta>,
  <item:minecraft:light_gray_shulker_box>,
  <item:minecraft:light_gray_stained_glass_pane>,
  <item:minecraft:light_gray_stained_glass>,
  <item:minecraft:light_gray_terracotta>,
  <item:minecraft:light_gray_wool>,
  <item:minecraft:lodestone>,
  <item:sf5stuff:composting_bin_light_gray>,
  <item:sf5stuff:crucible_light_gray>,
  <item:supplementaries:candle_holder_light_gray>,
  <item:supplementaries:colouredstuff/sign_post_light_gray>,
  <item:supplementaries:flag_light_gray>,
  <item:supplementaries:present_light_gray>,
  <item:supplementaries:trapped_present_light_gray>,
  <item:tinted_torches:light_gray_torch>,
  <item:tintedcampfires:light_gray_campfire>

  // GENERATOR END
];

for item in items {
  item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(textColor)));
}
