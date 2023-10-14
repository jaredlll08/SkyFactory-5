ItemEvents.foodEaten((event) => {
  if (event.getItem().getId() === "sf5_things:blue_apple") {
    event.getPlayer().give("minecraft:blue_dye");
  }
});
