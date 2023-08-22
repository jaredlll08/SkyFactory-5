/** @type {import('jest').Config} */
const config = {
  runner: "jest-runner-eslint",
  displayName: "ESLint",
  testMatch: [
    "<rootDir>/schemas/**/*.[jt]s",
    "<rootDir>/scripts/**/*.[jt]s",
    "<rootDir>/src/**/*.[jt]s",
  ],
};

module.exports = config;
