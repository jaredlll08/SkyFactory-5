import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.block.Block;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.type.player.Player;

public class Tree {
  val color as string;

  public this(color: string) {
    this.color = color;
  }

  public getLeaves(): Block {
    return BracketHandlers.getBlock("colouredstuff:leaves_" + this.color);
  }

  public getSapling(): IItemStack {
    return BracketHandlers.getItem("colouredstuff:sapling_" + this.color);
  }

  public getPlankItem(): IItemStack {
    return BracketHandlers.getItem("colouredstuff:planks_" + this.color);
  }

  public getCraftingTableItem(): IItemStack {
    return BracketHandlers.getItem("colouredstuff:crafting_table_" + this.color);
  }

  public registerLootModifier(): void {
    var sapling: IItemStack = this.getSapling();

    this.getLeaves().addLootModifier("colored_leaves_" + this.color, (drops, ctx) => {
      if !isRealPlayerLooting(ctx) {
        return drops;
      }

      if rollsChance(ctx.random, 15) {
        drops.add(sapling);
      }

      return drops;
    });
  }
}

val trees as Tree[] = [
  new Tree("none"),

  new Tree("black"),
  new Tree("blue"),
  new Tree("brown"),
  new Tree("cyan"),
  new Tree("gray"),
  new Tree("green"),
  new Tree("light_blue"),
  new Tree("light_gray"),
  new Tree("lime"),
  new Tree("magenta"),
  new Tree("orange"),
  new Tree("pink"),
  new Tree("purple"),
  new Tree("red"),
  new Tree("white"),
  new Tree("yellow")
];

for tree in trees {
  tree.registerLootModifier();
}


