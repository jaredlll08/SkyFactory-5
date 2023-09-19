import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.block.Block;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.type.player.Player;

public class Tree {
  private val color as Color;
  private val baseResourceName as string;

  public this(colorName: ColorName) {
    this.color = Globals.colors[colorName];
    this.baseResourceName = this.color.getResourceName();
  }

  public getLeaves(): Block {
    return BracketHandlers.getBlock("colouredstuff:leaves_" + this.baseResourceName);
  }

  public getSapling(): IItemStack {
    return BracketHandlers.getItem("colouredstuff:sapling_" + this.baseResourceName);
  }

  public getPlankItem(): IItemStack {
    return BracketHandlers.getItem("colouredstuff:planks_" + this.baseResourceName);
  }

  public getCraftingTableItem(): IItemStack {
    return BracketHandlers.getItem("colouredstuff:crafting_table_" + this.baseResourceName);
  }

  public registerLootModifier(): void {
    var sapling: IItemStack = this.getSapling();

    this.getLeaves().addLootModifier("colored_leaves_" + this.baseResourceName, (drops, ctx) => {
      if !isRealPlayerLooting(ctx) {
        return drops;
      }

      if rollsChance(ctx.random, 15) {
        drops.add(sapling);
      }

      return drops;
    });
  }

  public registerRecipes(): void {
    val plankItem: IItemStack = this.getPlankItem();

    craftingTable.addShaped(
      this.baseResourceName + "_chest_shaped",
      <item:sophisticatedstorage:chest>.withTag({mainColor: this.color.asDecimal(), accentColor: 6710886}),
      [
        [plankItem, plankItem, plankItem],
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, plankItem, plankItem],
      ]
    );
  }
}

val trees as Tree[] = [
  new Tree(ColorName.None),

  new Tree(ColorName.Black),
  new Tree(ColorName.Blue),
  new Tree(ColorName.Brown),
  new Tree(ColorName.Cyan),
  new Tree(ColorName.Gray),
  new Tree(ColorName.Green),
  new Tree(ColorName.LightBlue),
  new Tree(ColorName.LightGray),
  new Tree(ColorName.Lime),
  new Tree(ColorName.Magenta),
  new Tree(ColorName.Orange),
  new Tree(ColorName.Pink),
  new Tree(ColorName.Purple),
  new Tree(ColorName.Red),
  new Tree(ColorName.White),
  new Tree(ColorName.Yellow)
];

for tree in trees {
  tree.registerLootModifier();
  tree.registerRecipes();
}


