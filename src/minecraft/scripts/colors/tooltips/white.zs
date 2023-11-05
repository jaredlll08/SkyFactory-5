import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.White];
val textColor = 0x000000;

val items as IItemStack[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <item:colouredstuff:brick_white>,
  <item:colouredstuff:chiseled_sandstone_white>,
  <item:colouredstuff:chiseled_stone_bricks_white>,
  <item:colouredstuff:cobblestone_white>,
  <item:colouredstuff:crafting_table_white>,
  <item:colouredstuff:cut_sandstone_white>,
  <item:colouredstuff:dirt_white>,
  <item:colouredstuff:farmland_white>,
  <item:colouredstuff:fence_planks_white>,
  <item:colouredstuff:gate_planks_white>,
  <item:colouredstuff:leaves_white>,
  <item:colouredstuff:log_stripped_white>,
  <item:colouredstuff:log_white>,
  <item:colouredstuff:path_white>,
  <item:colouredstuff:planks_white>,
  <item:colouredstuff:sandstone_white>,
  <item:colouredstuff:sapling_white>,
  <item:colouredstuff:slab_brick_white>,
  <item:colouredstuff:slab_cobblestone_white>,
  <item:colouredstuff:slab_planks_white>,
  <item:colouredstuff:slab_sandstone_white>,
  <item:colouredstuff:slab_stone_bricks_white>,
  <item:colouredstuff:slab_stone_white>,
  <item:colouredstuff:smooth_sandstone_white>,
  <item:colouredstuff:stairs_brick_white>,
  <item:colouredstuff:stairs_cobblestone_white>,
  <item:colouredstuff:stairs_planks_white>,
  <item:colouredstuff:stairs_sandstone_white>,
  <item:colouredstuff:stairs_stone_bricks_white>,
  <item:colouredstuff:stairs_stone_white>,
  <item:colouredstuff:stone_bricks_white>,
  <item:colouredstuff:stone_white>,
  <item:colouredstuff:wall_brick_white>,
  <item:colouredstuff:wall_cobblestone_white>,
  <item:colouredstuff:wall_planks_white>,
  <item:colouredstuff:wall_sandstone_white>,
  <item:colouredstuff:wall_stone_bricks_white>,
  <item:colouredstuff:wall_stone_white>,
  <item:energeticsheep:white_energetic_wool>,
  <item:forcecraft:force_brick_white_slab>,
  <item:forcecraft:force_brick_white_stairs>,
  <item:forcecraft:force_brick_white>,
  <item:forcecraft:force_white_torch>,
  <item:forcecraft:white_force_furnace>,
  <item:minecraft:bone_block>,
  <item:minecraft:bone_meal>,
  <item:minecraft:bone>,
  <item:minecraft:string>,
  <item:minecraft:white_banner>,
  <item:minecraft:white_bed>,
  <item:minecraft:white_candle>,
  <item:minecraft:white_carpet>,
  <item:minecraft:white_concrete_powder>,
  <item:minecraft:white_concrete>,
  <item:minecraft:white_dye>,
  <item:minecraft:white_glazed_terracotta>,
  <item:minecraft:white_shulker_box>,
  <item:minecraft:white_stained_glass_pane>,
  <item:minecraft:white_stained_glass>,
  <item:minecraft:white_terracotta>,
  <item:minecraft:white_tulip>,
  <item:minecraft:white_wool>,
  <item:scarecrowsterritory:white_scarecrow>,
  <item:sf5_things:block_of_white_dye>,
  <item:sf5_things:white_apple>,
  <item:sf5_things:white_stick>,
  <item:sf5stuff:composting_bin_white>,
  <item:sf5stuff:crucible_white>,
  <item:supplementaries:candle_holder_white>,
  <item:supplementaries:colouredstuff/sign_post_white>,
  <item:supplementaries:flag_white>,
  <item:supplementaries:present_white>,
  <item:supplementaries:trapped_present_white>,
  <item:tinted_torches:white_torch>,
  <item:tintedcampfires:white_campfire>

  // GENERATOR END
];

for item in items {
  item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(textColor)));
}
