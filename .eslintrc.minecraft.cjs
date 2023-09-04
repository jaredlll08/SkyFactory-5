const minecraftSubPath = (s) => `src/minecraft/${s}`;

/** @type {import('eslint').Linter.Config} */
const config = {
  overrides: [
    {
      files: [minecraftSubPath("**/*.json"), minecraftSubPath("**/*.mcmeta")],
      rules: {
        "no-multiple-empty-lines": ["error", { max: 0 }],
      },
    },
    {
      files: [minecraftSubPath("config/incontrol/loot.json")],
      rules: {
        "jsonc/sort-keys": [
          "error",
          {
            pathPattern: ".*",
            order: [
              "mob",
              "player",
              "item",
              "gamestage",
              "random",
              "itemcount",
            ],
          },
        ],
      },
    },
    {
      files: [minecraftSubPath("config/incontrol/spawn.json")],
      rules: {
        "jsonc/sort-keys": [
          "error",
          {
            pathPattern: ".*",
            order: [
              "mob",
              "mod",
              "dimension",
              "block",
              "healthmultiply",
              "damagemultiply",
              "speedmultiply",
              "damageadd",
              "gamestage",
              "minlight",
              "maxlight",
              "onjoin",
              "helditem",
              "result",
            ],
          },
        ],
      },
    },
    {
      files: [minecraftSubPath("config/incontrol/spawner.json")],
      rules: {
        "jsonc/sort-keys": [
          "error",
          {
            pathPattern: ".*",
            order: ["mob", "persecond", "attempts", "amount", "conditions"],
          },
        ],
      },
    },
  ],
};

module.exports = config;
