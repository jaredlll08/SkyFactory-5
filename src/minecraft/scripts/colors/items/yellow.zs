import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.Yellow];
val textColor = 0xFFFFFF;

val items as IItemStack[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <item:bhc:yellow_heart>,
  <item:bhc:yellow_heart_canister>,
  <item:bhc:yellow_heart_melted>,
  <item:bhc:yellow_heart_patch>,
  <item:colouredstuff:brick_yellow>,
  <item:colouredstuff:chiseled_sandstone_yellow>,
  <item:colouredstuff:chiseled_stone_bricks_yellow>,
  <item:colouredstuff:cobblestone_yellow>,
  <item:colouredstuff:crafting_table_yellow>,
  <item:colouredstuff:cut_sandstone_yellow>,
  <item:colouredstuff:dirt_yellow>,
  <item:colouredstuff:farmland_yellow>,
  <item:colouredstuff:fence_planks_yellow>,
  <item:colouredstuff:gate_planks_yellow>,
  <item:colouredstuff:leaves_yellow>,
  <item:colouredstuff:log_stripped_yellow>,
  <item:colouredstuff:log_yellow>,
  <item:colouredstuff:path_yellow>,
  <item:colouredstuff:planks_yellow>,
  <item:colouredstuff:sandstone_yellow>,
  <item:colouredstuff:sapling_yellow>,
  <item:colouredstuff:slab_brick_yellow>,
  <item:colouredstuff:slab_cobblestone_yellow>,
  <item:colouredstuff:slab_planks_yellow>,
  <item:colouredstuff:slab_sandstone_yellow>,
  <item:colouredstuff:slab_stone_bricks_yellow>,
  <item:colouredstuff:slab_stone_yellow>,
  <item:colouredstuff:smooth_sandstone_yellow>,
  <item:colouredstuff:stairs_brick_yellow>,
  <item:colouredstuff:stairs_cobblestone_yellow>,
  <item:colouredstuff:stairs_planks_yellow>,
  <item:colouredstuff:stairs_sandstone_yellow>,
  <item:colouredstuff:stairs_stone_bricks_yellow>,
  <item:colouredstuff:stairs_stone_yellow>,
  <item:colouredstuff:stone_bricks_yellow>,
  <item:colouredstuff:stone_yellow>,
  <item:colouredstuff:wall_brick_yellow>,
  <item:colouredstuff:wall_cobblestone_yellow>,
  <item:colouredstuff:wall_planks_yellow>,
  <item:colouredstuff:wall_sandstone_yellow>,
  <item:colouredstuff:wall_stone_bricks_yellow>,
  <item:colouredstuff:wall_stone_yellow>,
  <item:create:crushed_raw_gold>,
  <item:create:golden_sheet>,
  <item:cyclic:gold_bars>,
  <item:cyclic:gold_chain>,
  <item:cyclic:hopper_gold>,
  <item:energeticsheep:yellow_energetic_wool>,
  <item:forcecraft:experience_tome>,
  <item:forcecraft:force_arrow>,
  <item:forcecraft:force_belt>,
  <item:forcecraft:force_bow>,
  <item:forcecraft:force_brick>,
  <item:forcecraft:force_brick_slab>,
  <item:forcecraft:force_brick_stairs>,
  <item:forcecraft:force_brick_yellow>,
  <item:forcecraft:force_brick_yellow_slab>,
  <item:forcecraft:force_brick_yellow_stairs>,
  <item:forcecraft:force_engine>,
  <item:forcecraft:force_filled_force_flask>,
  <item:forcecraft:force_furnace>,
  <item:forcecraft:force_gear>,
  <item:forcecraft:force_gem>,
  <item:forcecraft:force_ingot>,
  <item:forcecraft:force_leaves>,
  <item:forcecraft:force_log>,
  <item:forcecraft:force_mitt>,
  <item:forcecraft:force_nugget>,
  <item:forcecraft:force_pack>,
  <item:forcecraft:force_plank_slab>,
  <item:forcecraft:force_plank_stairs>,
  <item:forcecraft:force_planks>,
  <item:forcecraft:force_rod>,
  <item:forcecraft:force_sapling>,
  <item:forcecraft:force_shears>,
  <item:forcecraft:force_stick>,
  <item:forcecraft:force_torch>,
  <item:forcecraft:force_wood>,
  <item:forcecraft:force_wrench>,
  <item:forcecraft:gold_chu_jelly>,
  <item:forcecraft:golden_power_source>,
  <item:forcecraft:treasure_core>,
  <item:minecraft:enchanted_golden_apple>,
  <item:minecraft:gold_block>,
  <item:minecraft:gold_ingot>,
  <item:minecraft:gold_nugget>,
  <item:minecraft:golden_apple>,
  <item:minecraft:golden_carrot>,
  <item:minecraft:golden_horse_armor>,
  <item:minecraft:honey_block>,
  <item:minecraft:honey_bottle>,
  <item:minecraft:honeycomb>,
  <item:minecraft:honeycomb_block>,
  <item:minecraft:raw_gold>,
  <item:minecraft:wheat>,
  <item:minecraft:yellow_banner>,
  <item:minecraft:yellow_bed>,
  <item:minecraft:yellow_candle>,
  <item:minecraft:yellow_carpet>,
  <item:minecraft:yellow_concrete>,
  <item:minecraft:yellow_concrete_powder>,
  <item:minecraft:yellow_dye>,
  <item:minecraft:yellow_glazed_terracotta>,
  <item:minecraft:yellow_shulker_box>,
  <item:minecraft:yellow_stained_glass>,
  <item:minecraft:yellow_stained_glass_pane>,
  <item:minecraft:yellow_terracotta>,
  <item:minecraft:yellow_wool>,
  <item:mysticalagriculture:yellow_crop_essence>,
  <item:mysticalagriculture:yellow_crop_seeds>,
  <item:overweight_farming:overweight_golden_apple_block>,
  <item:sf5_things:yellow_apple>,
  <item:supplementaries:candle_holder_yellow>,
  <item:supplementaries:flag_yellow>,
  <item:supplementaries:gold_door>,
  <item:supplementaries:gold_gate>,
  <item:supplementaries:gold_trapdoor>,
  <item:supplementaries:luphieclutteredmod/sign_post_luphie_yellow>,
  <item:supplementaries:present_yellow>,
  <item:supplementaries:trapped_present_yellow>,
  <item:tinted_torches:yellow_torch>

  // GENERATOR END
];

for item in items {
  item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(textColor)));
}
