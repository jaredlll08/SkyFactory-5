import crafttweaker.api.block.Block;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

public class ColoredContentFactory {
  private static val supportedColors as Color[] = [
    Globals.colors[ColorName.None],

    Globals.colors[ColorName.Black],
    Globals.colors[ColorName.Blue],
    Globals.colors[ColorName.Brown],
    Globals.colors[ColorName.Cyan],
    Globals.colors[ColorName.Gray],
    Globals.colors[ColorName.Green],
    Globals.colors[ColorName.LightBlue],
    Globals.colors[ColorName.LightGray],
    Globals.colors[ColorName.Lime],
    Globals.colors[ColorName.Magenta],
    Globals.colors[ColorName.Orange],
    Globals.colors[ColorName.Pink],
    Globals.colors[ColorName.Purple],
    Globals.colors[ColorName.Red],
    Globals.colors[ColorName.White],
    Globals.colors[ColorName.Yellow]
  ] as Color[];

  // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
  // private val blockGetters as BlockEntry[ColoredBlock] = {} as BlockEntry[ColoredBlock];

  private val itemGetters as ItemEntry[ColoredItem] = {} as ItemEntry[ColoredItem];

  private val lootModifierGenerators as List<LootModifierEntry> = new List<LootModifierEntry>();
  private val recipeGenerators as List<RecipeEntry> = new List<RecipeEntry>();

  // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
  // public registerBlock(blockName as ColoredBlock, blockGetter as function(color as Color) as Block?): ColoredContentFactory {
  //   blockGetters[blockName] = new BlockEntry(blockName, blockGetter);

  //   return this;
  // }

  public registerItem(itemName as ColoredItem, itemGetter as function(color as Color) as IItemStack?): ColoredContentFactory {
    itemGetters[itemName] = new ItemEntry(itemName, itemGetter);

    return this;
  }

  public addLootModifierGenerator(
    baseName: string,
    generator: function(baseName as string, color as Color, blocks as Block?[ColoredBlock], items as IItemStack?[ColoredItem]) as void
  ): ColoredContentFactory {
    lootModifierGenerators.add(new LootModifierEntry(baseName, generator));

    return this;
  }

  public addRecipeGenerator(baseName: string, recipeGenerator: function(baseName as string, color as Color, items as IItemStack?[ColoredItem]) as void): ColoredContentFactory {
    recipeGenerators.add(new RecipeEntry(baseName, recipeGenerator));

    return this;
  }

  public build() as void {
    for color in ColoredContentFactory.supportedColors {
      val blocks as Block?[ColoredBlock] = {} as Block?[ColoredBlock];
      // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
      // for block, entry in this.blockGetters {
      //   blocks[block] = entry.callCallback(color);
      // }

      val items as IItemStack?[ColoredItem] = {} as IItemStack?[ColoredItem];
      for item, entry in this.itemGetters {
        items[item] = entry.callCallback(color);
      }

      for lootModifierGenerator in lootModifierGenerators {
        lootModifierGenerator.callCallback(color, blocks, items);
      }

      for recipeGenerator in recipeGenerators {
        recipeGenerator.callCallback(color, items);
      }
    }
  }
}
