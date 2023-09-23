ItemEvents.modification((event) => {
  event.modify("minecraft:dirt", (item) => {
    item.foodProperties = (food) => {
      food.hunger(1);
      food.saturation(1);
      food.fastToEat(false);
      food.eaten((e) => e.player.tell("you ate")); // this is broken, use ItemEvents.foodEaten instead.
      food.alwaysEdible(true);
    };
  });
});
