#loader tags

import crafttweaker.api.resource.ResourceLocation;

val items as ResourceLocation[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <resource:ars_nouveau:belt_of_unstable_gifts>,
  <resource:bhc:blade_of_vitality>,
  <resource:bhc:heart_amulet>,
  <resource:bhc:soul_heart_amulet>,
  <resource:botania:bifrost_perm>,
  <resource:botania:cosmetic_eerie_mask>,
  <resource:botania:fabulous_pool>,
  <resource:botania:fertilizer>,
  <resource:botania:floating_marimorphosis>,
  <resource:botania:floating_marimorphosis_chibi>,
  <resource:botania:floating_spectrolus>,
  <resource:botania:gaia_ingot>,
  <resource:botania:gaia_spreader>,
  <resource:botania:lens_flare>,
  <resource:botania:lens_paint>,
  <resource:botania:life_essence>,
  <resource:botania:marimorphosis>,
  <resource:botania:marimorphosis_chibi>,
  <resource:botania:rainbow_rod>,
  <resource:botania:shimmerrock>,
  <resource:botania:shimmerrock_slab>,
  <resource:botania:shimmerrock_stairs>,
  <resource:botania:shimmerwood_planks>,
  <resource:botania:shimmerwood_planks_slab>,
  <resource:botania:shimmerwood_planks_stairs>,
  <resource:botania:spectrolus>,
  <resource:colouredstuff:crafting_table_rainbow>,
  <resource:cyclic:charm_ultimate>,
  <resource:cyclic:laser_cannon>,
  <resource:draconicevolution:entity_detector>,
  <resource:draconicevolution:entity_detector_advanced>,
  <resource:enderio:confusing_powder>,
  <resource:handcrafted:stackable_book>,
  <resource:immersive_paintings:glow_painting>,
  <resource:immersive_paintings:painting>,
  <resource:lootbags:loot_bag>,
  <resource:luphieclutteredmod:luphie_art_academy_box_of_paint>,
  <resource:luphieclutteredmod:luphie_cluttered_seltzer_cans>,
  <resource:luphieclutteredmod:luphie_lunar_observatory_books>,
  <resource:luphieclutteredmod:luphie_office_supplies_clutter>,
  <resource:luphieclutteredmod:luphie_polaroid_garland_a>,
  <resource:luphieclutteredmod:luphie_polaroid_garland_b>,
  <resource:luphieclutteredmod:luphie_polaroids_a>,
  <resource:luphieclutteredmod:luphie_polaroids_b>,
  <resource:luphieclutteredmod:luphie_polaroids_c>,
  <resource:luphieclutteredmod:luphie_row_of_small_books>,
  <resource:luphieclutteredmod:luphie_sewing_clutter>,
  <resource:luphieclutteredmod:luphie_stack_of_small_books>,
  <resource:luphieclutteredmod:luphie_tall_stack_of_small_books>,
  <resource:luphieclutteredmod:luphie_wall_bookshelf>,
  <resource:luphieclutteredmod:pastel_rubiks_cube>,
  <resource:luphieclutteredmod:rubiks_cube>,
  <resource:luphieclutteredmod:scrambled_pastel_rubiks_cube>,
  <resource:luphieclutteredmod:scrambled_rubiks_cube>,
  <resource:mysticalagriculture:awakened_supremium_axe>,
  <resource:mysticalagriculture:awakened_supremium_block>,
  <resource:mysticalagriculture:awakened_supremium_boots>,
  <resource:mysticalagriculture:awakened_supremium_bow>,
  <resource:mysticalagriculture:awakened_supremium_chestplate>,
  <resource:mysticalagriculture:awakened_supremium_crossbow>,
  <resource:mysticalagriculture:awakened_supremium_essence>,
  <resource:mysticalagriculture:awakened_supremium_fishing_rod>,
  <resource:mysticalagriculture:awakened_supremium_furnace>,
  <resource:mysticalagriculture:awakened_supremium_gemstone>,
  <resource:mysticalagriculture:awakened_supremium_gemstone_block>,
  <resource:mysticalagriculture:awakened_supremium_helmet>,
  <resource:mysticalagriculture:awakened_supremium_hoe>,
  <resource:mysticalagriculture:awakened_supremium_ingot>,
  <resource:mysticalagriculture:awakened_supremium_ingot_block>,
  <resource:mysticalagriculture:awakened_supremium_leggings>,
  <resource:mysticalagriculture:awakened_supremium_nugget>,
  <resource:mysticalagriculture:awakened_supremium_pickaxe>,
  <resource:mysticalagriculture:awakened_supremium_scythe>,
  <resource:mysticalagriculture:awakened_supremium_shears>,
  <resource:mysticalagriculture:awakened_supremium_shovel>,
  <resource:mysticalagriculture:awakened_supremium_sickle>,
  <resource:mysticalagriculture:awakened_supremium_sword>,
  <resource:mysticalagriculture:awakened_supremium_upgrade>,
  <resource:mysticalagriculture:rgb_crop_essence>,
  <resource:mysticalagriculture:rgb_crop_seeds>,
  <resource:sf5_things:block_of_rgb_dye>,
  <resource:sf5_things:rainbow_laser_lens>,
  <resource:sf5_things:rgb_dye>,
  <resource:simplehats:bandanargb>,
  <resource:simplehats:baseballhatfestive>,
  <resource:simplehats:baseballhatrgb>,
  <resource:simplehats:beaniergb>,
  <resource:simplehats:christmastree>,
  <resource:simplehats:cowboyrgb>,
  <resource:simplehats:flowercrown>,
  <resource:simplehats:policesiren>,
  <resource:simplehats:poofballrgb>,
  <resource:simplehats:potionhead>,
  <resource:simplehats:presentsstack>,
  <resource:simplehats:propelhat>,
  <resource:simplehats:rainboworbiters>,
  <resource:simplehats:rgbbigribbon>,
  <resource:simplehats:rgbbowler>,
  <resource:simplehats:rgbdragonskull>,
  <resource:simplehats:rgbdrinkinhat>,
  <resource:simplehats:rgbeasterhead>,
  <resource:simplehats:rgbfullhelm>,
  <resource:simplehats:rgbpartyhat>,
  <resource:simplehats:rgbsmallbowler>,
  <resource:simplehats:rgbsunglasses>,
  <resource:simplehats:rgbtoptophathat>,
  <resource:simplehats:rgbushanka>

  // GENERATOR END
];

for item in items {
  <tag:items:skyfactory_5:colored_items>.addId(item);
  <tag:items:skyfactory_5:colored_items/rgb>.addId(item);
}
