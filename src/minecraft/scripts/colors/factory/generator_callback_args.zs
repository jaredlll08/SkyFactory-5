import crafttweaker.api.block.Block;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

public class ColoredContentGeneratorCallbackArgs {
  public val color as Color;

  public val blocks as Block?[ColoredBlock] = {} as Block?[ColoredBlock];
  public val items as IItemStack?[ColoredItem] = {} as IItemStack?[ColoredItem];

  public this(color as Color) {
    this.color = color;
  }
}
