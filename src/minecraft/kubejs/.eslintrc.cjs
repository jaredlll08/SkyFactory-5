/** @type {import('eslint').Linter.Config} */
const config = {
  globals: {
    // Constants
    SECOND: "readonly",
    MINUTE: "readonly",
    HOUR: "readonly",

    // Classes
    Platform: "readonly",
    ResourceLocation: "readonly",
    Utils: "readonly",
    Java: "readonly",
    Text: "readonly",
    UUID: "readonly",
    JsonIO: "readonly",
    Block: "readonly",
    Item: "readonly",
    Ingredient: "readonly",
    IngredientHelper: "readonly",
    NBT: "readonly",
    NBTIO: "readonly",
    Direction: "readonly",
    Facing: "readonly",
    AABB: "readonly",
    Fluid: "readonly",
    Color: "readonly",
    BlockStatePredicate: "readonly",
    Component: "readonly",

    // Wrapped Classes
    JavaMath: "readonly",
    Blocks: "readonly",
    Items: "readonly",
    Stats: "readonly",
    DecorationGenerationStep: "readonly",
    CarvingGenerationStep: "readonly",
    BlockPos: "readonly",
    DamageSource: "readonly",
    BlockProperties: "readonly",
    Vec3: "readonly",
    Vec3d: "readonly",
    Vec3i: "readonly",
  },
  rules: {
    "@typescript-eslint/no-restricted-imports": [
      "error",
      {
        patterns: [
          {
            group: ["[A-Z]*"],
            message: "Imports are not allowed in KubeJS files",
            allowTypeImports: true,
          },
        ],
      },
    ],
  },
  overrides: [
    {
      files: "client_scripts/**/*",
      globals: {
        ClientEvents: "readonly",
        ItemEvents: "readonly",
        NetworkEvents: "readonly",

        // Mods
        REIEvents: "readonly",
      },
    },
    {
      files: "server_scripts/**/*",
      globals: {
        BlockEvents: "readonly",
        EntityEvents: "readonly",
        ItemEvents: "readonly",
        LevelEvents: "readonly",
        NetworkEvents: "readonly",
        PlayerEvents: "readonly",
        ServerEvents: "readonly",

        // Mods
        GameStageEvents: "readonly",
      },
    },
    {
      files: "startup_scripts/**/*",
      globals: {
        BlockEvents: "readonly",
        ItemEvents: "readonly",
        Platform: "readonly",
        StartupEvents: "readonly",
        WorldgenEvents: "readonly",
      },
    },
  ],
};

module.exports = config;
