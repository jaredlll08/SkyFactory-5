import { unlink } from "fs/promises";
import glob from "glob-promise";
import { snakeCase } from "lodash";
import path from "path";
import { OpenBlocksTrophiesTrophy } from "schemas/minecraft/obtrophies/trophy";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";
import { readActionState } from "./action-state-manager";

const trophiesBasePath = path.resolve(
  "./src/minecraft/global_packs/required_data/skyfactory_5/data/obtrophies/trophies",
);

interface Args {
  mob: string;
  mobName: string;
}

export async function createTrophy({ mob, mobName }: Args) {
  const trophy: OpenBlocksTrophiesTrophy = {
    entity: mob,
  };

  await writeJSONFile(
    path.join(trophiesBasePath, `${snakeCase(mobName)}.json`),
    trophy,
    "json",
  );
}

export async function cleanTrophies() {
  const state = await readActionState();
  if (!state.mobs) {
    throw new Error("Mobs missing from Action State");
  }

  const mobs = new Set(state.mobs);
  const undiscoveredMobs = new Set(state.mobs);

  const trophyDatapackFiles = await glob(`${trophiesBasePath}/*.json`, {
    ignore: [],
  });

  await Promise.all(
    trophyDatapackFiles.map(async (filePath) => {
      const data = await readJSONFile<OpenBlocksTrophiesTrophy>(filePath);

      if (!mobs.has(data.entity)) {
        await unlink(filePath);
        return;
      }

      undiscoveredMobs.delete(data.entity);
    }),
  );

  return Array.from(undiscoveredMobs);
}
