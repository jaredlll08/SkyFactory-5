const moduleFileExtensions = [
  "bak",
  "js",
  "json",
  "json5",
  "jsonc",
  "jsx",
  "mcmeta",
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
};

module.exports = config;
