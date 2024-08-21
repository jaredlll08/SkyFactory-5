REIEvents.groupEntries((event) => {
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
});
