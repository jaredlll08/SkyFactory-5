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
  RGB = "RGB",
}

export function mapHexToColorName(hexCode: string): ColorName | null {
  switch (hexCode.toLowerCase()) {
    case "#919191":
      return ColorName.None;
    case "#ff0000":
    case "#b02e26":
      return ColorName.Red;
    case "#165f16":
    case "#5d7c15":
      return ColorName.Green;
    case "#02fd02":
    case "#80c71f":
      return ColorName.Lime;
    case "#004488":
    case "#0080ff":
    case "#0000ff":
    case "#3c44a9":
      return ColorName.Blue;
    case "#8fd3ff":
    case "#3ab3da":
      return ColorName.LightBlue;
    case "#333333":
    case "#474f52":
      return ColorName.Gray;
    case "#d3d3d3":
    case "#9c9d97":
      return ColorName.LightGray;
    case "#ffff00":
    case "#ffd83d":
      return ColorName.Yellow;
    case "#7d00dd":
    case "#800080":
    case "#8932b7":
      return ColorName.Purple;
    case "#ff00ff":
    case "#c64fbd":
      return ColorName.Magenta;
    case "#ffc0cb":
    case "#f38caa":
      return ColorName.Pink;
    case "#ffffff":
    case "#f9ffff":
      return ColorName.White;
    case "#000000":
    case "#1d1c21":
      return ColorName.Black;
    case "#59381f":
    case "#964b00":
    case "#825432":
      return ColorName.Brown;
    case "#30e1b9":
    case "#169c9d":
      return ColorName.Cyan;
    case "#fb6b1d":
    case "#f9801d":
      return ColorName.Orange;
    case "#ffaa00":
      return ColorName.RGB;
  }

  return null;
}

export function mapColorNameToHex(colorName: ColorName): string | null {
  switch (colorName) {
    case ColorName.None:
      return "#919191";
    case ColorName.Red:
      return "#b02e26";
    case ColorName.Green:
      return "#5d7c15";
    case ColorName.Lime:
      return "#80c71f";
    case ColorName.Blue:
      return "#3c44a9";
    case ColorName.LightBlue:
      return "#3ab3da";
    case ColorName.Gray:
      return "#474f52";
    case ColorName.LightGray:
      return "#9c9d97";
    case ColorName.Yellow:
      return "#ffd83d";
    case ColorName.Purple:
      return "#8932b7";
    case ColorName.Magenta:
      return "#c64fbd";
    case ColorName.Pink:
      return "#f38caa";
    case ColorName.White:
      return "#f9ffff";
    case ColorName.Black:
      return "#1d1c21";
    case ColorName.Brown:
      return "#825432";
    case ColorName.Cyan:
      return "#169c9d";
    case ColorName.Orange:
      return "#f9801d";
    case ColorName.RGB:
      return "#ffaa00";
    default:
      return null;
  }
}
