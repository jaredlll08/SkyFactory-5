import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.block.Block;
import crafttweaker.api.item.IItemStack;

public class ColoredContent {
  private val color as Color;
  private val tree as Tree;

  public this(color: Color) {
    this.color = color;

    this.tree = new Tree(this);
  }

  public getColor(): Color {
    return this.color;
  }

  public getTree(): Tree {
    return this.tree;
  }

  public getApple(): IItemStack? {
    if this.color.getName() == ColorName.BLACK ||
      this.color.getName() == ColorName.LIGHT_BROWN ||
      this.color.getName() == ColorName.LIGHT_GRAY ||
      this.color.getName() == ColorName.LIME ||
      this.color.getName() == ColorName.PURPLE ||
      this.color.getName() == ColorName.YELLOW {
      return null;
    }

    if this.color.getName() == ColorName.Red {
      return <item:minecraft:apple>;
    }

    return BracketHandlers.getItem("sf5_things:" + this.color.getResourceName() + "_apple");
  }

  public getBag(): IItemStack? {
    if this.color.getName() == ColorName.None {
      return null;
    }

    return <item:treasurebags:treasure_bag>.withTag({
      "silentlib.LootContainer": {
        LootTable: "treasurebags:bags/" + this.color.getResourceName(),
        BagType: "treasurebags:" + this.color.getResourceName()
      }
    });
  }

  public getCraftingTableItem(): IItemStack {
    return BracketHandlers.getItem("colouredstuff:crafting_table_" + this.color.getResourceName());
  }

  public getDye(): IItemStack? {
    if this.color.getName() == ColorName.None {
      return null;
    }

    return BracketHandlers.getItem("minecraft:" + this.color.getResourceName() + "_dye");
  }

  public getGateways(): string[] {
    if (this.color.getName() == ColorName.Black) {
      return [
        "gateways:enderman",
        "gateways:spider"
      ];
    }

    if (this.color.getName() == ColorName.Blue) {
      return [
        "gateways:drowned",
        "gateways:squid"
      ];
    }

    if (this.color.getName() == ColorName.Brown) {
      return ["gateways:cow"];
    }

    if (this.color.getName() == ColorName.Cyan) {
      return ["gateways:glow_squid"];
    }

    if (this.color.getName() == ColorName.Gray) {
      return ["gateways:cat"];
    }

    if (this.color.getName() == ColorName.Green) {
      return [
        "gateways:frog",
        "gateways:zombie"
      ];
    }

    if (this.color.getName() == ColorName.LightBlue) {
      return ["gateways:allay"];
    }

    if (this.color.getName() == ColorName.LightGray) {
      return ["gateways:iron_golem"];
    }

    if (this.color.getName() == ColorName.Lime) {
      return ["gateways:creeper"];
    }

    if (this.color.getName() == ColorName.Magenta) {
      return [];
    }

    if (this.color.getName() == ColorName.Orange) {
      return ["gateways:wooly_cow"];
    }

    if (this.color.getName() == ColorName.Pink) {
      return ["gateways:pig"];
    }

    if (this.color.getName() == ColorName.Purple) {
      return ["gateways:bone_spider"];
    }

    if (this.color.getName() == ColorName.Red) {
      return ["gateways:cluckshroom"];
    }

    if (this.color.getName() == ColorName.White) {
      return ["gateways:skeleton"];
    }

    if (this.color.getName() == ColorName.Yellow) {
      return ["gateways:bee"];
    }

    return [];
  }

  public getPlankItem(): IItemStack {
    return BracketHandlers.getItem("colouredstuff:planks_" + this.color.getResourceName());
  }

  public getStick(): IItemStack {
    var resourceName = this.color.getResourceName();
    if this.color.getName() == ColorName.None {
      resourceName = "colorless";
    }

    return BracketHandlers.getItem("sf5_things:" + resourceName + "_stick");
  }

  public getStorageChest(): IItemStack {
    return <item:sophisticatedstorage:chest>.withTag({mainColor: this.color.asDecimal(), accentColor: 6710886});
  }

  public getWool(): IItemStack? {
    if this.color.getName() == ColorName.None {
      return null;
    }

    return BracketHandlers.getItem("minecraft:" + this.color.getResourceName() + "_wool");
  }

  public registerRecipes(): void {
    val plankItem = this.getPlankItem();
    val stick = this.getStick();
    val treasureBag = this.getBag();
    val wool = this.getWool();

    craftingTable.addShaped(
      this.color.getResourceName() + "_chest_shaped",
      this.getStorageChest(),
      [
        [plankItem, plankItem, plankItem],
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, plankItem, plankItem],
      ]
    );

    craftingTable.addShaped(
      "stick_" + this.color.getResourceName(),
      stick * 4,
      [
        [plankItem],
        [plankItem]
      ]
    );

    if treasureBag != null && wool != null {
      val safeWool = wool as IItemStack;

      craftingTable.addShaped(
        "treasure_bag_" + this.color.getResourceName(),
        treasureBag as IItemStack,
        [
          [safeWool, safeWool, safeWool],
          [safeWool, <item:sf5_things:treasure_bag_template>, safeWool],
          [safeWool, safeWool, safeWool]
        ]
      );
    }
  }
}

val coloredContents as ColoredContent[] = [
  new ColoredContent(Globals.colors[ColorName.None]),

  new ColoredContent(Globals.colors[ColorName.Black]),
  new ColoredContent(Globals.colors[ColorName.Blue]),
  new ColoredContent(Globals.colors[ColorName.Brown]),
  new ColoredContent(Globals.colors[ColorName.Cyan]),
  new ColoredContent(Globals.colors[ColorName.Gray]),
  new ColoredContent(Globals.colors[ColorName.Green]),
  new ColoredContent(Globals.colors[ColorName.LightBlue]),
  new ColoredContent(Globals.colors[ColorName.LightGray]),
  new ColoredContent(Globals.colors[ColorName.Lime]),
  new ColoredContent(Globals.colors[ColorName.Magenta]),
  new ColoredContent(Globals.colors[ColorName.Orange]),
  new ColoredContent(Globals.colors[ColorName.Pink]),
  new ColoredContent(Globals.colors[ColorName.Purple]),
  new ColoredContent(Globals.colors[ColorName.Red]),
  new ColoredContent(Globals.colors[ColorName.White]),
  new ColoredContent(Globals.colors[ColorName.Yellow])
];

for coloredContent in coloredContents {
  coloredContent.registerRecipes();
  coloredContent.getTree().registerLootModifier();
}
