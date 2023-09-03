# SkyFactory 5 [![Curseforge][curseimg]][curselink]

[![Twitch Status](https://img.shields.io/twitch/status/darkosto?color=411145&label=Darkosto&logo=twitch)](https://twitch.tv/darkosto) [![Discord][discordimg]][discordlink]

[discordimg]: https://img.shields.io/discord/329440410839678986.svg?logo=discord&logoWidth=18&colorB=7289DA
[discordlink]: https://discord.gg/darkosto
[curseimg]: http://cf.way2muchnoise.eu/392141.svg
[curselink]: https://www.curseforge.com/minecraft/modpacks/skyfactory-5

## Development

The repo utilizes Node.js (and npm) to manage build tools, and other useful dependencies. In addition, the repo includes pre-configured settings and recommended extensions to improve the developer experience, so VSCode is recommended.

1. [Getting Started](#getting-started)
2. [Development Loop](#development-loop)
3. [Additional Scripts](#additional-scripts)

### Getting Started

When first starting development, make sure you go through these steps to get your development environment set up.

1. [Installing / Setting Up Node](#nodejs--npm)

#### Node.js / NPM

To get started, make sure you have Node.js installed. For easier management of your Node.js version, we recommend installing NVM (Node Version Manager) instead. For Windows you can install from the latest release [here](https://github.com/coreybutler/nvm-windows/releases) and for OSX/Linux follow the steps [here](https://github.com/nvm-sh/nvm#installing-and-updating).

Once installed, run `nvm install 16.16.0` then `nvm use 16.16.0` once the installation completes.

### Development Loop

1. Install any recommended project extensions.
2. Ensure you are using the correct Node.js version by running `npm run setup:node`.
3. If you've pulled in changes, make sure you've updated your dependencies by running `npm install`.
4. Run `npm run start` to start Minecraft.
5. Work on the project.

### Additional Scripts

These are additional scripts that are provided for easing development processes.

- `npm run generate` starts a prompt to generate certain project files.
- `npm run symlink` generates symlinks between the repo and a minecraft instance.
