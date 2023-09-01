// A list of schema files to generate types for
export const schemaFiles = new Map<string, string[]>([
  ["mc-package.json", ["./mc-package.json"]],
  [
    "minecraft/incontrol/loot.json",
    ["./src/minecraft/config/incontrol/loot.json"],
  ],
  [
    "minecraft/incontrol/spawn.json",
    ["./src/minecraft/config/incontrol/spawn.json"],
  ],
  [
    "minecraft/incontrol/spawner.json",
    ["./src/minecraft/config/incontrol/spawner.json"],
  ],
]);
