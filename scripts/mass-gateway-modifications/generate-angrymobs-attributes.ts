import path from "path";
import { friendlyMobs } from "scripts/generator/minecraft-gateway/utils";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";

const configFilePath = path.resolve(
  "./src/minecraft/config/angrymobs/angrymobs_attributes.json",
);

interface AngrymobsAttributesData {
  additionList: ({
    value: number;
  } & MapKey)[];
}

interface MapKey {
  entity: string;
  attribute: string;
}

const denylistedMobs = new Set<string>(["minecraft:bee"]);

async function main() {
  const data = await readJSONFile<AngrymobsAttributesData>(configFilePath);

  const mappedData = new Map<MapKey, number>();
  data.additionList.forEach((entry) => {
    mappedData.set(
      { entity: entry.entity, attribute: entry.attribute },
      entry.value,
    );
  });

  friendlyMobs.forEach((mob) => {
    if (denylistedMobs.has(mob)) {
      return;
    }

    const key = { entity: mob, attribute: "generic.attack_damage" };
    if (!mappedData.has(key)) {
      mappedData.set(key, 1);
    }
  });

  const newAdditionList: AngrymobsAttributesData["additionList"] = [];
  mappedData.forEach((val, key) => {
    newAdditionList.push({
      ...key,
      value: val,
    });
  });

  data.additionList = newAdditionList;

  await writeJSONFile(configFilePath, data, "json");
}

main();
