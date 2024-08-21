REIEvents.groupEntries((event) => {
  // Categorization by mod
  /** @type {{modName: string; modID: Special.Mod}[]} */
  const mods = [
    // Not working atm
    //{ modName: "Multi Beds", modID: "multibeds" },
    { modName: "Additional Lanterns", modID: "additionallanterns" },
    { modName: "Chipped", modID: "chipped" },
    { modName: "Cluttered", modID: "luphieclutteredmod" },
    { modName: "Crayfish Furniture", modID: "cfm" },
    { modName: "Heads", modID: "heads" },
    { modName: "Lampcrafting", modID: "lampcrafting" },
    { modName: "Limbs", modID: "limbs" },
    { modName: "Macaw Lights", modID: "mcwlights" },
    { modName: "Macaw's Doors", modID: "mcwdoors" },
    { modName: "Macaw's Roofs", modID: "mcwroofs" },
    { modName: "Rechiseled Create", modID: "rechiseledcreate" },
    { modName: "Rechiseled", modID: "rechiseled" },
    { modName: "Simple Hats", modID: "simplehats" },
    { modName: "X Tones", modID: "xtonesreworked" },
    { modName: "Macaw's Fences", modID: "mcwfences" },
    { modName: "Macaw's Bridges", modID: "mcwbridges" },
    { modName: "Macaw's Windows", modID: "mcwwindows" },
    { modName: "Open Stairs", modID: "openstairs" },
    { modName: "Create Steam 'n Rails", modID: "railways" },
  ];

  mods.forEach((entry) => {
    event.groupItems(
      `kubejs:rei_groups/${entry.modID}`,
      entry.modName,
      `@${entry.modID}`,
    );
  });
});
