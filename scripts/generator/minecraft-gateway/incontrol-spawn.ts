import { defaultsDeep } from "lodash";
import path from "path";
import { InControlSpawn } from "schemas/minecraft/incontrol/spawn";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";
import { MobData } from "./data-manager";

const spawnJsonPath = path.resolve(
  "./src/minecraft/config/incontrol/spawn.json",
);

const individualMobEntriesIndexOffset = 3;

export async function generateInControlSpawnConfig(data: MobData) {
  const spawnConfig = await readJSONFile<InControlSpawn>(spawnJsonPath);

  const result = spawnConfig.slice(0, individualMobEntriesIndexOffset);

  result.push(
    ...data
      .map((entry) =>
        defaultsDeep(entry.spawnOverrides, {
          mob: entry.mobID,
          block: {
            tag: "skyfactory_5:creature_spawnable_blocks_please_work_i_swear_to_john_cena",
          },
          gamestage: entry.stage,
          armorhelmet: {
            item: "simplehats:fro",
            nbt: {
              display: {
                color: 16352035,
              },
            },
          },
          result: "allow",
          minlight_full: entry.minLightLevel,
          maxlight_full: entry.maxLightLevel,
        }),
      )
      .sort((a, b) => {
        if (typeof a.mob !== "string" || typeof b.mob !== "string") {
          console.log("Unexpected mob type for individual mob entries");
          return 0;
        }

        return a.mob.localeCompare(b.mob);
      }),
  );

  const massMobEntries = spawnConfig.slice(-2);

  massMobEntries.forEach((entry) => {
    entry.mob = Array.from(data)
      .map((entry) => entry.mobID)
      .sort((a, b) => a.localeCompare(b));
  });

  result.push(...massMobEntries);

  await writeJSONFile(spawnJsonPath, result, "json");
}
