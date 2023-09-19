/** @type {import('eslint').Linter.Config} */
const config = {
  // globals: {},
  overrides: [
    {
      files: "client_scripts/**/*",
      globals: {
        ClientEvents: "readonly",
        ItemEvents: "readonly",
        NetworkEvents: "readonly",
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
