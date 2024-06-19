const groupedItemsToModify = [
  {
    ids: [
      "minecraft:white_dye",
      "minecraft:orange_dye",
      "minecraft:magenta_dye",
      "minecraft:light_blue_dye",
      "minecraft:yellow_dye",
      "minecraft:lime_dye",
      "minecraft:pink_dye",
      "minecraft:gray_dye",
      "minecraft:light_gray_dye",
      "minecraft:cyan_dye",
      "minecraft:purple_dye",
      "minecraft:blue_dye",
      "minecraft:brown_dye",
      "minecraft:green_dye",
      "minecraft:red_dye",
      "minecraft:black_dye",
      "minecraft:sunflower",
      "minecraft:wither_rose",
      "minecraft:feather",
    ],
    hunger: 1,
    saturation: 0.25,
    fastToEat: false,
    alwaysEdible: true,
  },
  {
    ids: ["minecraft:dirt"],
    hunger: 1,
    saturation: 1,
    fastToEat: false,
    alwaysEdible: true,
    onEaten: (e) => e.player.tell("you ate"),
  },
];

ItemEvents.modification((event) => {
  groupedItemsToModify.forEach((group) => {
    group.ids.forEach((id) => {
      event.modify(id, (itemToModify) => {
        itemToModify.foodProperties = (food) => {
          food.hunger(group.hunger);
          food.saturation(group.saturation);
          food.fastToEat(group.fastToEat);
          if (group.onEaten) {
            food.eaten(group.onEaten); // Note: You mentioned this is broken, consider alternative
          }
          food.alwaysEdible(group.alwaysEdible);
        };
      });
    });
  });
});
