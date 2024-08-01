import { snakeCase } from "lodash";
import path from "path";
import { readLangFile, writeLangFile } from "scripts/utils/minecraft-lang";
import { GatewayType } from "./constants";
import { MobData } from "./data-manager";

const langFilePath = path.resolve(
  "./src/minecraft/global_packs/required_resources/sf5_resources/assets/skyfactory_5/lang/en_us.json",
);

export async function generateLangFile(data: MobData) {
  const langData = await readLangFile(langFilePath);

  Object.keys(langData).forEach((key) => {
    if (key.startsWith("gateways.")) {
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
      }
      if (type === GatewayType.Titan) {
        langData[
          `gateways.titan/${snakeCase(entry.mobName)}`
        ] = `Titan ${entry.mobName} Gateway`;
      }
    });
  });

  await writeLangFile(langFilePath, langData);
}
