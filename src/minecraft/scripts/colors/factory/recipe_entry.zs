import crafttweaker.api.item.IItemStack;

// public function recipeEntryCallbackWrapper(
//   cb as function(baseName as string, color as Color, items as IItemStack?[ColoredItem]) as void,
//   baseName as string,
//   color as Color,
//   items as IItemStack?[ColoredItem]
// ) as void {
//   cb(baseName, color, items);
// }

public class RecipeEntry {
  val baseName as string : get;
  private val cb as function(baseName as string, color as Color, items as IItemStack?[ColoredItem]) as void;

  public this(baseName: string, cb as function(baseName as string, color as Color, items as IItemStack?[ColoredItem]) as void) {
    this.baseName = baseName;
    this.cb = cb;
  }

  public callCallback(color as Color, items as IItemStack?[ColoredItem]): void {
    (this.cb as function(baseName as string, color as Color, items as IItemStack?[ColoredItem]) as void)(this.baseName, color, items);
    // recipeEntryCallbackWrapper(this.cb, this.baseName, color, items);
  }
}
