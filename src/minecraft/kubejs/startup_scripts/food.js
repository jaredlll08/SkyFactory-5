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
      "sf5_things:rgb_dye",
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

  {
    ids: ["sf5_things:block_of_meat"],
    hunger: 3,
    saturation: 2,
    fastToEat: false,
    alwaysEdible: false,
    onEaten: (e) => e.player.tell("you ate"),
  },
  {
    ids: [
      "sf5_things:block_of_jerky",
      "sf5_things:block_of_pumpkin_spice_latte",
    ],
    hunger: 2,
    saturation: 1,
    fastToEat: false,
    alwaysEdible: false,
    onEaten: (e) => e.player.tell("you ate"),
  },
  {
    ids: [
      "sf5_things:block_of_blue_cheese",
      "sf5_things:block_of_grape_hi_chew",
    ],
    hunger: 5,
    saturation: 3,
    fastToEat: false,
    alwaysEdible: false,
    onEaten: (e) => e.player.tell("you ate"),
  },
  {
    ids: [
      "sf5_things:block_of_blooming_onion",
      "sf5_things:block_of_black_olives",
    ],
    hunger: 7,
    saturation: 4,
    fastToEat: false,
    alwaysEdible: false,
    onEaten: (e) => e.player.tell("you ate"),
  },
  {
    ids: [
      "yellow_snow:yellow_snow",
      "sf5_things:block_of_kitty_litter",
      "sf5_things:block_of_ketchup",
      "sf5_things:block_of_pocket_lint",
    ],
    hunger: 1,
    saturation: 1,
    fastToEat: false,
    alwaysEdible: false,
    onEaten: (e) => e.player.tell("ew"),
  },
  {
    ids: ["exnihilosequentia:silkworm"],
    hunger: 0.5,
    saturation: 0.25,
    fastToEat: false,
    alwaysEdible: true,
    onEaten: (e) => e.player.tell("ew"),
  },
  {
    ids: ["cyclic:chorus_flight"],
    hunger: 0.0,
    saturation: 0.0,
    fastToEat: false,
    alwaysEdible: false,
    onEaten: (e) => e.player.tell("ew"),
  },
  {
    ids: ["cyclic:chorus_spectral"],
    hunger: 0.0,
    saturation: 0.0,
    fastToEat: false,
    alwaysEdible: false,
    onEaten: (e) => e.player.tell("ew"),
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
            food.eaten(group.onEaten); // Apparently is broken!
          }
          food.alwaysEdible(group.alwaysEdible);
        };
      });
    });
  });
});
