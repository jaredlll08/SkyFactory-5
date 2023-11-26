import glob from "glob-promise";
import { isArray } from "lodash";
import { parse as parseNBT, stringify, TagObject } from "nbt-ts";
import path from "path";
import {
  GatewaysToEternityGatewayV2,
  NormalGateway,
} from "schemas/minecraft/gateways/gateways-v2";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";
import {
  cleanEntityNBT,
  ColorName,
  getDyeFromColor,
  isFriendlyMob,
  mapHexToColorName,
} from "./utils";

const gatewaysBasePath = path.resolve(
  "./src/minecraft/global_packs/required_data/skyfactory_5/data/gateways/gateways",
);

async function main() {
  const gatewayDatapackFiles = await glob(
    `${gatewaysBasePath}/normal/**/*.json`,
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
          waveEntity.count = 4;

          if (waveEntity.nbt) {
            const waveEntityNBT =
              typeof waveEntity.nbt === "string"
                ? (parseNBT(waveEntity.nbt) as TagObject)
                : (parseNBT(JSON.stringify(waveEntity.nbt)) as TagObject);

            if (isArray(waveEntityNBT["Tags"])) {
              const attackDamageAttribute = waveEntityNBT["Tags"].find(
                (val) => (val as TagObject)["Name"] === "gateway_entity",
              );
              if (attackDamageAttribute === undefined) {
                waveEntityNBT["Tags"].push("gateway_entity");
              }
            } else {
              waveEntityNBT["Tags"] = ["gateway_entity"];
            }

            waveEntity.nbt = stringify(waveEntityNBT, {
              pretty: false,
              breakLength: Infinity,
            });
          }

          const newData: NormalGateway = {
            __typename: "NormalGateway",
            size: "large",
            color: data.color,
            waves: [
              {
                entities: [{ ...waveEntity }],
                rewards: [
                  {
                    type: "gateways:experience",
                    experience: 50,
                  },
                  {
                    type: "gateways:stack",
                    stack: {
                      item: dye,
                      count: 16,
                    },
                  },
                ],
                max_wave_time: 1200,
                setup_time: 200,
              },
              {
                entities: [{ ...waveEntity }],
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
                    value: 2,
                  },
                  {
                    type: "gateways:attribute",
                    attribute: "generic.attack_damage",
                    operation: "multiply_total",
                    value: 0.15,
                  },
                  {
                    type: "gateways:attribute",
                    attribute: "generic.knockback_resistance",
                    operation: "addition",
                    value: 0.05,
                  },
                  {
                    type: "gateways:attribute",
                    attribute: "generic.movement_speed",
                    operation: "multiply_total",
                    value: 0.05,
                  },
                ],
                rewards: [
                  {
                    type: "gateways:experience",
                    experience: 75,
                  },
                  {
                    type: "gateways:stack",
                    stack: {
                      item: dye,
                      count: 16,
                    },
                  },
                ],
                max_wave_time: 1800,
                setup_time: 280,
              },
              {
                entities: [{ ...waveEntity }],
                modifiers: [
                  {
                    type: "gateways:attribute",
                    attribute: "generic.max_health",
                    operation: "multiply_total",
                    value: 0.2,
                  },
                  {
                    type: "gateways:attribute",
                    attribute: "generic.armor",
                    operation: "addition",
                    value: 3,
                  },
                  {
                    type: "gateways:attribute",
                    attribute: "generic.attack_damage",
                    operation: "multiply_total",
                    value: 0.2,
                  },
                  {
                    type: "gateways:attribute",
                    attribute: "generic.knockback_resistance",
                    operation: "addition",
                    value: 0.15,
                  },
                  {
                    type: "gateways:attribute",
                    attribute: "generic.movement_speed",
                    operation: "multiply_total",
                    value: 0.1,
                  },
                ],
                rewards: [
                  {
                    type: "gateways:experience",
                    experience: 100,
                  },
                  {
                    type: "gateways:stack",
                    stack: {
                      item: dye,
                      count: 32,
                    },
                  },
                ],
                max_wave_time: 2400,
                setup_time: 340,
              },
            ],
            rewards: [
              {
                type: "gateways:experience",
                experience: 250,
              },
              {
                type: "gateways:stack",
                stack: {
                  item: "obtrophies:trophy",
                  nbt: {
                    BlockEntityTag: {
                      SpecialCycleVariant: 0,
                      VariantID: 0,
                      entity: waveEntity.entity,
                    },
                  },
                },
              },
            ],
            rules: {
              leash_range: 32,
              spacing: 8,
              spawn_range: 5,
            },
            boss_event: {
              mode: "name_plate",
            },
            spawn_algorithm: "gateways:inward_spiral",
          };

          if (isFriendlyMob(waveEntity.entity)) {
            newData.rewards!.push({
              type: "gateways:summon",
              entity: waveEntity,
            });
          }

          const waveModifiers = [
            {
              waveIndex: 0,
              appendedEntityNBT:
                '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 1.0f}, "pehkui:width": {scale:1.0f}, "pehkui:height": {scale: 1.0f}}}',
            },
            {
              waveIndex: 1,
              appendedEntityNBT:
                '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 0.95f}, "pehkui:width": {scale: 1.5f}, "pehkui:height": {scale: 1.5f}}}',
            },
            {
              waveIndex: 2,
              appendedEntityNBT:
                '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 0.8f}, "pehkui:width": {scale: 2.0f}, "pehkui:height": {scale: 2.0f}}}',
            },
          ];

          waveModifiers.forEach((wave) => {
            const newNBT: TagObject = waveEntity.nbt
              ? typeof waveEntity.nbt === "string"
                ? (parseNBT(waveEntity.nbt) as TagObject)
                : (parseNBT(JSON.stringify(waveEntity.nbt)) as TagObject)
              : {};
            const appendedEntityNBT: TagObject = parseNBT(
              wave.appendedEntityNBT,
            ) as TagObject;

            Object.entries(appendedEntityNBT).forEach(
              ([key, val]) => (newNBT[key] = val),
            );

            newData.waves[wave.waveIndex].entities[0] = {
              ...newData.waves[wave.waveIndex].entities[0],
              nbt: newNBT
                ? stringify(newNBT, {
                    pretty: false,
                    breakLength: Infinity,
                  })
                : undefined,
            };
          });

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
