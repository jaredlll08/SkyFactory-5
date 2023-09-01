/** @type {import('jest').Config} */
const config = {
  runner: "jest-runner-eslint",
  displayName: "ESLint",
  testMatch: [...getTestMatches()],
};

function getTestMatches() {
  const fileEndings = [
    "[jt]s",
    "[jt]sx",
    "json",
    "json[c5]",
    "toml",
    "yaml",
    "yml",
  ];

  const globs = [
    `<rootDir>/schemas/**/*`,
    `<rootDir>/scripts/**/*`,
    `<rootDir>/src/**/*`,
  ];

  const testMatches = [];
  globs.forEach((glob) => {
    fileEndings.forEach((fileEnding) => {
      testMatches.push(`${glob}.${fileEnding}`);
    });
  });

  return testMatches;
}

module.exports = config;
