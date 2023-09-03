const moduleFileExtensions = [
  "js",
  "jsx",
  "ts",
  "tsx",
  "json",
  "jsonc",
  "json5",
  "mcmeta",
  "toml",
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
