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

export function mapColorNameToHex(colorName: ColorName): string | null {
  switch (colorName) {
    case ColorName.None:
      return "#919191";
    case ColorName.Red:
      return "#ff0000";
    case ColorName.Green:
      return "#165f16";
    case ColorName.Lime:
      return "#02fd02";
    case ColorName.Blue:
      return "#0000ff";
    case ColorName.LightBlue:
      return "#8fd3ff";
    case ColorName.Gray:
      return "#333333";
    case ColorName.LightGray:
      return "#d3d3d3";
    case ColorName.Yellow:
      return "#ffff00";
    case ColorName.Purple:
      return "#800080";
    case ColorName.Magenta:
      return "#ff00ff";
    case ColorName.Pink:
      return "#ffc0cb";
    case ColorName.White:
      return "#ffffff";
    case ColorName.Black:
      return "#000000";
    case ColorName.Brown:
      return "#59381f";
    case ColorName.Cyan:
      return "#30e1b9";
    case ColorName.Orange:
      return "#fb6b1d";
    default:
      return null;
  }
}
