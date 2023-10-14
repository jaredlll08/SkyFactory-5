#priority 100

public class Globals {
  public static val colors as Color[ColorName] = {
    // Commented colors are being kept for reference
    ColorName.None: new Color(ColorName.None, "none", 9539985), // #919191
    ColorName.Red: new Color(ColorName.Red, "red", 16711680), // #ff0000
    ColorName.Green: new Color(ColorName.Green, "green", 1466134), // #165F16
    ColorName.Lime: new Color(ColorName.Lime, "lime", 195842), // #02FD02
    // ColorName.Blue: new Color(ColorName.Blue, "blue", 33023), // #0080ff
    ColorName.Blue: new Color(ColorName.Blue, "blue", 17544), // #004488
    ColorName.LightBlue: new Color(ColorName.LightBlue, "light_blue", 9425919), // #8fd3ff
    ColorName.Gray: new Color(ColorName.Gray, "gray", 3355443), // #333333
    ColorName.LightGray: new Color(ColorName.LightGray, "light_gray", 13882323), // #D3D3D3
    ColorName.Yellow: new Color(ColorName.Yellow, "yellow", 16776960), // #ffff00
    // ColorName.Purple: new Color(ColorName.Purple, "purple", 8388736), // #800080
    ColorName.Purple: new Color(ColorName.Purple, "purple", 8192221), // #7d00dd
    ColorName.Magenta: new Color(ColorName.Magenta, "magenta", 16711935), // #FF00FF
    ColorName.Pink: new Color(ColorName.Pink, "pink", 16761035), // #FFC0CB
    ColorName.White: new Color(ColorName.White, "white", 16777215), // #FFFFFF
    ColorName.Black: new Color(ColorName.Black, "black", 0), // #000000
    ColorName.Brown: new Color(ColorName.Brown, "brown", 5847071), // #59381f
    ColorName.LightBrown: new Color(ColorName.LightBrown, "brown", 9849600), // #964B00
    ColorName.Cyan: new Color(ColorName.Cyan, "cyan", 3203513), // #30e1b9
    ColorName.Orange: new Color(ColorName.Orange, "orange", 16476957) // #fb6b1d
  };
}
