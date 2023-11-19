// A list of schema files to generate types for
export const schemaFiles = new Map<string, string[]>([
  ["mc-package.json", ["/mc-package.json"]],
  ["minecraft/gateways/gateways-v1.json", []],
  ["minecraft/gateways/gateways-v2.json", []],
  [
    "minecraft/incontrol/loot.json",
    ["/src/minecraft/config/incontrol/loot.json"],
  ],
  [
    "minecraft/incontrol/spawn.json",
    ["/src/minecraft/config/incontrol/spawn.json"],
  ],
  [
    "minecraft/incontrol/spawner.json",
    ["/src/minecraft/config/incontrol/spawner.json"],
  ],
  [
    "minecraft/jsonthings/block.json",
    ["/src/minecraft/thingpacks/*/things/*/block/**/*.json"],
  ],
  [
    "minecraft/jsonthings/block-set-type.json",
    ["/src/minecraft/thingpacks/*/things/*/block_set_type/**/*.json"],
  ],
  [
    "minecraft/jsonthings/creative-mode-tab.json",
    ["/src/minecraft/thingpacks/*/things/*/creative_mode_tab/**/*.json"],
  ],
  [
    "minecraft/jsonthings/food.json",
    ["/src/minecraft/thingpacks/*/things/*/food/**/*.json"],
  ],
  [
    "minecraft/jsonthings/item.json",
    ["/src/minecraft/thingpacks/*/things/*/item/**/*.json"],
  ],
]);
