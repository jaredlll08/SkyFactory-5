ItemEvents.foodEaten((event) => {
  if (event.getItem().getId() === "minecraft:dirt") {
    event.getPlayer().give("minecraft:brown_dye");
  }
});
