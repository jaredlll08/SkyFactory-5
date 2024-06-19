import { unlink } from "fs/promises";
import glob from "glob-promise";
import { snakeCase } from "lodash";
import path from "path";
import { writeJSONFile } from "scripts/utils/file";
import { ColorName } from "scripts/utils/minecraft-colors";
import { MobData } from "./data-manager";

const DEFAULT_WEIGHT = 100;

const treasurebagsLootBasePath = path.resolve(
  "src/minecraft/global_packs/required_data/skyfactory_5/data/treasurebags/loot_tables/bags",
);

interface TreasureBagGatewayLootTable {
  pools: {
    rolls: 1;
    entries: {
      type: "item";
      name: "gateways:gate_pearl";
      weight: number;
      functions: [
        {
          function: "set_nbt";
          tag: string;
        },
      ];
    }[];
  }[];
}

export async function generateTreasureBagLootTables(data: MobData) {
  const files = await glob(`${treasurebagsLootBasePath}/*.json`);

  await Promise.all(files.map((filePath) => unlink(filePath)));

  const lootTables: Map<ColorName, TreasureBagGatewayLootTable> = new Map();

  Object.keys(ColorName).forEach((k) => {
    const color = ColorName[k as keyof typeof ColorName];

    lootTables.set(color, {
      pools: [
        {
          rolls: 1,
          entries: [],
        },
      ],
    });
  });

  data.forEach((entry) => {
    if (entry.spawnOnly || entry.isUniqueMob) {
      return;
    }

    const lootTable = lootTables.get(entry.color);

    if (!lootTable) {
      console.warn(`Failed to find loot table entry for color ${entry.color}`);
      return;
    }

    entry.gatewayTypes.forEach((gatewayType) => {
      lootTable.pools[0].entries.push({
        type: "item",
        name: "gateways:gate_pearl",
        weight: entry.trophyBagLootTableWeight ?? DEFAULT_WEIGHT,
        functions: [
          {
            function: "set_nbt",
            tag: `{gateway:"gateways:${snakeCase(gatewayType)}/${snakeCase(
              entry.mobName,
            )}"}`,
          },
        ],
      });
    });
  });

  await Promise.all(
    Array.from(lootTables).map(([color, lootTable]) => {
      return writeJSONFile(
        path.join(treasurebagsLootBasePath, `${snakeCase(color)}.json`),
        lootTable,
        "json",
      );
    }),
  );
}
