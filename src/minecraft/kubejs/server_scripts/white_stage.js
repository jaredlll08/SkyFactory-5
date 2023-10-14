ItemEvents.foodEaten((event) => {
  if (event.getItem().getId() === "sf5_things:white_apple") {
    event.getPlayer().give("minecraft:white_dye");
  }
});
