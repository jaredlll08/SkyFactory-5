REIEvents.groupEntries((event) => {
  // This event allows you to add custom entry groups to REI, which can be used to clean up the entry list significantly.
  // As a simple example, we can add a 'Swords' group which will contain all (vanilla) swords
  // Note that each group will need an id (ResourceLocation) and a display name (Component / String)
  /*
  event.groupItems("kubejs:rei_groups/red", "Red", [
    "colouredstuff:planks_red",
    "colouredstuff:log_red",
    "colouredstuff:log_stripped_red",
    "colouredstuff:leaves_red",
    "colouredstuff:sapling_red",
    "colouredstuff:path_gray",
    "colouredstuff:path_red",
    "colouredstuff:farmland_red",
    "colouredstuff:stone_bricks_red",
    "colouredstuff:sandstone_red",
    "colouredstuff:chiseled_sandstone_red",
    "colouredstuff:crafting_table_red",
    "colouredstuff:slab_planks_red",
    "colouredstuff:stairs_planks_red",
    "colouredstuff:fence_planks_red",
    "colouredstuff:wall_stone_red",
    "colouredstuff:wall_sandstone_red",
    "colouredstuff:wall_cobblestone_red",
    "colouredstuff:wall_planks_red",
    "colouredstuff:slab_cobblestone_red",
    "colouredstuff:slab_stone_bricks_red",
    "colouredstuff:slab_sandstone_red",
    "colouredstuff:stairs_stone_red",
    "colouredstuff:stairs_sandstone_red",
    "colouredstuff:stairs_cobblestone_red",
    "colouredstuff:stairs_stone_bricks_red",
    "minecraft:redstone",
    "minecraft:redstone_torch",
    "minecraft:redstone_block",
  ]);
*/

  /*
  // An easy use case for grouping stuff together could be using tags:
  // In this case, we want all the Hanging Signs and Sign Posts from Supplementaries to be grouped together
  event.groupItemsByTag(
    "supplementaries:rei_groups/hanging_signs",
    "Hanging Signs",
    "supplementaries:hanging_signs",
  );
  event.groupItemsByTag(
    "supplementaries:rei_groups/sign_posts",
    "Sign Posts",
    "supplementaries:sign_posts",
  );
*/

  // Grouping items and blocks by the color they represent

  // Red
  event.groupItemsByTag(
    "skyfactory_5:rei_groups/red",
    "Red",
    "skyfactory_5:colors/red",
  );

  // Blue
  event.groupItemsByTag(
    "skyfactory_5:rei_groups/blue",
    "Blue",
    "skyfactory_5:colors/blue",
  );

  // White
  event.groupItemsByTag(
    "skyfactory_5:rei_groups/white",
    "White",
    "skyfactory_5:colors/white",
  );

  // Green
  event.groupItemsByTag(
    "skyfactory_5:rei_groups/green",
    "Green",
    "skyfactory_5:colors/green",
  );

  // Brown
  event.groupItemsByTag(
    "skyfactory_5:rei_groups/brown",
    "Brown",
    "skyfactory_5:colors/brown",
  );

  // Orange
  event.groupItemsByTag(
    "skyfactory_5:rei_groups/orange",
    "Orange",
    "skyfactory_5:colors/orange",
  );

  // Orange
  event.groupItemsByTag(
    "skyfactory_5:rei_groups/orange",
    "Orange",
    "skyfactory_5:colors/orange",
  );

  // Yellow
  event.groupItemsByTag(
    "skyfactory_5:rei_groups/yellow",
    "Yellow",
    "skyfactory_5:colors/yellow",
  );

  // Trophies
  event.groupItemsByTag(
    "skyfactory_5:rei_groups/trophies",
    "Trophies",
    "skyfactory_5:trophies",
  );

  // Hides Potions, Enchanted Books, Tipped Arrows, Wooden Buckets
  const useNbt = [
    "potion",
    "painting",
    "enchanted_book",
    "splash_potion",
    "tipped_arrow",
    "lingering_potion",
  ];

  useNbt.forEach((id) => {
    const item = Item.of(id);
    const { namespace, path } = Utils.id(item.id);
    event.groupSameItem(
      `kubejs:rei_groups/${namespace}/${path}`,
      item.name,
      item,
    );
  });

  // Categorization by mod

  // Chipped Mod
  event.groupItems("kubejs:rei_groups/chipped_mod", "Chipped Mod", [
    /^chipped.*/,
  ]);

  // Rechiseled Mod
  event.groupItems("kubejs:rei_groups/rechiseled_mod", "Rechiseled Mod", [
    /^rechiseled.*/,
  ]);

  // Cluttered Mod
  event.groupItems("kubejs:rei_groups/cluttered_mod", "Cluttered Mod", [
    /^luphieclutteredmod.*/,
  ]);

  // Crayfish Furniture Mod
  event.groupItems("kubejs:rei_groups/cfm_mod", "Crayfish Furniture Mod", [
    /^cfm.*/,
  ]);

  // Macaw Lights Furniture Mod
  event.groupItems("kubejs:rei_groups/mcwlights_mod", "Macaw Lights Mod", [
    /^mcwlights.*/,
  ]);

  // Industrial Foregoing Mod
  event.groupItems(
    "kubejs:rei_groups/industrialforegoing_mod",
    "Industrial Foregoing",
    [/^industrialforegoing.*/],
  );

  // Xtones
  event.groupItems("kubejs:rei_groups/xtonesreworked_mod", "X Tones", [
    /^xtonesreworked.*/,
  ]);

  // Multibeds
  event.groupItems("kubejs:rei_groups/multibeds_mod", "Multi Beds", [
    /^multibeds.*/,
  ]);

  // Simple Hats
  event.groupItems("kubejs:rei_groups/simplehats_mod", "Simple Hats", [
    /^simplehats.*/,
  ]);

  // Heads mod
  event.groupItems("kubejs:rei_groups/heads_mod", "Heads", [/^heads.*/]);

  // Additional Lanterns
  event.groupItems(
    "kubejs:rei_groups/additionallanterns_mod",
    "Additional Lanterns",
    [/^additionallanterns.*/],
  );

  // Wooden Buckets
  event.groupItems("kubejs:rei_groups/wooden_bucket_mod", "Wooden Buckets", [
    /^woodenbucket.*/,
  ]);

  // Ex Deorum Sieves
  event.groupItems("kubejs:rei_groups/sieves", "Sieves", [
    /^exdeorum:.*sieve$/,
  ]);

  // Frog Kill Gateway Pearls
  event.groupItems(
    "kubejs:rei_groups/frog_kill_pearls",
    "Defeated by Frog Gateway Pearls",
    [/.*frog_kill.*/],
  );

  // Spawn Eggs
  event.groupItems("kubejs:rei_groups/spawn_eggs", "Spawn Eggs", [/spawn_egg/]);

  event.groupItems("kubejs:rei_groups/templates", "Templates", [
    "sf5_things:treasure_bag_template",
    "silentgear:rod_template",
    "silentgear:tip_template",
    "silentgear:coating_template",
    "silentgear:grip_template",
    "silentgear:binding_template",
    "silentgear:lining_template",
    "silentgear:cord_template",
    "silentgear:fletching_template",
    "silentgear:sword_template",
    "silentgear:katana_template",
    "silentgear:machete_template",
    "silentgear:spear_template",
    "silentgear:trident_template",
    "silentgear:knife_template",
    "silentgear:dagger_template",
    "silentgear:pickaxe_template",
    "silentgear:shovel_template",
    "silentgear:axe_template",
    "silentgear:paxel_template",
    "silentgear:hammer_template",
    "silentgear:excavator_template",
    "silentgear:saw_template",
    "silentgear:hoe_template",
    "silentgear:mattock_template",
    "silentgear:prospector_hammer_template",
    "silentgear:sickle_template",
    "silentgear:shears_template",
    "silentgear:fishing_rod_template",
    "silentgear:bow_template",
    "silentgear:crossbow_template",
    "silentgear:slingshot_template",
    "silentgear:shield_template",
    "silentgear:helmet_template",
    "silentgear:chestplate_template",
    "silentgear:leggings_template",
    "silentgear:boots_template",
    "silentgear:elytra_template",
    "silentgear:arrow_template",
    "silentgear:ring_template",
    "silentgear:bracelet_template",
    "silentgear:template_board",
  ]);

  // Disabled items
  event.groupItems("kubejs:rei_groups/disabled_items", "Disabled Items", [
    "minecraft:command_block",
    "minecraft:barrier",
    "minecraft:light",
    "minecraft:structure_void",
    "silentgear:coating_smithing_template",
    "phosphophyllite:debug_tool",
    "citadel:fancy_item",
    "citadel:icon_item",
    "citadel:effect_item",
    "citadel:debug",
    "sophisticatedstorage:inaccessible_slot",
    "create:copper_backtank_placeable",
    "create:netherite_backtank_placeable",
  ]);

  //Creative items
  event.groupItems("kubejs:rei_groups/creative_items", "Creative Items", [
    "ae2:creative_energy_cell",
    "ae2:creative_item_cell",
    "ae2:creative_fluid_cell",
    "wormhole:creative_energy_cell",
    "cyclic:battery_infinite",
    "spelled:creative_tome",
    "create:creative_motor",
    "create:creative_fluid_tank",
    "create:creative_crate",
    "create:creative_blaze_cake",
    "create:handheld_worldshaper",
  ]);
  /*
  // Items can also be grouped using anything that can be expressed as an IngredientJS,
  // including for example regular expressions or lists of ingredients
  event.groupItems("kubejs:rei_groups/spawn_eggs", "Spawn Eggs", [
    /spawn_egg/,
    /^ars_nouveau:.*_se$/,
    "supplementaries:red_merchant_spawn_egg",
  ]);

  /*

  // Items can also be grouped using anything that can be expressed as an IngredientJS,
  // including for example regular expressions or lists of ingredients
  event.groupItems("kubejs:rei_groups/spawn_eggs", "Spawn Eggs", [
    /spawn_egg/,
    /^ars_nouveau:.*_se$/,
    "supplementaries:red_merchant_spawn_egg",
  ]);

  // you can even use custom predicates for grouping, like so:
  event.groupItemsIf(
    "kubejs:rei_groups/looting_stuff",
    "Stuff with Looting I",
    (item) =>
      // this would group together all items that have the Looting I enchantment on them
      item.hasEnchantment("minecraft:looting", 1),
  );

  // you can also group fluids in much the same way as you can group items, for instance:
  event.groupFluidsByTag(
    "kubejs:rei_groups/fluid_tagged_as_water",
    "'Water' (yeah right lmao)",
    "minecraft:water",
  );
*/
});
