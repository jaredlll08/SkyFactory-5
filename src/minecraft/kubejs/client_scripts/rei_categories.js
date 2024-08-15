REIEvents.groupEntries((event) => {
  // This cannot be initialized outside of the event due to REI being weird and relying on class loading order.
  const $VanillaEntryTypes = Java.loadClass(
    "me.shedaniel.rei.api.common.entry.type.VanillaEntryTypes",
  );

  // Trophies
  event.groupItemsByTag(
    "skyfactory_5:rei_groups/trophies",
    "Trophies",
    "skyfactory_5:trophies",
  );

  /**
   * Groups items given the item ID. This is most commonly useful for grouping items with different NBT data.
   *
   * @type {{groupNameTranslationKey: string; item: Special.Item}[]}
   */
  const itemGroups = [
    {
      groupNameTranslationKey: "rei_groups.minecraft.potions",
      item: "minecraft:potion",
    },
    {
      groupNameTranslationKey: "rei_groups.minecraft.painting",
      item: "minecraft:painting",
    },
    {
      groupNameTranslationKey: "rei_groups.minecraft.enchanted_books",
      item: "minecraft:enchanted_book",
    },
    {
      groupNameTranslationKey: "rei_groups.minecraft.splash_potions",
      item: "minecraft:splash_potion",
    },
    {
      groupNameTranslationKey: "rei_groups.minecraft.tipped_arrows",
      item: "minecraft:tipped_arrow",
    },
    {
      groupNameTranslationKey: "rei_groups.minecraft.lingering_potions",
      item: "minecraft:lingering_potion",
    },
    {
      groupNameTranslationKey: "rei_groups.enderio.broken_spawners",
      item: "enderio:broken_spawner",
    },
    {
      groupNameTranslationKey: "rei_groups.enderio.filled_soul_vials",
      item: "enderio:filled_soul_vial",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/creative_items",
      item: "rftoolsdim.admin_dimlet",
    },
    {
      groupNameTranslationKey: "rei_groups.minecraft.suspicious_stew",
      item: "minecraft:suspicious_stew",
    },

    {
      groupNameTranslationKey: "kubejs:rei_groups/rftools_dimlets",
      item: "rftoolsdim:digit_dimlet",
    },
  ];

  itemGroups.forEach((entry) => {
    const item = Item.of(entry.item);
    const { namespace, path } = Utils.id(item.id);
    event.groupSameItem(
      `kubejs:rei_groups/${namespace}/${path}`,
      Component.translate(entry.groupNameTranslationKey),
      item,
    );
  });

  // Multi category test
  event.groupItems("skyfactory_5:rei_groups/0001", "Folder Test 1", [
    "sf5_icons:red_folder",
    "minecraft:cobblestone",
    "minecraft:stone",
  ]);

  event.groupItems("skyfactory_5:rei_groups/0002", "Folder Test 2", [
    "sf5_icons:blue_folder",
    "minecraft:cobblestone",
    "minecraft:obsidian",
  ]);

  event.groupItems("skyfactory_5:rei_groups/0003", "Folder Test 3", [
    "sf5_icons:orange_folder",
    "minecraft:cobblestone",
    "minecraft:stick",
  ]);

  // EnderIO Fused Glass
  event.groupItems(
    "kubejs:rei_groups/enderio_fused_glass",
    "EnderIO Fused Glass",
    [/enderio:fused_quartz.*/],
  );

  // EnderIO Clear Glass
  event.groupItems(
    "kubejs:rei_groups/enderio_clear_glass",
    "EnderIO Clear Glass",
    [/enderio:clear_glass.*/],
  );

  // Categorization by mod
  /** @type {{modName: string; modID: Special.Mod}[]} */
  const mods = [
    { modName: "Additional Lanterns", modID: "additionallanterns" },
    { modName: "Chipped", modID: "chipped" },
    { modName: "Cluttered", modID: "luphieclutteredmod" },
    { modName: "Crayfish Furniture", modID: "cfm" },
    { modName: "Heads", modID: "heads" },
    { modName: "Macaw Lights", modID: "mcwlights" },
    { modName: "Multi Beds", modID: "multibeds" },
    { modName: "Rechiseled", modID: "rechiseled" },
    { modName: "Simple Hats", modID: "simplehats" },
    { modName: "Wooden Buckets", modID: "woodenbucket" },
    { modName: "X Tones", modID: "xtonesreworked" },
    { modName: "Lampcrafting", modID: "lampcrafting" },
    { modName: "Multibeds", modID: "multibeds" },
    { modName: "Rechiseled Create", modID: "rechiseledcreate" },
  ];

  mods.forEach((entry) => {
    event.groupItems(
      `kubejs:rei_groups/${entry.modID}`,
      entry.modName,
      `@${entry.modID}`,
    );
  });

  // Normal Gateway Pearls
  event.registry.group(
    "kubejs:rei_groups/normal_pearls",
    "Normal Gateway Pearls",
    $VanillaEntryTypes.ITEM,
    (item) =>
      item.value.id === "gateways:gate_pearl" &&
      /^gateways:normal\//.test(item.value.nbt["gateway"] || ""),
  );

  // Titan Gateway Pearls
  event.registry.group(
    "kubejs:rei_groups/titan_pearls",
    "Titan Gateway Pearls",
    $VanillaEntryTypes.ITEM,
    (item) =>
      item.value.id === "gateways:gate_pearl" &&
      /^gateways:titan\//.test(item.value.nbt["gateway"] || ""),
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

  // Creative items
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
    "botania:creative_pool",
    "botania:infrangible_platform",
    "botania:lens_storm",
    "botania:mana_tablet",
    "botania:corporea_spark_creative",
    "littlelogistics:creative_capacitor",
    "thermal:rf_coil_creative_augment",
    "thermal:fluid_tank_creative_augment",
    "thermal:machine_efficiency_creative_augment",
    "thermal:machine_catalyst_creative_augment",
    "immersiveengineering:capacitor_creative",
    "ars_nouveau:creative_spell_book",
    "ars_nouveau:creative_source_jar",
    "mininggadgets:upgrade_battery_creative",
    "draconicevolution:creative_capacitor",
    "draconicevolution:creative_op_capacitor",
    "rftoolsutility:creative_screen",
    "enderio:creative_power",
    "createaddition:creative_energy",
  ]);

  // Coral
  event.groupItems("kubejs:rei_groups/coral", "Coral", [
    "minecraft:dead_tube_coral_block",
    "minecraft:dead_brain_coral_block",
    "minecraft:dead_bubble_coral_block",
    "minecraft:dead_fire_coral_block",
    "minecraft:dead_horn_coral_block",
    "minecraft:tube_coral_block",
    "minecraft:brain_coral_block",
    "minecraft:bubble_coral_block",
    "minecraft:fire_coral_block",
    "minecraft:horn_coral_block",
    "minecraft:tube_coral",
    "minecraft:brain_coral",
    "minecraft:bubble_coral",
    "minecraft:fire_coral",
    "minecraft:horn_coral",
    "minecraft:dead_brain_coral",
    "minecraft:dead_bubble_coral",
    "minecraft:dead_fire_coral",
    "minecraft:dead_horn_coral",
    "minecraft:dead_tube_coral",
    "minecraft:tube_coral_fan",
    "minecraft:brain_coral_fan",
    "minecraft:bubble_coral_fan",
    "minecraft:fire_coral_fan",
    "minecraft:horn_coral_fan",
    "minecraft:dead_tube_coral_fan",
    "minecraft:dead_brain_coral_fan",
    "minecraft:dead_bubble_coral_fan",
    "minecraft:dead_fire_coral_fan",
    "minecraft:dead_horn_coral_fan",
    "exnihilosequentia:fire_coral_larva",
    "exnihilosequentia:tube_coral_larva",
    "exnihilosequentia:brain_coral_larva",
    "exnihilosequentia:bubble_coral_larva",
    "exnihilosequentia:horn_coral_larva",
  ]);

  // Pottery Sherds
  event.groupItems("kubejs:rei_groups/pottery_sherds", "Pottery Sherds", [
    "minecraft:angler_pottery_sherd",
    "minecraft:archer_pottery_sherd",
    "minecraft:arms_up_pottery_sherd",
    "minecraft:blade_pottery_sherd",
    "minecraft:brewer_pottery_sherd",
    "minecraft:burn_pottery_sherd",
    "minecraft:danger_pottery_sherd",
    "minecraft:explorer_pottery_sherd",
    "minecraft:friend_pottery_sherd",
    "minecraft:heart_pottery_sherd",
    "minecraft:heartbreak_pottery_sherd",
    "minecraft:howl_pottery_sherd",
    "minecraft:miner_pottery_sherd",
    "minecraft:mourner_pottery_sherd",
    "minecraft:plenty_pottery_sherd",
    "minecraft:prize_pottery_sherd",
    "minecraft:sheaf_pottery_sherd",
    "minecraft:shelter_pottery_sherd",
    "minecraft:skull_pottery_sherd",
    "minecraft:snort_pottery_sherd",
  ]);

  // RFTools Dimlets
  event.groupItems("kubejs:rei_groups/rftools_dimlets", "RFTools Dimlets", [
    "rftoolsdim:empty_terrain_dimlet",
    "rftoolsdim:empty_dimlet",
    "rftoolsdim:empty_attribute_dimlet",
    "rftoolsdim:empty_feature_dimlet",
    "rftoolsdim:empty_structure_dimlet",
    "rftoolsdim:empty_biome_dimlet",
    "rftoolsdim:empty_biome_controller_dimlet",
    "rftoolsdim:empty_biome_category_dimlet",
    "rftoolsdim:empty_block_dimlet",
    "rftoolsdim:empty_fluid_dimlet",
    "rftoolsdim:empty_time_dimlet",
    "rftoolsdim:empty_tag_dimlet",
    "rftoolsdim:empty_sky_dimlet",
    "rftoolsdim:terrain_dimlet",
    "rftoolsdim:attribute_dimlet",
    "rftoolsdim:feature_dimlet",
    "rftoolsdim:structure_dimlet",
    "rftoolsdim:biome_dimlet",
    "rftoolsdim:biome_controller_dimlet",
    "rftoolsdim:biome_category_dimlet",
    "rftoolsdim:block_dimlet",
    "rftoolsdim:fluid_dimlet",
    "rftoolsdim:time_dimlet",
    "rftoolsdim:tag_dimlet",
    "rftoolsdim:sky_dimlet",
  ]);
});
