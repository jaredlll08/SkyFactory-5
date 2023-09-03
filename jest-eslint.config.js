const moduleFileExtensions = [
  "bak",
  "cjs",
  "js",
  "json",
  "json5",
  "jsonc",
  "jsx",
  "mcmeta",
  "mjs",
  "toml",
  "ts",
  "tsx",
  "zs",
];

const supportedFileEndings = `{${moduleFileExtensions.join(",")}}`;

/** @type {import('jest').Config} */
const config = {
  runner: "jest-runner-eslint",
  displayName: "ESLint",
  testMatch: [
    `<rootDir>/schemas/**/*.${supportedFileEndings}`,
    `<rootDir>/scripts/**/*.${supportedFileEndings}`,
    `<rootDir>/src/**/*.${supportedFileEndings}`,
    `<rootDir>/*.${supportedFileEndings}`,
  ],
  moduleFileExtensions,
  reporters: ["jest-silent-reporter"],
};

module.exports = config;
