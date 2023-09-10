/** @type {import('eslint').Linter.Config} */
const config = {
  root: true,
  parser: "@typescript-eslint/parser",
  plugins: ["@typescript-eslint", "editorconfig", "import", "unicorn"],
  extends: [
    "eslint:recommended",
    "plugin:toml/recommended",
    "plugin:jsonc/prettier",
    "plugin:@typescript-eslint/eslint-recommended",
    "plugin:@typescript-eslint/recommended",
    "plugin:editorconfig/noconflict",
    "plugin:typescript-paths/recommended",
    "plugin:json-schema-validator/recommended",
    "prettier",
    "./.eslintrc.minecraft.cjs",
  ],
  env: {
    es2020: true,
    node: true,
  },
  settings: {
    "import/extensions": [".ts"],
    "import/parsers": {
      "@typescript-eslint/parser": [".ts"],
    },
    "import/resolver": {
      typescript: {
        alwaysTryTypes: true,
      },
    },
  },
  rules: {
    "import/first": "error",
    "import/order": [
      "error",
      {
        groups: [
          ["external", "builtin"],
          "internal",
          ["parent", "sibling", "index"],
        ],
        alphabetize: {
          order: "asc",
        },
      },
    ],
    "sort-imports": [
      "error",
      {
        ignoreCase: true,
        ignoreDeclarationSort: true,
      },
    ],

    "json-schema-validator/no-invalid": [
      "error",
      {
        schemas: [...getGeneratedSchemaValidatorRules()],
      },
    ],

    "typescript-paths/absolute-import": ["error", { enableAlias: false }],
    "typescript-paths/absolute-parent-import": "error",

    "toml/spaced-comment": "error",

    "unicorn/no-empty-file": ["error"],
  },
  overrides: [
    {
      files: "*.toml",
      parser: "toml-eslint-parser",
    },
    {
      files: ["*.json", "*.json5", "*.jsonc", "*.mcmeta"],
      parser: "jsonc-eslint-parser",
    },
    {
      files: ["!src/minecraft/**/*"],
      rules: {
        "unicorn/filename-case": [
          "error",
          {
            case: "kebabCase",
          },
        ],
      },
    },
    {
      files: "*.zs",
      parser: "any-eslint-parser",
      plugins: ["regex"],
      extends: ["plugin:editorconfig/all"],
      rules: {
        "unicorn/filename-case": [
          "error",
          {
            case: "kebabCase",
          },
        ],
        "regex/invalid": [
          "error",
          [
            {
              id: "zenscript/spaced-comment",
              message: "Expected space or tab after '//' in comment",
              regex: "//([\\S])",
              replacement: {
                function: "return `// ${captured[0]}`",
              },
            },
          ],
        ],
      },
    },
    {
      files: ["*.bak"],
      plugins: ["regex"],
      parser: "any-eslint-parser",
      rules: {
        "regex/invalid": [
          "error",
          [
            {
              id: "no-bak-files",
              message: ".bak file should not exist",
              regex: "[\\W\\w\\S\\s]*",
            },
          ],
        ],
      },
    },
  ],
};

function getGeneratedSchemaValidatorRules() {
  // GENERATOR START
  return [
    {
      fileMatch: ["mc-package.json"],
      schema: "./schemas/mc-package.json",
    },
    {
      fileMatch: ["src/minecraft/config/incontrol/loot.json"],
      schema: "./schemas/minecraft/incontrol/loot.json",
    },
    {
      fileMatch: ["src/minecraft/config/incontrol/spawn.json"],
      schema: "./schemas/minecraft/incontrol/spawn.json",
    },
    {
      fileMatch: ["src/minecraft/config/incontrol/spawner.json"],
      schema: "./schemas/minecraft/incontrol/spawner.json",
    },
    {
      fileMatch: ["src/minecraft/thingpacks/*/things/*/block/**/*.json"],
      schema: "./schemas/minecraft/jsonthings/block.json",
    },
    {
      fileMatch: [
        "src/minecraft/thingpacks/*/things/*/block_set_type/**/*.json",
      ],
      schema: "./schemas/minecraft/jsonthings/block-set-type.json",
    },
    {
      fileMatch: [
        "src/minecraft/thingpacks/*/things/*/creative_mode_tab/**/*.json",
      ],
      schema: "./schemas/minecraft/jsonthings/creative-mode-tab.json",
    },
    {
      fileMatch: ["src/minecraft/thingpacks/*/things/*/food/**/*.json"],
      schema: "./schemas/minecraft/jsonthings/food.json",
    },
    {
      fileMatch: ["src/minecraft/thingpacks/*/things/*/item/**/*.json"],
      schema: "./schemas/minecraft/jsonthings/item.json",
    },
  ];
  // GENERATOR END
}

module.exports = config;
