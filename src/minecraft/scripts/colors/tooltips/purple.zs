import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.Purple];
val textColor = 0xFFFFFF;

val items as IItemStack[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <item:colouredstuff:brick_purple>,
  <item:colouredstuff:chiseled_sandstone_purple>,
  <item:colouredstuff:chiseled_stone_bricks_purple>,
  <item:colouredstuff:cobblestone_purple>,
  <item:colouredstuff:crafting_table_purple>,
  <item:colouredstuff:cut_sandstone_purple>,
  <item:colouredstuff:dirt_purple>,
  <item:colouredstuff:farmland_purple>,
  <item:colouredstuff:fence_planks_purple>,
  <item:colouredstuff:gate_planks_purple>,
  <item:colouredstuff:leaves_purple>,
  <item:colouredstuff:log_purple>,
  <item:colouredstuff:log_stripped_purple>,
  <item:colouredstuff:path_purple>,
  <item:colouredstuff:planks_purple>,
  <item:colouredstuff:sandstone_purple>,
  <item:colouredstuff:sapling_purple>,
  <item:colouredstuff:slab_brick_purple>,
  <item:colouredstuff:slab_cobblestone_purple>,
  <item:colouredstuff:slab_planks_purple>,
  <item:colouredstuff:slab_sandstone_purple>,
  <item:colouredstuff:slab_stone_bricks_purple>,
  <item:colouredstuff:slab_stone_purple>,
  <item:colouredstuff:smooth_sandstone_purple>,
  <item:colouredstuff:stairs_brick_purple>,
  <item:colouredstuff:stairs_cobblestone_purple>,
  <item:colouredstuff:stairs_planks_purple>,
  <item:colouredstuff:stairs_sandstone_purple>,
  <item:colouredstuff:stairs_stone_bricks_purple>,
  <item:colouredstuff:stairs_stone_purple>,
  <item:colouredstuff:stone_bricks_purple>,
  <item:colouredstuff:stone_purple>,
  <item:colouredstuff:wall_brick_purple>,
  <item:colouredstuff:wall_cobblestone_purple>,
  <item:colouredstuff:wall_planks_purple>,
  <item:colouredstuff:wall_sandstone_purple>,
  <item:colouredstuff:wall_stone_bricks_purple>,
  <item:colouredstuff:wall_stone_purple>,
  <item:forcecraft:force_brick_purple_slab>,
  <item:forcecraft:force_brick_purple_stairs>,
  <item:forcecraft:force_brick_purple>,
  <item:forcecraft:force_purple_torch>,
  <item:forcecraft:purple_force_furnace>,
  <item:minecraft:amethyst_block>,
  <item:minecraft:amethyst_shard>,
  <item:minecraft:budding_amethyst>,
  <item:minecraft:purple_banner>,
  <item:minecraft:purple_bed>,
  <item:minecraft:purple_candle>,
  <item:minecraft:purple_carpet>,
  <item:minecraft:purple_concrete_powder>,
  <item:minecraft:purple_concrete>,
  <item:minecraft:purple_dye>,
  <item:minecraft:purple_glazed_terracotta>,
  <item:minecraft:purple_shulker_box>,
  <item:minecraft:purple_stained_glass_pane>,
  <item:minecraft:purple_stained_glass>,
  <item:minecraft:purple_terracotta>,
  <item:minecraft:purple_wool>,
  <item:sf5_things:purple_apple>,
  <item:sf5stuff:composting_bin_purple>,
  <item:sf5stuff:crucible_purple>,
  <item:supplementaries:candle_holder_purple>,
  <item:supplementaries:flag_purple>,
  <item:supplementaries:present_purple>,
  <item:supplementaries:trapped_present_purple>,
  <item:tinted_torches:purple_torch>,
  <item:tintedcampfires:purple_campfire>

  // GENERATOR END
];

for item in items {
  item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(textColor)));
}
