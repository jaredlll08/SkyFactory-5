import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.block.Block;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.type.player.Player;

public class Tree {
  public val color as string : get;

  public this(color as string) {
    this.color = color;
  }

  public getLeaves() as Block {
    return BracketHandlers.getBlock("colouredstuff:leaves_" + this.color);
  }

  public getSapling() as IItemStack {
    return BracketHandlers.getItem("colouredstuff:sapling_" + this.color);
  }

  public registerLootModifier() as void {
    var sapling as IItemStack = this.getSapling();

    this.getLeaves().addLootModifier("colored_leaves_" + this.color, (drops, ctx) => {
      if ctx.thisEntity != null && ctx.blockState != null && (ctx.thisEntity as Entity) is Player {
        var player as Player = (ctx.thisEntity as Entity) as Player;

        if !player.isFakePlayer {
            if rollsChance(ctx.random, 15) {
              drops.add(sapling);
            }
        }
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


// Increases drops from 1st tree on worldgen
<block:sf5_things:colorless_leaves>.addLootModifier("bonus_drops_first_tree", (drops, ctx) => {
  if ctx.thisEntity != null && (ctx.thisEntity as Entity) is Player {
    var player as Player = (ctx.thisEntity as Entity) as Player;

    if !player.isFakePlayer {
      if rollsChance(ctx.random, 15) {
        drops.add(<item:colouredstuff:sapling_none>);
      }
    }
  }

  return drops;
});
