REIEvents.groupEntries((event) => {
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
    { modName: "Rechiseled Create", modID: "rechiseledcreate" },
  ];

  mods.forEach((entry) => {
    event.groupItems(
      `kubejs:rei_groups/${entry.modID}`,
      entry.modName,
      `@${entry.modID}`,
    );
  });
});
