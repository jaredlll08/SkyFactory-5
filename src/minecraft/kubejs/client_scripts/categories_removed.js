REIEvents.removeCategories((event) => {
  console.info(event.getCategoryIds()); //log a list of all category ids to logs/kubejs/client.txt

  //event.remove works too, but yeeting is so much more fun 😉
  event.remove(
    "obtrophies:trophy",
    "exnihilosequentia:dry_sifting",
    "exnihilosequentia:wet_sifting",
    "exnihilosequentia:solidifying",
    "exnihilosequentia:compost",
    "exnihilosequentia:melting",
    "exnihilosequentia:fired_melting",
    "exnihilosequentia:heat",
    "minecraft:plugins/tag",
    "exnihilosequentia:transition",
    "exnihilosequentia:precipitate",
    "exnihilosequentia:harvest",
  );
});
