import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.Brown];
val textColor = 0xFFFFFF;

val items as IItemStack[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <item:minecraft:dirt>,
  <item:minecraft:coarse_dirt>,
  <item:minecraft:rooted_dirt>,
  <item:colouredstuff:dirt_brown>,
  <item:minecraft:brown_wool>,
  <item:minecraft:brown_mushroom>,
  <item:minecraft:brown_mushroom_block>,
  <item:minecraft:brown_terracotta>,
  <item:minecraft:brown_carpet>,
  <item:minecraft:brown_stained_glass>,
  <item:minecraft:brown_stained_glass_pane>,
  <item:minecraft:brown_shulker_box>,
  <item:minecraft:brown_glazed_terracotta>,
  <item:minecraft:brown_concrete>,
  <item:minecraft:brown_concrete_powder>,
  <item:minecraft:brown_dye>,
  <item:minecraft:brown_bed>,
  <item:minecraft:brown_banner>,
  <item:minecraft:brown_candle>,
  <item:forcecraft:brown_force_furnace>,
  <item:forcecraft:force_brick_brown>,
  <item:forcecraft:force_brick_brown_stairs>,
  <item:forcecraft:force_brick_brown_slab>,
  <item:forcecraft:force_brown_torch>,
  <item:tinted_torches:brown_torch>,
  <item:colouredstuff:planks_brown>,
  <item:colouredstuff:log_brown>,
  <item:colouredstuff:log_stripped_brown>,
  <item:colouredstuff:crafting_table_brown>,
  <item:colouredstuff:leaves_brown>,
  <item:colouredstuff:sapling_brown>,
  <item:colouredstuff:cobblestone_brown>,
  <item:colouredstuff:stone_brown>,
  <item:colouredstuff:stone_bricks_brown>,
  <item:colouredstuff:chiseled_stone_bricks_brown>,
  <item:colouredstuff:path_brown>,
  <item:colouredstuff:farmland_brown>,
  <item:colouredstuff:sandstone_brown>,
  <item:colouredstuff:cut_sandstone_brown>,
  <item:colouredstuff:smooth_sandstone_brown>,
  <item:colouredstuff:chiseled_sandstone_brown>,
  <item:colouredstuff:brick_brown>,
  <item:colouredstuff:slab_planks_brown>,
  <item:colouredstuff:slab_cobblestone_brown>,
  <item:colouredstuff:slab_stone_brown>,
  <item:colouredstuff:slab_stone_bricks_brown>,
  <item:colouredstuff:slab_sandstone_brown>,
  <item:colouredstuff:slab_brick_brown>,
  <item:colouredstuff:stairs_brick_brown>,
  <item:colouredstuff:stairs_planks_brown>,
  <item:colouredstuff:stairs_stone_brown>,
  <item:colouredstuff:stairs_cobblestone_brown>,
  <item:colouredstuff:stairs_sandstone_brown>,
  <item:colouredstuff:stairs_stone_bricks_brown>,
  <item:colouredstuff:wall_stone_brown>,
  <item:colouredstuff:wall_sandstone_brown>,
  <item:colouredstuff:wall_planks_brown>,
  <item:colouredstuff:wall_cobblestone_brown>,
  <item:colouredstuff:wall_stone_bricks_brown>,
  <item:colouredstuff:wall_brick_brown>,
  <item:colouredstuff:fence_planks_brown>,
  <item:colouredstuff:gate_planks_brown>,
  <item:tintedcampfires:brown_campfire>,
  <item:sf5_things:brown_apple>,
  <item:minecraft:leather>

  // GENERATOR END
];

for item in items {
  item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(textColor)));
}
