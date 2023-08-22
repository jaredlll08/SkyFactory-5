// https://github.com/jest-community/jest-runner-eslint#clioptions
module.exports = {
  cliOptions: {
    quiet: process.env.QUIET !== "false",
    fix: process.env.FIX === "true",
  },
};
