import lodash from "lodash";
import { parse as parseNBT, stringify, TagObject } from "nbt-ts";
import { GatewayWaveEntity } from "schemas/minecraft/gateways/gateways-v2";
import { ColorName } from "scripts/utils/minecraft-colors";

export type BaseEntity = Omit<
  GatewayWaveEntity,
  "type" | "modifiers" | "count"
>;

export function getDyeFromColor(color: ColorName): string | null {
  if (color === ColorName.None) {
    return null;
  }

  return `minecraft:${lodash.snakeCase(color)}_dye`;
}

export function cleanEntityNBT(entity: GatewayWaveEntity): GatewayWaveEntity {
  if (!entity.nbt) {
    return entity;
  }

  if (typeof entity.nbt === "object") {
    delete entity.nbt.ForgeCaps;
    delete entity.nbt.ArmorDropChances;

    return entity;
  }

  const tag = parseNBT(entity.nbt) as TagObject;
  delete tag.ForgeCaps;
  delete tag.ArmorDropChances;

  return {
    ...entity,
    nbt: stringify(tag).replace(/(\\n|\s)/g, ""),
  };
}

export const friendlyMobs = new Set([
  "earthmobsmod:albino_cow",
  "earthmobsmod:baby_ghast",
  "earthmobsmod:cluck_shroom",
  "earthmobsmod:cream_cow",
  "earthmobsmod:duck",
  "earthmobsmod:fancy_chicken",
  "earthmobsmod:furnace_golem",
  "earthmobsmod:hyper_rabbit",
  "earthmobsmod:jolly_llama",
  "earthmobsmod:jumbo_rabbit",
  "earthmobsmod:magma_cow",
  "earthmobsmod:melon_golem",
  "earthmobsmod:moobloom",
  "earthmobsmod:moolip",
  "earthmobsmod:teacup_pig",
  "earthmobsmod:umbra_cow",
  "earthmobsmod:wooly_cow",
  "earthmobsmod:zombified_pig",
  "energeticsheep:energetic_sheep",
  "forcecraft:cold_chicken",
  "forcecraft:cold_cow",
  "forcecraft:cold_pig",
  "minecraft:allay",
  "minecraft:axolotl",
  "minecraft:bat",
  "minecraft:bee",
  "minecraft:camel",
  "minecraft:cat",
  "minecraft:chicken",
  "minecraft:cod",
  "minecraft:cow",
  "minecraft:dolphin",
  "minecraft:donkey",
  "minecraft:fox",
  "minecraft:frog",
  "minecraft:glow_squid",
  "minecraft:goat",
  "minecraft:horse",
  "minecraft:iron_golem",
  "minecraft:llama",
  "minecraft:mooshroom",
  "minecraft:ocelot",
  "minecraft:panda",
  "minecraft:parrot",
  "minecraft:pig",
  "minecraft:polar_bear",
  "minecraft:pufferfish",
  "minecraft:rabbit",
  "minecraft:salmon",
  "minecraft:sheep",
  "minecraft:skeleton_horse",
  "minecraft:sniffer",
  "minecraft:snow_golem",
  "minecraft:squid",
  "minecraft:strider",
  "minecraft:tadpole",
  "minecraft:trader_llama",
  "minecraft:tropical_fish",
  "minecraft:turtle",
  "minecraft:villager",
  "minecraft:wandering_trader",
  "minecraft:wolf",
  "minecraft:zombie_horse",
]);

export function isFriendlyMob(entityRegistryName: string): boolean {
  return friendlyMobs.has(entityRegistryName);
}
