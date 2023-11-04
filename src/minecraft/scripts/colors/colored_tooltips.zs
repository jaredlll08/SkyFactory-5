import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val itemsForTooltipColor as IItemStack[][ColorName] = {
  ColorName.None: [],
  ColorName.Red: [],
  ColorName.Green: [],
  ColorName.Lime: [],
  ColorName.Blue: [],
  ColorName.LightBlue: [],
  ColorName.Gray: [],
  ColorName.LightGray: [],
  ColorName.Yellow: [],
  ColorName.Purple: [],
  ColorName.Magenta: [],
  ColorName.Pink: [],
  ColorName.White: [],
  ColorName.Black: [],
  ColorName.LightBrown: [],
  ColorName.Cyan: [],
  ColorName.Orange: []
};

for colorName, items in itemsForTooltipColor {
  val color = Globals.colors[colorName];

  for item in items {
    item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(getTextColorForBackground(color.asDecimal()))));
  }
}
