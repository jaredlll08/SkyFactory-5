REIEvents.removeCategories((event) => {
  console.info(event.getCategoryIds()); //log a list of all category ids to logs/kubejs/client.txt

  event.remove(
    "obtrophies:trophy",
    "exnihilosequentia:dry_sifting",
    "exnihilosequentia:wet_sifting",
    "minecraft:plugins/tag",
    "exnihilosequentia:harvest",
  );
});
