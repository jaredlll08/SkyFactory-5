import path from "path";
import { writeJSONFile } from "scripts/utils/file";
import { MobData } from "./data-manager";

export function createLootModifierGenerators() {
  return [generateHatLootInjectEntityLootModifier];
}

export async function generateHatLootInjectEntityLootModifier(data: MobData) {
  const terms: {
    condition: "forge:loot_table_id";
    loot_table_id: string;
  }[] = [];

  const jsonData = {
    type: "simplehats:hat_lootinject_entity",
    conditions: [
      {
        condition: "minecraft:any_of",
        terms: terms,
        conditions: [
          {
            condition: "minecraft:killed_by_player",
          },
        ],
      },
    ],
  };

  data
    .sort((a, b) => a.mobID.localeCompare(b.mobID))
    .forEach((entry) => {
      if (entry.spawnOnly) {
        return;
      }

      const mobSplit = entry.mobID.split(":");

      terms.push({
        condition: "forge:loot_table_id",
        loot_table_id: `${mobSplit[0]}:entities/${mobSplit[1]}`,
      });
    });

  await writeJSONFile(
    path.resolve(
      "src/minecraft/global_packs/required_data/skyfactory_5/data/simplehats/loot_modifiers/hat_lootinject_entity.json",
    ),
    jsonData,
    "json",
  );
}
