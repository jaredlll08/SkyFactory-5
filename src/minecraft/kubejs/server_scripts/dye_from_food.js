/**
 * Maps a food ID to a dye ID that is given when the player eats the food.
 *
 * @type {Record<string, string>}
 */
const dyeFoodPairs = {
  "sf5_things:blue_apple": "minecraft:blue_dye",
  "minecraft:dirt": "minecraft:brown_dye",
  "sf5_things:green_apple": "minecraft:green_dye",
  "minecraft:carrot": "minecraft:orange_dye",
  "sf5_things:white_apple": "minecraft:white_dye",
  "exnihilosequentia:silkworm": "minecraft:white_dye",
};

ItemEvents.foodEaten((event) => {
  const dye = dyeFoodPairs[event.getItem().getId()];

  if (dye) {
    event.getPlayer().give(dye);
  }
});
