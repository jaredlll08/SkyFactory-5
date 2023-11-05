import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.Cyan];
val textColor = 0xFFFFFF;

val items as IItemStack[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <item:additionallanterns:oxidized_copper_chain>,
  <item:additionallanterns:waxed_oxidized_copper_chain>,
  <item:ae2:cyan_paint_ball>,
  <item:ae2:ender_dust>,
  <item:biggerreactors:cyanite_block>,
  <item:biggerreactors:cyanite_dust>,
  <item:biggerreactors:cyanite_ingot>,
  <item:colouredstuff:brick_brown>,
  <item:colouredstuff:brick_cyan>,
  <item:colouredstuff:chiseled_sandstone_cyan>,
  <item:colouredstuff:chiseled_stone_bricks_cyan>,
  <item:colouredstuff:cobblestone_cyan>,
  <item:colouredstuff:crafting_table_cyan>,
  <item:colouredstuff:cut_sandstone_cyan>,
  <item:colouredstuff:dirt_cyan>,
  <item:colouredstuff:farmland_cyan>,
  <item:colouredstuff:fence_planks_cyan>,
  <item:colouredstuff:gate_planks_cyan>,
  <item:colouredstuff:leaves_cyan>,
  <item:colouredstuff:log_cyan>,
  <item:colouredstuff:log_stripped_cyan>,
  <item:colouredstuff:path_cyan>,
  <item:colouredstuff:planks_cyan>,
  <item:colouredstuff:sandstone_cyan>,
  <item:colouredstuff:sapling_cyan>,
  <item:colouredstuff:slab_brick_cyan>,
  <item:colouredstuff:slab_cobblestone_cyan>,
  <item:colouredstuff:slab_planks_cyan>,
  <item:colouredstuff:slab_sandstone_cyan>,
  <item:colouredstuff:slab_stone_bricks_cyan>,
  <item:colouredstuff:slab_stone_cyan>,
  <item:colouredstuff:smooth_sandstone_cyan>,
  <item:colouredstuff:stairs_brick_cyan>,
  <item:colouredstuff:stairs_cobblestone_cyan>,
  <item:colouredstuff:stairs_planks_cyan>,
  <item:colouredstuff:stairs_sandstone_cyan>,
  <item:colouredstuff:stairs_stone_bricks_cyan>,
  <item:colouredstuff:stairs_stone_cyan>,
  <item:colouredstuff:stone_bricks_cyan>,
  <item:colouredstuff:stone_cyan>,
  <item:colouredstuff:wall_brick_cyan>,
  <item:colouredstuff:wall_cobblestone_cyan>,
  <item:colouredstuff:wall_cobblestone_cyan>,
  <item:colouredstuff:wall_planks_cyan>,
  <item:colouredstuff:wall_sandstone_cyan>,
  <item:colouredstuff:wall_stone_bricks_cyan>,
  <item:colouredstuff:wall_stone_cyan>,
  <item:create:oxidized_copper_shingle_slab>,
  <item:create:oxidized_copper_shingle_stairs>,
  <item:create:oxidized_copper_shingles>,
  <item:create:oxidized_copper_tile_slab>,
  <item:create:oxidized_copper_tile_stairs>,
  <item:create:oxidized_copper_tiles>,
  <item:create:waxed_oxidized_copper_shingle_slab>,
  <item:create:waxed_oxidized_copper_shingle_stairs>,
  <item:create:waxed_oxidized_copper_shingles>,
  <item:create:waxed_oxidized_copper_tile_slab>,
  <item:create:waxed_oxidized_copper_tile_stairs>,
  <item:create:waxed_oxidized_copper_tiles>,
  <item:cyclic:eye_redstone>,
  <item:cyclic:eye_teleport>,
  <item:enderio:ender_crystal_powder>,
  <item:enderio:ender_crystal>,
  <item:enderio:enderios>,
  <item:enderio:powdered_ender_pearl>,
  <item:forcecraft:cyan_force_furnace>,
  <item:forcecraft:force_brick_cyan_slab>,
  <item:forcecraft:force_brick_cyan_stairs>,
  <item:forcecraft:force_brick_cyan>,
  <item:forcecraft:force_cyan_torch>,
  <item:friendsandfoes:oxidized_copper_button>,
  <item:friendsandfoes:oxidized_lightning_rod>,
  <item:friendsandfoes:waxed_oxidized_copper_button>,
  <item:friendsandfoes:waxed_oxidized_lightning_rod>,
  <item:minecraft:cyan_banner>,
  <item:minecraft:cyan_bed>,
  <item:minecraft:cyan_candle>,
  <item:minecraft:cyan_carpet>,
  <item:minecraft:cyan_concrete_powder>,
  <item:minecraft:cyan_concrete>,
  <item:minecraft:cyan_dye>,
  <item:minecraft:cyan_glazed_terracotta>,
  <item:minecraft:cyan_shulker_box>,
  <item:minecraft:cyan_stained_glass_pane>,
  <item:minecraft:cyan_stained_glass>,
  <item:minecraft:cyan_terracotta>,
  <item:minecraft:cyan_wool>,
  <item:minecraft:ender_eye>,
  <item:minecraft:ender_pearl>,
  <item:minecraft:oxidized_copper>,
  <item:minecraft:oxidized_cut_copper_slab>,
  <item:minecraft:oxidized_cut_copper_stairs>,
  <item:minecraft:oxidized_cut_copper>,
  <item:minecraft:stripped_warped_stem>,
  <item:minecraft:warped_planks>,
  <item:minecraft:warped_stem>,
  <item:minecraft:waxed_oxidized_copper>,
  <item:minecraft:waxed_oxidized_cut_copper_slab>,
  <item:minecraft:waxed_oxidized_cut_copper_stairs>,
  <item:minecraft:waxed_oxidized_cut_copper>,
  <item:obtrophies:trophy>.withTag({BlockEntityTag: {VariantID: 0, entity: "veincreeper:cyan"}}),
  <item:sf5_things:cyan_apple>,
  <item:sf5stuff:composting_bin_cyan>,
  <item:sf5stuff:crucible_cyan>,
  <item:tinted_torches:cyan_torch>

  // GENERATOR END
];

for item in items {
  item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(textColor)));
}
