import crafttweaker.api.block.Block;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.tag.type.KnownTag;

public class ColoredContentGeneratorCallbackArgs {
  public val color as Color;

  public val blocks as Block?[ColoredBlock] = {} as Block?[ColoredBlock];
  public val items as IItemStack?[ColoredItem] = {} as IItemStack?[ColoredItem];

  public val fluidTags as KnownTag<Fluid>?[ColoredFluidTag] = {} as KnownTag<Fluid>?[ColoredFluidTag];
  public val itemTags as KnownTag<ItemDefinition>?[ColoredItemTag] = {} as KnownTag<ItemDefinition>?[ColoredItemTag];

  public var water as IFluidStack? = null;

  public this(color as Color) {
    this.color = color;
  }
}
