ItemEvents.foodEaten((event) => {
  if (event.getItem().getId() === "sf5_things:green_apple") {
    event.getPlayer().give("minecraft:green_dye");
  }
});
