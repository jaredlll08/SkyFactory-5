import TOML, { JsonMap } from "@iarna/toml";
import { readFile, writeFile } from "fs/promises";
import path from "path";
import { mapColorNameToHex } from "scripts/utils/minecraft-colors";
import { MobData } from "./data-manager";

interface ItemBorderConfig {
  client: {
    options: {
      hotbar: boolean;
      show_for_common: boolean;
      square_corners: boolean;
      full_border: boolean;
      over_items: boolean;
      extra_glow: boolean;
      auto_borders: boolean;
      legendary_tooltips_sync: boolean;
      manual_borders: Record<string, string[]>;
    };
  };
}

const itemBordersConfigPath = path.resolve(
  "./src/minecraft/config/itemborders-common.toml",
);

export async function generateItemBordersConfig(data: MobData) {
  const config = TOML.parse(
    await readFile(itemBordersConfigPath, "utf-8"),
  ) as unknown as ItemBorderConfig;

  // Filter out existing trophies
  Object.keys(config.client.options.manual_borders).forEach((key) => {
    config.client.options.manual_borders[key] =
      config.client.options.manual_borders[key].filter(
        (entry) => !entry.startsWith("obtrophies:trophy"),
      );
  });

  data.forEach((entry) => {
    if (entry.spawnOnly) {
      return;
    }

    const colorHex = mapColorNameToHex(entry.color);
    if (!colorHex) {
      console.error(
        `Failed to determine hex color for color name ${entry.color} on mob ${entry.mobID}`,
      );
      return;
    }

    if (config.client.options.manual_borders[colorHex] === undefined) {
      config.client.options.manual_borders[colorHex] = [];
    }

    config.client.options.manual_borders[colorHex].push(
      `obtrophies:trophy+&entity=${entry.mobID}`,
    );
  });

  // Sort and clean up
  Object.keys(config.client.options.manual_borders).forEach((key) => {
    if (config.client.options.manual_borders[key].length === 0) {
      delete config.client.options.manual_borders[key];
      return;
    }
    config.client.options.manual_borders[key] =
      config.client.options.manual_borders[key].sort((a, b) =>
        a.localeCompare(b),
      );
  });

  console.log(TOML.stringify(config.client.options.manual_borders));

  await writeFile(
    itemBordersConfigPath,
    TOML.stringify(config as unknown as JsonMap),
  );
}
