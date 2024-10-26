import { unlink } from "fs/promises";
import glob from "glob-promise";
import { snakeCase } from "lodash";
import path from "path";
import { OpenBlocksTrophiesTrophy } from "schemas/minecraft/obtrophies/trophy";
import { writeJSONFile } from "scripts/utils/file";
import { MobData } from "./data-manager";

const trophiesBasePath = path.resolve(
  "./src/minecraft/global_packs/required_data/skyfactory_5/data/obtrophies/trophies",
);

export async function generateTrophies(data: MobData) {
  const files = await glob(`${trophiesBasePath}/*.json`);

  await Promise.all(
    files.map((filePath) => {
      // Keep this custom file around to override its default behavior
      if (filePath.endsWith("player.json")) {
        return;
      }

      unlink(filePath);
    }),
  );

  await Promise.all(
    data.map((entry) => {
      if (entry.spawnOnly) {
        return;
      }

      const trophy: OpenBlocksTrophiesTrophy = {
        entity: entry.mobID,
        ...entry.trophyData,
      };

      return writeJSONFile(
        path.join(trophiesBasePath, `${snakeCase(entry.mobName)}.json`),
        trophy,
        "json",
      );
    }),
  );
}
