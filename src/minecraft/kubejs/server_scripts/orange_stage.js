ItemEvents.foodEaten((event) => {
  if (event.getItem().getId() === "minecraft:carrot") {
    event.getPlayer().give("minecraft:orange_dye");
  }
});
