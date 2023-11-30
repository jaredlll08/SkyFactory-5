import glob from "glob-promise";
import path from "path";
import { GatewaysToEternityGatewayV2 } from "schemas/minecraft/gateways/gateways-v2";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";
import { getMobStageMapping } from "./incontrol-spawn";

const gatewaysBasePath = path.resolve(
  "./src/minecraft/global_packs/required_data/skyfactory_5/data/gateways/gateways",
);

const actionStateFilePath = path.join(__dirname, "action-state.json");

interface ActionStateData {
  mobs?: string[];
  /** Key: Mob Resource Location, Value: Gamestage */
  mobStageMapping?: Record<string, string>;
}

export function readActionState(): Promise<ActionStateData> {
  return readJSONFile<ActionStateData>(actionStateFilePath);
}

export async function generateMobState() {
  const gatewayDatapackFiles = await glob(
    `${gatewaysBasePath}/{normal,titan}/**/*.json`,
    {
      ignore: [],
    },
  );

  const mobs = new Set<string>();

  await Promise.all(
    gatewayDatapackFiles.map(async (filePath) => {
      const data = await readJSONFile<GatewaysToEternityGatewayV2>(filePath);

      switch (data.__typename) {
        case "NormalGateway":
          mobs.add(data.waves[0].entities[0].entity);
          return;
        case "EndlessGateway":
          mobs.add(data.base_wave.entities[0].entity);
          return;
        default:
          return;
      }
    }),
  );

  await writeJSONFile<ActionStateData>(
    actionStateFilePath,
    {
      mobs: Array.from(mobs).sort((a, b) => a.localeCompare(b)),
    },
    "json",
  );
}

export async function generateMobStageState() {
  const mapping = await getMobStageMapping();

  const state = await readActionState();

  await writeJSONFile<ActionStateData>(
    actionStateFilePath,
    {
      ...state,
      mobStageMapping: mapping,
    },
    "json",
  );
}
