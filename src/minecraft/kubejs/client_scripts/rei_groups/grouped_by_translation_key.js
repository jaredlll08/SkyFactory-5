REIEvents.groupEntries((event) => {
  /**
   * Groups items given the item ID. This is most commonly useful for grouping items with different NBT data.
   *
   * @type {{groupNameTranslationKey: string; item: Special.Item}[]}
   */
  const itemGroups = [
    {
      groupNameTranslationKey: "kubejs:rei_groups/minecraft.potions",
      item: "minecraft:potion",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/minecraft.painting",
      item: "minecraft:painting",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/minecraft.enchanted_books",
      item: "minecraft:enchanted_book",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/minecraft.splash_potions",
      item: "minecraft:splash_potion",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/minecraft.tipped_arrows",
      item: "minecraft:tipped_arrow",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/minecraft.lingering_potions",
      item: "minecraft:lingering_potion",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/enderio.broken_spawners",
      item: "enderio:broken_spawner",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/enderio.filled_soul_vials",
      item: "enderio:filled_soul_vial",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/creative_items",
      item: "rftoolsdim.admin_dimlet",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/suspicious_stew",
      item: "minecraft:suspicious_stew",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/rftools_dimlets",
      item: "rftoolsdim:digit_dimlet",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/botania.brews",
      item: "botania:brew_vial",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/botania.brews",
      item: "botania:brew_flask",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/immersiveengineering.shader",
      item: "immersiveengineering:shader",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/minecraft.goat_horns",
      item: "minecraft:goat_horn",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/wooden_buckets",
      item: "woodenbucket:wooden_bucket",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/ie_potion_buckets",
      item: "immersiveengineering:potion_bucket",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/infinity_drill",
      item: "industrialforegoing:infinity_drill",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/infinity_saw",
      item: "industrialforegoing:infinity_saw",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/infinity_hammer",
      item: "industrialforegoing:infinity_hammer",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/infinity_trident",
      item: "industrialforegoing:infinity_trident",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/infinity_backpack",
      item: "industrialforegoing:infinity_backpack",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/infinity_launcher",
      item: "industrialforegoing:infinity_launcher",
    },
    {
      groupNameTranslationKey: "kubejs:rei_groups/infinity_nuke",
      item: "industrialforegoing:infinity_nuke",
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
});
