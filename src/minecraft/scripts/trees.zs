import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.block.Block;
import crafttweaker.api.item.IItemStack;

public class Tree {
  private val color as Color;
  private val coloredContent as ColoredContent;

  public this(coloredContent: ColoredContent) {
    this.color = coloredContent.getColor();
    this.coloredContent = coloredContent;
  }

  public getLeaves(): Block {
    return BracketHandlers.getBlock("colouredstuff:leaves_" + this.color.getResourceName());
  }

  public getSapling(): IItemStack {
    return BracketHandlers.getItem("colouredstuff:sapling_" + this.color.getResourceName());
  }

  public registerLootModifier(): void {
    val tree = this;
    val treeColoredContent = this.coloredContent;

    this.getLeaves().addLootModifier("colored_leaves_" + this.color.getResourceName(), (drops, ctx) => {
      val saplingDropChance = isRealPlayerLooting(ctx) ? 15 : 10;
      val appleDropChance = isRealPlayerLooting(ctx) ? 5 : 1;
      val dyeDropChance = isRealPlayerLooting(ctx) ? 10 : 5;
      val stickDropChance = isRealPlayerLooting(ctx) ? 5 : 1;
      val gatewayDropChance = isRealPlayerLooting(ctx) ? 0.69 : 0.25;

      if rollsChance(ctx.random, saplingDropChance) {
        drops.add(tree.getSapling());
      }

      val apple = treeColoredContent.getApple();
      if apple != null && rollsChance(ctx.random, appleDropChance) {
        drops.add(apple as IItemStack);
      }

      val dye = treeColoredContent.getDye();
      if dye != null && rollsChance(ctx.random, dyeDropChance) {
        drops.add(dye as IItemStack);
      }

      if rollsChance(ctx.random, stickDropChance) {
        drops.add(treeColoredContent.getStick());
      }

      for gateway in treeColoredContent.getGateways() {
        if rollsChance(ctx.random, gatewayDropChance) {
          drops.add(<item:gateways:gate_pearl>.withTag({gateway: gateway}));
        }
      }

      return drops;
    });
  }
}
