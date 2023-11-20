import glob from "glob-promise";
import path from "path";
import {
  EndlessGateway,
  GatewaysToEternityGatewayV2,
} from "schemas/minecraft/gateways/gateways-v2";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";
import {
  cleanEntityNBT,
  ColorName,
  getDyeFromColor,
  mapHexToColorName,
} from "./utils";

const gatewaysBasePath = path.resolve(
  "./src/minecraft/global_packs/required_data/skyfactory_5/data/gateways/gateways",
);

async function main() {
  const gatewayDatapackFiles = await glob(
    `${gatewaysBasePath}/titan/**/*.json`,
    {
      ignore: [],
    },
  );

  await Promise.all(
    gatewayDatapackFiles.map(async (filePath) => {
      const data = await readJSONFile<GatewaysToEternityGatewayV2>(filePath);

      switch (data.__typename) {
        case "InvalidGateway":
          return;
        case "EndlessGateway": {
          const gatewayColor = mapHexToColorName(data.color);

          if (gatewayColor === ColorName.None || gatewayColor === null) {
            throw new Error(`unsupported gateway color ${data.color}`);
          }

          const dye = getDyeFromColor(gatewayColor);
          if (dye === null) {
            throw new Error(
              `failed to determine dye for gateway color ${data.color}`,
            );
          }

          const waveEntity = cleanEntityNBT(data.base_wave.entities[0]);
          waveEntity.count = 4;

          const newData: EndlessGateway = {
            __typename: "EndlessGateway",
            type: "gateways:endless",
            size: "large",
            color: data.color,
            base_wave: {
              entities: [waveEntity],
              rewards: [
                {
                  type: "gateways:experience",
                  experience: 50,
                },
                {
                  type: "gateways:stack",
                  stack: {
                    item: dye,
                    count: 8,
                  },
                },
              ],
              max_wave_time: 1200,
              setup_time: 200,
            },
            modifiers: [
              {
                application_mode: {
                  type: "gateways:after_every_n_waves",
                  waves: 3,
                  max: 4,
                },
                // Throw-away reward to satisfy constraints by the mod
                rewards: [
                  {
                    type: "gateways:experience",
                    experience: 0,
                  },
                ],
                setup_time: 100,
              },
              {
                application_mode: {
                  type: "gateways:after_every_n_waves",
                  waves: 3,
                  max: 12,
                },
                // Throw-away reward to satisfy constraints by the mod
                rewards: [
                  {
                    type: "gateways:experience",
                    experience: 0,
                  },
                ],
                max_wave_time: 400,
              },
              {
                application_mode: {
                  type: "gateways:after_every_n_waves",
                  waves: 3,
                  max: 1024,
                },
                modifiers: [
                  {
                    type: "gateways:attribute",
                    attribute: "generic.max_health",
                    operation: "multiply_total",
                    value: 0.15,
                  },
                  {
                    type: "gateways:attribute",
                    attribute: "generic.armor",
                    operation: "addition",
                    value: 1,
                  },
                  {
                    type: "gateways:attribute",
                    attribute: "generic.attack_damage",
                    operation: "multiply_total",
                    value: 0.25,
                  },
                  {
                    type: "gateways:attribute",
                    attribute: "generic.knockback_resistance",
                    operation: "addition",
                    value: 0.05,
                  },
                ],
              },
            ],
            rules: {
              leash_range: 32,
              spawn_range: 5,
            },
            boss_event: {
              mode: "name_plate",
            },
            spawn_algorithm: "gateways:inward_spiral",
          };

          return await writeJSONFile(filePath, newData, "json");
        }
        default:
          // eslint-disable-next-line @typescript-eslint/ban-ts-comment
          // @ts-ignore
          throw new Error(`Unsupported gateway type ${data.__typename}`);
      }
    }),
  );
}

main();
