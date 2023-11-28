import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.Gray];
val textColor = 0xFFFFFF;

val items as IItemStack[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <item:colouredstuff:brick_gray>,
  <item:colouredstuff:chiseled_sandstone_gray>,
  <item:colouredstuff:chiseled_stone_bricks_gray>,
  <item:colouredstuff:cobblestone_gray>,
  <item:colouredstuff:crafting_table_gray>,
  <item:colouredstuff:cut_sandstone_gray>,
  <item:colouredstuff:dirt_gray>,
  <item:colouredstuff:farmland_gray>,
  <item:colouredstuff:fence_planks_gray>,
  <item:colouredstuff:gate_planks_gray>,
  <item:colouredstuff:leaves_gray>,
  <item:colouredstuff:log_gray>,
  <item:colouredstuff:log_stripped_gray>,
  <item:colouredstuff:path_gray>,
  <item:colouredstuff:planks_gray>,
  <item:colouredstuff:sandstone_gray>,
  <item:colouredstuff:sapling_gray>,
  <item:colouredstuff:slab_brick_gray>,
  <item:colouredstuff:slab_cobblestone_gray>,
  <item:colouredstuff:slab_planks_gray>,
  <item:colouredstuff:slab_sandstone_gray>,
  <item:colouredstuff:slab_stone_bricks_gray>,
  <item:colouredstuff:slab_stone_gray>,
  <item:colouredstuff:smooth_sandstone_gray>,
  <item:colouredstuff:stairs_brick_gray>,
  <item:colouredstuff:stairs_cobblestone_gray>,
  <item:colouredstuff:stairs_planks_gray>,
  <item:colouredstuff:stairs_sandstone_gray>,
  <item:colouredstuff:stairs_stone_bricks_gray>,
  <item:colouredstuff:stairs_stone_gray>,
  <item:colouredstuff:stone_bricks_gray>,
  <item:colouredstuff:stone_gray>,
  <item:colouredstuff:wall_brick_gray>,
  <item:colouredstuff:wall_cobblestone_gray>,
  <item:colouredstuff:wall_planks_gray>,
  <item:colouredstuff:wall_sandstone_gray>,
  <item:colouredstuff:wall_stone_bricks_gray>,
  <item:colouredstuff:wall_stone_gray>,
  <item:minecraft:chiseled_stone_bricks>,
  <item:minecraft:cobblestone>,
  <item:minecraft:cobblestone_slab>,
  <item:minecraft:cobblestone_stairs>,
  <item:minecraft:cobblestone_wall>,
  <item:minecraft:cracked_stone_bricks>,
  <item:minecraft:furnace>,
  <item:minecraft:gray_concrete>,
  <item:minecraft:gray_concrete_powder>,
  <item:minecraft:gray_dye>,
  <item:minecraft:infested_chiseled_stone_bricks>,
  <item:minecraft:infested_cracked_stone_bricks>,
  <item:minecraft:infested_stone_bricks>,
  <item:minecraft:smooth_stone>,
  <item:minecraft:smooth_stone_slab>,
  <item:minecraft:stone>,
  <item:minecraft:stone_brick_slab>,
  <item:minecraft:stone_brick_stairs>,
  <item:minecraft:stone_brick_wall>,
  <item:minecraft:stone_bricks>,
  <item:minecraft:stone_button>,
  <item:minecraft:stone_pressure_plate>,
  <item:minecraft:stone_slab>,
  <item:minecraft:stone_stairs>,
  <item:mysticalagriculture:gray_crop_essence>,
  <item:mysticalagriculture:gray_crop_seeds>,
  <item:sf5_things:gray_apple>,
  <item:tinted_torches:gray_torch>

  // GENERATOR END
];

for item in items {
  item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(textColor)));
}
