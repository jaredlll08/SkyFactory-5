ItemEvents.foodEaten((event) => {
  if (event.getItem().getId() === "sf5_things:green_apple") {
    event.getPlayer().give("colouredstuff:sapling_green");
  }
});
