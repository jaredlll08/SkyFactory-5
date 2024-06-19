import path from "path";

export const releaseDirPath = path.join(process.cwd(), ".releases");
export const releaseIgnorePath = path.join(process.cwd(), ".releaseignore");

const buildDirPath = path.join(process.cwd(), "src", "minecraft");
const minecraftDirPath = path.join(process.cwd(), "minecraft");

export const directories = new Map([
  ["config", buildDirPath],
  ["defaultconfigs", buildDirPath],
  ["global_packs", buildDirPath],
  ["journeymap", buildDirPath],
  ["kubejs", buildDirPath],
  ["mods", minecraftDirPath],
  ["packmenu", buildDirPath],
  ["scripts", buildDirPath],
  ["thingpacks", buildDirPath],
]);

export const serverIgnoredMods: string[] = [
  "bridgingmod",
  "itemborders",
  "jade",
  "loadingbackgrounds",
  "lootbeams",
  "modernui",
  "reicustomcommand",
  "reiplugincompatibilities",
  "rrls",
  "seamless-loading-screen",
];
