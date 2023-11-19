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
    `${gatewaysBasePath}/**/frog_kill_*.json`,
    {
      ignore: [],
    },
  );

  await Promise.all(
    gatewayDatapackFiles.map(async (filePath) => {
      const fileName = path.parse(filePath).base.replace("frog_kill_", "");

      const newFilePath = path.join(gatewaysBasePath, "titan", fileName);

      const data = await readJSONFile<GatewaysToEternityGatewayV2>(filePath);
      switch (data.__typename) {
        case "InvalidGateway":
          return;
        case "NormalGateway": {
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

          const waveEntity = cleanEntityNBT(data.waves[0].entities[0]);
          waveEntity.count = 3;

          const newData: EndlessGateway = {
            __typename: "EndlessGateway",
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
                setup_time: 100,
              },
              {
                application_mode: {
                  type: "gateways:after_every_n_waves",
                  waves: 3,
                  max: 12,
                },
                max_wave_time: 400,
              },
              {
                application_mode: {
                  type: "gateways:after_every_n_waves",
                  waves: 3,
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
                    value: 0.1,
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
          };

          return await writeJSONFile(newFilePath, newData, "json");
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
