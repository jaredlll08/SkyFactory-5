import crafttweaker.api.block.Block;
import crafttweaker.api.item.IItemStack;

// public function lootModifierEntryCallbackWrapper(
//   cb as function(baseName as string, color as Color, blocks as Block?[ColoredBlock], items as IItemStack?[ColoredItem]) as void,
//   baseName as string,
//   color as Color,
//   blocks as Block?[ColoredBlock],
//   items as IItemStack?[ColoredItem]
// ) as void {
//   cb(baseName, color, blocks, items);
// }

public class LootModifierEntry {
  val baseName as string : get;
  private val cb as function(baseName as string, color as Color, blocks as Block?[ColoredBlock], items as IItemStack?[ColoredItem]) as void;

  public this(
    baseName: string,
    cb as function(baseName as string, color as Color, blocks as Block?[ColoredBlock], items as IItemStack?[ColoredItem]) as void
  ) {
    this.baseName = baseName;
    this.cb = cb;
  }

  public callCallback(color as Color, blocks as Block?[ColoredBlock], items as IItemStack?[ColoredItem]): void {
    (this.cb as function(baseName as string, color as Color, blocks as Block?[ColoredBlock], items as IItemStack?[ColoredItem]) as void)(this.baseName, color, blocks, items);
    // lootModifierEntryCallbackWrapper(this.cb, this.baseName, color, blocks, items);
  }
}
