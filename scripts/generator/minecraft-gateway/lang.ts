import { mkdir } from "fs/promises";
import { snakeCase } from "lodash";
import path from "path";
import {
  checkFileExists,
  readJSONFile,
  writeJSONFile,
} from "scripts/utils/file";
import { GatewayType } from "./constants";
import { MobData } from "./data-manager";

const langFilePath = path.resolve(
  "./src/minecraft/global_packs/required_resources/sf5_resources/assets/skyfactory_5/lang/en_us.json",
);

type LangData = Record<string, string>;

async function readLangFile(): Promise<LangData> {
  if (await checkFileExists(langFilePath)) {
    return readJSONFile<LangData>(langFilePath);
  }

  return {};
}

async function writeLangFile(data: LangData): Promise<void> {
  if (!(await checkFileExists(langFilePath))) {
    await mkdir(path.parse(langFilePath).dir, { recursive: true });
  }

  const sorted = Object.keys(data)
    .sort((a, b) => a.localeCompare(b))
    .reduce((obj, key) => {
      obj[key] = data[key];
      return obj;
    }, {} as LangData);

  return writeJSONFile(langFilePath, sorted, "json");
}

export async function generateLangFile(data: MobData) {
  const langData = await readLangFile();

  Object.keys(langData).forEach((key) => {
    if (key.startsWith("gateways.normal") || key.startsWith("gateways.titan")) {
      delete langData[key];
    }
  });

  data.forEach((entry) => {
    if (entry.spawnOnly) {
      return;
    }

    entry.gatewayTypes.forEach((type) => {
      if (type === GatewayType.Normal) {
        langData[
          `gateways.normal/${snakeCase(entry.mobName)}`
        ] = `${entry.mobName} Gateway`;
        langData[
          `gateways.rewards.trophy.${snakeCase(entry.mobName)}`
        ] = `${entry.mobName} Trophy`;
      }
      if (type === GatewayType.Titan) {
        langData[
          `gateways.titan/${snakeCase(entry.mobName)}`
        ] = `Titan ${entry.mobName} Gateway`;
      }
    });
  });

  await writeLangFile(langData);
}
