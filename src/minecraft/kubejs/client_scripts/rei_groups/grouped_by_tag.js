REIEvents.groupEntries((event) => {
  // Trophies
  event.groupItemsByTag(
    "skyfactory_5:rei_groups/trophies",
    "Trophies",
    "skyfactory_5:trophies",
  );

  // Beds
  event.groupItemsByTag(
    "skyfactory_5:rei_groups/beds",
    "Beds",
    "minecraft:beds",
  );
});
