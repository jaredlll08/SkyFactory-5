import { isArray } from "lodash";
import path from "path";
import { InControlSpawn } from "schemas/minecraft/incontrol/spawn";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";
import { readActionState } from "./action-state-manager";

const spawnJsonPath = path.resolve(
  "./src/minecraft/config/incontrol/spawn.json",
);

const individualMobEntriesIndexOffset = 3;

interface Args {
  entity: string;
  stage: string;
  minlight: number;
  maxlight: number;
}

export async function appendMobToInControlSpawn({
  entity,
  stage,
  minlight,
  maxlight,
}: Args) {
  const state = await readActionState();
  if (!state.mobs) {
    throw new Error("Mobs missing from Action State");
  }

  const mobs = new Set<string>(state.mobs);

  const data = await readJSONFile<InControlSpawn>(spawnJsonPath);

  const result = data.slice(0, individualMobEntriesIndexOffset);

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

  individualMobEntries.push({
    mob: entity,
    block: {
      tag: "skyfactory_5:creature_spawnable_blocks_please_work_i_swear_to_john_cena",
    },
    gamestage: stage,
    armorhelmet: {
      item: "simplehats:fro",
      nbt: {
        display: {
          color: 16352035,
        },
      },
    },
    result: "allow",
    minlight_full: minlight,
    maxlight_full: maxlight,
  });

  result.push(
    ...individualMobEntries
      .filter((entry) => typeof entry.mob === "string" && mobs.has(entry.mob))
      .sort((a, b) => {
        if (typeof a.mob !== "string" || typeof b.mob !== "string") {
          console.log("Unexpected mob type for individual mob entries");
          return 0;
        }

        return a.mob.localeCompare(b.mob);
      }),
  );

  const massMobEntries = data.slice(-2);

  massMobEntries.forEach((entry) => {
    entry.mob = Array.from(mobs).sort((a, b) => a.localeCompare(b));
  });

  result.push(...massMobEntries);

  await writeJSONFile(spawnJsonPath, result, "json");
}

export async function getMobStageMapping(): Promise<Record<string, string>> {
  const data = await readJSONFile<InControlSpawn>(spawnJsonPath);

  const mapping: Record<string, string> = {};

  const individualMobEntries = data.slice(individualMobEntriesIndexOffset, -2);
  individualMobEntries.forEach((entry, i) => {
    if (typeof entry.mob !== "string") {
      console.error(
        `unsupported entry.mob type at index ${
          individualMobEntriesIndexOffset + i
        }`,
      );
      return;
    }
    if (!entry.gamestage) {
      console.error(
        `missing gamestage at index ${individualMobEntriesIndexOffset + i}`,
      );
      return;
    }

    mapping[entry.mob] = entry.gamestage;
  });

  return mapping;
}
