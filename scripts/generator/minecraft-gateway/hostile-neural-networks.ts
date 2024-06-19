import path from "path";
import { HostileNeuralNetworksDataModel } from "schemas/minecraft/hostilenetworks/data-model";
import {
  checkFileExists,
  readJSONFile,
  writeJSONFile,
} from "scripts/utils/file";
import { mapColorNameToHex } from "scripts/utils/minecraft-colors";
import { MobData } from "./data-manager";
import { getDyeFromColor } from "./utils";

const skippedMobIDs = new Set<string>([
  "forcecraft:fairy",
  "luggage:ender_luggage",
  "luggage:luggage",
]);

const rootDir = path.join("src", "minecraft", "datagen", "data");

export async function generateHostileNeuralNetworkEntries(data: MobData) {
  await Promise.all(
    data.map(async (entry) => {
      if (entry.spawnOnly || skippedMobIDs.has(entry.mobID)) {
        return;
      }

      const colorHex = mapColorNameToHex(entry.color);
      if (colorHex === null) {
        throw new Error(`Unsupported color for mobID ${entry.mobID}`);
      }

      const dye = getDyeFromColor(entry.color);
      if (dye === null) {
        throw new Error(
          `Unsupported color for dye ${entry.color} for mobID ${entry.mobID}`,
        );
      }

      const [namespace, mob] = entry.mobID.split(":");
      if (!namespace || !mob) {
        throw new Error("invalid mob ID");
      }

      const filePath = path.join(
        rootDir,
        namespace,
        "data_models",
        `${mob}.json`,
      );
      const fileExists = await checkFileExists(filePath);
      if (!fileExists) {
        throw new Error(
          `file doesn't exist for mobID ${entry.mobID}. Expected at ${filePath}`,
        );
      }

      const data = await readJSONFile<HostileNeuralNetworksDataModel>(filePath);

      data.name_color = colorHex;
      data.base_drop = {
        item: dye,
        count: 1,
      };
      data.tier_data = [12, 60, 360, 1260];

      await writeJSONFile(filePath, data, "json");
    }),
  );
}
