import { isArray } from "lodash";
import path from "path";
import { InControlSpawn } from "schemas/minecraft/incontrol/spawn";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";

const spawnJsonPath = path.resolve(
  "./src/minecraft/config/incontrol/spawn.json",
);

export async function appendMobToInControlSpawn() {
  const individualMobEntriesIndexOffset = 3;

  const data = await readJSONFile<InControlSpawn>(spawnJsonPath);

  const result = data.slice(0, individualMobEntriesIndexOffset);

  const mobs = new Set<string>();

  const individualMobEntries = data.slice(individualMobEntriesIndexOffset, -2);
  for (let i = 0; i < individualMobEntries.length; i++) {
    const entry = individualMobEntries[i];
    if (isArray(entry.mob) && entry.mob.length === 1) {
      entry.mob = entry.mob[0];
    }

    if (isArray(entry.mob) || !entry.mob) {
      console.log("entry.mob is invalid");
      continue;
    }

    mobs.add(entry.mob);

    if (!entry.block) {
      entry.block = {
        tag: "skyfactory_5:creature_spawnable_blocks_please_work_i_swear_to_john_cena",
      };
    }
    if (entry.minlight !== undefined) {
      entry.minlight_full = entry.minlight;
      entry.minlight = undefined;
    }
    if (entry.maxlight !== undefined) {
      entry.maxlight_full = entry.maxlight;
      entry.maxlight = undefined;
    }
  }

  // TODO: add new mob individualMobEntries.push()

  result.push(
    ...individualMobEntries.sort((a, b) => {
      if (typeof a.mob !== "string" || typeof b.mob !== "string") {
        console.log("Unexpected mob type for individual mob entries");
        return 0;
      }

      return a.mob.localeCompare(b.mob);
    }),
  );

  const massMobEntries = data.slice(-2);

  massMobEntries.forEach((entry) => {
    if (!isArray(entry.mob)) {
      console.log(`entry.mob is not an array`);
      return;
    }

    entry.mob = entry.mob.sort((a, b) => a.localeCompare(b));
  });

  result.push(...massMobEntries);

  await writeJSONFile(spawnJsonPath, result, "json");
}

appendMobToInControlSpawn();
