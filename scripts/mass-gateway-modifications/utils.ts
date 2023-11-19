import lodash from "lodash";
import { parse as parseNBT, stringify, TagObject } from "nbt-ts";
import { GatewayWaveEntity } from "schemas/minecraft/gateways/gateways-v2";

export enum ColorName {
  None = "None",
  Red = "Red",
  Green = "Green",
  Lime = "Lime",
  Blue = "Blue",
  LightBlue = "LightBlue",
  Gray = "Gray",
  LightGray = "LightGray",
  Yellow = "Yellow",
  Purple = "Purple",
  Magenta = "Magenta",
  Pink = "Pink",
  White = "White",
  Black = "Black",
  Brown = "Brown",
  Cyan = "Cyan",
  Orange = "Orange",
}

export function mapHexToColorName(hexCode: string): ColorName | null {
  switch (hexCode.toLowerCase()) {
    case "#919191":
      return ColorName.None;
    case "#ff0000":
      return ColorName.Red;
    case "#165f16":
      return ColorName.Green;
    case "#02fd02":
      return ColorName.Lime;
    case "#004488":
    case "#0080ff":
    case "#0000ff":
      return ColorName.Blue;
    case "#8fd3ff":
      return ColorName.LightBlue;
    case "#333333":
      return ColorName.Gray;
    case "#d3d3d3":
      return ColorName.LightGray;
    case "#ffff00":
      return ColorName.Yellow;
    case "#7d00dd":
    case "#800080":
      return ColorName.Purple;
    case "#ff00ff":
      return ColorName.Magenta;
    case "#ffc0cb":
      return ColorName.Pink;
    case "#ffffff":
      return ColorName.White;
    case "#000000":
      return ColorName.Black;
    case "#59381f":
    case "#964b00":
      return ColorName.Brown;
    case "#30e1b9":
      return ColorName.Cyan;
    case "#fb6b1d":
      return ColorName.Orange;
  }

  return null;
}

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
