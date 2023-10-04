#priority 100

public enum ColorName {
  None = "NONE",
  Red = "RED",
  Green = "GREEN",
  Lime = "LIME",
  Blue = "BLUE",
  LightBlue = "LIGHT_BLUE",
  Gray = "GRAY",
  LightGray = "LIGHT_GRAY",
  Yellow = "YELLOW",
  Purple = "PURPLE",
  Magenta = "MAGENTA",
  Pink = "PINK",
  White = "WHITE",
  Black = "BLACK",
  Brown = "BROWN",
  LightBrown = "LIGHT_BROWN",
  Cyan = "CYAN",
  Orange = "ORANGE";
}

public class Color {
  private val colorName as ColorName;
  private val resourceName as string;
  private val decimalValue as int;

  public this(colorName: ColorName, resourceName: string, decimalValue: int) {
    this.colorName = colorName;
    this.resourceName = resourceName;
    this.decimalValue = decimalValue;
  }

  public getName(): ColorName {
    return this.colorName;
  }

  public getResourceName(): string {
    return this.resourceName;
  }

  public asHexString(): string {
    return this.decimalValue.toHexString();
  }

  public asDecimal(): int {
    return this.decimalValue;
  }
}
