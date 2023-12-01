import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.Blue];
val textColor = 0x0080FF;

val items as IItemStack[] = [
  <item:minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
  <item:minecraft:potion>.withTag({Potion: "minecraft:water"}),
  <item:minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
  <item:woodenbucket:wooden_bucket>.withTag({Damage: 0, Fluid: {FluidName: "minecraft:water", Amount: 1000}}),

  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <item:colouredstuff:brick_blue>,
  <item:colouredstuff:chiseled_sandstone_blue>,
  <item:colouredstuff:cobblestone_blue>,
  <item:colouredstuff:crafting_table_blue>,
  <item:colouredstuff:dirt_blue>,
  <item:colouredstuff:farmland_blue>,
  <item:colouredstuff:fence_planks_blue>,
  <item:colouredstuff:gate_planks_blue>,
  <item:colouredstuff:log_blue>,
  <item:colouredstuff:log_stripped_blue>,
  <item:colouredstuff:path_blue>,
  <item:colouredstuff:planks_blue>,
  <item:colouredstuff:sapling_blue>,
  <item:colouredstuff:slab_brick_blue>,
  <item:colouredstuff:slab_cobblestone_blue>,
  <item:colouredstuff:slab_planks_blue>,
  <item:colouredstuff:slab_sandstone_blue>,
  <item:colouredstuff:slab_stone_blue>,
  <item:colouredstuff:slab_stone_bricks_blue>,
  <item:colouredstuff:smooth_sandstone_blue>,
  <item:colouredstuff:stairs_brick_blue>,
  <item:colouredstuff:stairs_cobblestone_blue>,
  <item:colouredstuff:stairs_planks_blue>,
  <item:colouredstuff:stairs_stone_blue>,
  <item:colouredstuff:stairs_stone_bricks_blue>,
  <item:colouredstuff:stone_bricks_blue>,
  <item:colouredstuff:wall_cobblestone_blue>,
  <item:colouredstuff:wall_sandstone_blue>,
  <item:colouredstuff:wall_stone_blue>,
  <item:colouredstuff:wall_stone_bricks_blue>,
  <item:energeticsheep:blue_energetic_wool>,
  <item:forcecraft:blue_chu_jelly>,
  <item:forcecraft:blue_force_furnace>,
  <item:forcecraft:force_blue_torch>,
  <item:forcecraft:force_brick_blue>,
  <item:forcecraft:force_brick_blue_slab>,
  <item:forcecraft:force_brick_blue_stairs>,
  <item:minecraft:blue_banner>,
  <item:minecraft:blue_bed>,
  <item:minecraft:blue_candle>,
  <item:minecraft:blue_carpet>,
  <item:minecraft:blue_concrete>,
  <item:minecraft:blue_concrete_powder>,
  <item:minecraft:blue_dye>,
  <item:minecraft:blue_glazed_terracotta>,
  <item:minecraft:blue_ice>,
  <item:minecraft:blue_orchid>,
  <item:minecraft:blue_shulker_box>,
  <item:minecraft:blue_stained_glass>,
  <item:minecraft:blue_stained_glass_pane>,
  <item:minecraft:blue_terracotta>,
  <item:minecraft:blue_wool>,
  <item:minecraft:lapis_lazuli>,
  <item:minecraft:water_bucket>,
  <item:mysticalagriculture:blue_crop_essence>,
  <item:mysticalagriculture:blue_crop_seeds>,
  <item:mysticalagriculture:imperium_essence>,
  <item:sf5_things:block_of_blue_dye>,
  <item:sf5_things:blue_apple>,
  <item:sf5_things:light_blue_apple>,
  <item:sf5stuff:composting_bin_blue>,
  <item:sf5stuff:crucible_blue>,
  <item:supplementaries:candle_holder_blue>,
  <item:supplementaries:colouredstuff/sign_post_blue>,
  <item:tintedcampfires:blue_campfire>

  // GENERATOR END
];

for item in items {
  item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(textColor)));

  if (!item.hasTag) {
    <tag:items:skyfactory_5:colored_items>.add(item);
    <tag:items:skyfactory_5:colored_items/blue>.add(item);
  }
}
