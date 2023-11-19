import glob from "glob-promise";
import lodash from "lodash";
import { parse as parseNBT } from "nbt-ts";
import path from "path";
import {
  GatewayFailure as GatewayFailureV1,
  GatewayReward as GatewayRewardV1,
  GatewaysToEternityGatewayV1,
  GatewayWaveEntity as GatewayWaveEntityV1,
  GatewayWaveModifier as GatewayWaveModifierV1,
  NormalGateway as NormalGatewayV1,
} from "schemas/minecraft/gateways/gateways-v1";
import {
  CompoundTag,
  GatewayFailure as GatewayFailureV2,
  GatewayReward as GatewayRewardV2,
  GatewayWaveEntity as GatewayWaveEntityV2,
  GatewayWaveModifier as GatewayWaveModifierV2,
  NormalGateway as NormalGatewayV2,
} from "schemas/minecraft/gateways/gateways-v2";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";

const gatewaysBasePath = path.resolve(
  "./src/minecraft/global_packs/required_data/skyfactory_5/data/gateways/gateways",
);

async function main() {
  const gatewayDatapackFiles = await glob(`${gatewaysBasePath}/*.json`, {
    ignore: [],
  });

  await Promise.all(
    gatewayDatapackFiles.map(async (filePath) => {
      const data = await readJSONFile<GatewaysToEternityGatewayV1>(filePath);

      if (data.__typename === undefined) {
        // eslint-disable-next-line @typescript-eslint/ban-ts-comment
        // @ts-ignore
        if (data.conditions) {
          // eslint-disable-next-line @typescript-eslint/ban-ts-comment
          // @ts-ignore
          data.__typename = "InvalidGateway";
        } else {
          // eslint-disable-next-line @typescript-eslint/ban-ts-comment
          // @ts-ignore
          data.__typename = "NormalGateway";
        }
      }

      switch (data.__typename) {
        case "InvalidGateway":
          return await writeJSONFile(filePath, data, "json");
        case "NormalGateway":
          return await writeJSONFile(
            filePath,
            convertGatewayData(data),
            "json",
          );
        default:
          // eslint-disable-next-line @typescript-eslint/ban-ts-comment
          // @ts-ignore
          throw new Error(`Unsupported gateway type ${data.__typename}`);
      }
    }),
  );
}

function convertGatewayData(original: NormalGatewayV1): NormalGatewayV2 {
  const gatewayRewards =
    original.rewards?.map((reward) => convertGatewayReward(reward)) || [];

  if (original.completion_xp !== undefined) {
    gatewayRewards.push({
      type: "gateways:experience",
      experience: original.completion_xp,
    });
  }

  const newData: NormalGatewayV2 = {
    ...original,
    __typename: "NormalGateway",
    size: original.size,
    color: original.color,
    waves: original.waves.map<NormalGatewayV2["waves"][0]>((wave) => ({
      entities: simplifyArraySupportingCounts(
        wave.entities.map((entity) => convertGatewayEntity(entity)),
      ),
      modifiers: wave.modifiers?.map((modifier) =>
        convertGatewayWaveModifier(modifier),
      ),
      rewards: wave.rewards?.map((reward) => convertGatewayReward(reward)),
      max_wave_time: wave.max_wave_time,
      setup_time: wave.setup_time,
    })),
    rewards: gatewayRewards,
    failures: original.failures?.map((failure) =>
      convertGatewayFailure(failure),
    ),
    spawn_algorithm: original.spawn_algorithm,
    rules: {
      spawn_range: original.spawn_range,
      leash_range: original.leash_range,
      player_damage_only: original.player_damage_only,
      allow_discarding: original.allow_discarding,
    },

    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    completion_xp: undefined,
    spawn_range: undefined,
    leash_range: undefined,
    player_damage_only: undefined,
    allow_discarding: undefined,
  };

  return newData;
}

function convertGatewayWaveModifier(
  original: GatewayWaveModifierV1,
): GatewayWaveModifierV2 {
  return {
    type: "gateways:attribute",
    attribute: original.attribute,
    operation: mapGatewayAttributeModifierOperation(original.operation),
    value: original.value,
  };
}

function mapGatewayAttributeModifierOperation(
  original: GatewayWaveModifierV1["operation"],
): Extract<GatewayWaveModifierV2, { type: "gateways:attribute" }>["operation"] {
  switch (original) {
    case "ADDITION":
      return "addition";
    case "MULTIPLY_BASE":
      return "multiply_base";
    case "MULTIPLY_TOTAL":
      return "multiply_total";
    default:
      throw new Error(`Unsupported modifier operation ${original}`);
  }
}

function convertGatewayReward(original: GatewayRewardV1): GatewayRewardV2 {
  switch (original.type) {
    case "chanced":
      return {
        ...original,
        type: "gateways:chanced",
        reward: convertGatewayReward(original.reward),
      };
    case "command":
      return {
        ...original,
        type: "gateways:command",
      };
    case "entity_loot":
      return {
        ...original,
        type: "gateways:entity_loot",
        nbt: convertNBT(original.nbt),
      };
    case "loot_table":
      return {
        ...original,
        type: "gateways:loot_table",
      };
    case "stack":
      return {
        ...original,
        type: "gateways:stack",
        stack: {
          ...original.stack,
          nbt: convertNBT(original.stack.nbt),
        },
      };
    case "stack_list":
      return {
        ...original,
        type: "gateways:stack_list",
        stacks: simplifyArraySupportingCounts(
          original.stacks.map((stack) => ({
            ...stack,
            nbt: convertNBT(stack.nbt),
          })),
        ),
      };
    default:
      // eslint-disable-next-line @typescript-eslint/ban-ts-comment
      // @ts-ignore
      throw new Error(`Unsupported reward type ${original.type}`);
  }
}

function convertGatewayEntity(
  original: GatewayWaveEntityV1,
): GatewayWaveEntityV2 {
  return {
    ...original,
    type: "gateways:standard",
    modifiers: original.modifiers?.map((modifier) =>
      convertGatewayWaveModifier(modifier),
    ),
  };
}

function convertGatewayFailure(original: GatewayFailureV1): GatewayFailureV2 {
  switch (original.type) {
    case "chanced":
      return {
        ...original,
        type: "gateways:chanced",
      };
    case "command":
      return {
        ...original,
        type: "gateways:command",
      };
    case "explosion":
      return {
        ...original,
        type: "gateways:explosion",
      };
    case "mob_effect":
      return {
        ...original,
        type: "gateways:mob_effect",
      };
    case "summon":
      return {
        ...original,
        type: "gateways:summon",
        entity: convertGatewayEntity(original.entity),
      };
    default:
      // eslint-disable-next-line @typescript-eslint/ban-ts-comment
      // @ts-ignore
      throw new Error(`Unsupported reward type ${original.type}`);
  }
}

interface GenericRecord {
  count?: number;
  [key: string]: unknown;
}

function simplifyArraySupportingCounts<T extends GenericRecord>(
  records: T[],
): T[] {
  const map = new Map<T, number>();

  records.forEach((record) => {
    let isFound = false;

    for (const [key, value] of map.entries()) {
      if (lodash.isEqual(record, key)) {
        isFound = true;
        map.set(key, value + (record.count || 1));
        break;
      }
    }

    if (!isFound) {
      map.set(record, record.count || 1);
    }
  });

  const result: T[] = [];
  map.forEach((count, record) =>
    result.push({
      ...record,
      count,
    }),
  );

  return result;
}

function convertNBT(
  tag: string | CompoundTag | undefined,
): CompoundTag | undefined {
  if (typeof tag !== "string") {
    return tag;
  }

  try {
    const newTag = parseNBT(tag);

    // Hacky way to convert to the type we want
    return JSON.parse(JSON.stringify(newTag));
  } catch (err) {
    console.log(`failed to parse string to JSON:\n${tag}`);

    throw err;
  }
}

main();
