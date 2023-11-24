import glob from "glob-promise";
import { parse as parseNBT, stringify, TagObject } from "nbt-ts";
import path from "path";
import {
  EndlessGateway,
  EndlessGatewayModifier,
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
              spacing: 8,
              spawn_range: 5,
            },
            boss_event: {
              mode: "name_plate",
            },
            spawn_algorithm: "gateways:inward_spiral",
          };

          const bossWaves = [
            {
              wave: 10,
              appendedEntityNBT:
                '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 1.0f}, "pehkui:width": {scale:1.0f}, "pehkui:height": {scale: 1.0f}}}',
            },
            {
              wave: 20,
              appendedEntityNBT:
                '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 0.95f}, "pehkui:width": {scale: 1.5f}, "pehkui:height": {scale: 1.5f}}}',
            },
            {
              wave: 30,
              appendedEntityNBT:
                '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 0.8f}, "pehkui:width": {scale: 2.0f}, "pehkui:height": {scale: 2.0f}}}',
            },
            {
              wave: 40,
              appendedEntityNBT:
                '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 0.75f}, "pehkui:width": {scale: 2.5f}, "pehkui:height": {scale: 2.5f}}}',
            },
            {
              wave: 50,
              appendedEntityNBT:
                '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 0.72f}, "pehkui:width": {scale: 3.0f}, "pehkui:height": {scale: 3.0f}}}',
            },
          ];

          const bossWaveModifiers = bossWaves.map<EndlessGatewayModifier>(
            (wave) => {
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

              return {
                application_mode: {
                  type: "gateways:only_on_wave",
                  wave: wave.wave,
                },
                entities: [
                  {
                    ...waveEntity,
                    count: 1,
                    nbt: newNBT
                      ? stringify(newNBT, {
                          pretty: false,
                          breakLength: Infinity,
                        })
                      : undefined,
                  },
                ],
              };
            },
          );

          newData.modifiers.push(...bossWaveModifiers);

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
