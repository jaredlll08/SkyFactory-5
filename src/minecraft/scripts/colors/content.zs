import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.block.Block;

val contentFactory = new ColoredContentFactory();

// Register Blocks
public enum ColoredBlock {
  Leaves = "leaves"
}

// TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
// contentFactory
//   .registerBlock(ColoredBlock.Leaves, (color) => {
//     return BracketHandlers.getBlock("colouredstuff:leaves_" + color.getResourceName());
//   });

// Regsiter Items
public enum ColoredItem {
  Apple = "apple",
  CraftingTable = "crafting_table",
  Dye = "dye",
  LimitedStorageBarrel1 = "limited_storage_barrel_1",
  LimitedStorageBarrel2 = "limited_storage_barrel_2",
  LimitedStorageBarrel4 = "limited_storage_barrel_4",
  Plank = "plank",
  PlankSlab = "plank_slab",
  Sapling = "sapling",
  Stick = "stick",
  StorageChest = "storage_chest",
  TreasureBag = "treasure_bag",
  Wool = "wool",
}

contentFactory
  .registerItem(ColoredItem.Apple, (color) => {
    if color.getName() == ColorName.Red {
      return <item:minecraft:apple>;
    }

    return BracketHandlers.getItem("sf5_things:" + color.getResourceName() + "_apple");
  })
  .registerItem(ColoredItem.CraftingTable, (color) => {
    return BracketHandlers.getItem("colouredstuff:crafting_table_" + color.getResourceName());
  })
  .registerItem(ColoredItem.Dye, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return BracketHandlers.getItem("minecraft:" + color.getResourceName() + "_dye");
  })
  .registerItem(ColoredItem.Plank, (color) => {
    return BracketHandlers.getItem("colouredstuff:planks_" + color.getResourceName());
  })
  .registerItem(ColoredItem.PlankSlab, (color) => {
    return BracketHandlers.getItem("colouredstuff:slab_planks_" + color.getResourceName());
  })
  .registerItem(ColoredItem.Sapling, (color) => {
    return BracketHandlers.getItem("colouredstuff:sapling_" + color.getResourceName());
  })
  .registerItem(ColoredItem.Stick, (color) => {
    var resourceName = color.getResourceName();
    if color.getName() == ColorName.None {
      resourceName = "colorless";
    }

    return BracketHandlers.getItem("sf5_things:" + resourceName + "_stick");
  })
  .registerItem(ColoredItem.StorageChest, (color) => {
    return <item:sophisticatedstorage:chest>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.LimitedStorageBarrel1, (color) => {
    return <item:sophisticatedstorage:limited_barrel_1>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.LimitedStorageBarrel2, (color) => {
    return <item:sophisticatedstorage:limited_barrel_2>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.LimitedStorageBarrel4, (color) => {
    return <item:sophisticatedstorage:limited_barrel_4>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.TreasureBag, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return <item:treasurebags:treasure_bag>.withTag({
      "silentlib.LootContainer": {
        LootTable: "treasurebags:bags/" + color.getResourceName(),
        BagType: "treasurebags:" + color.getResourceName()
      }
    });
  })
  .registerItem(ColoredItem.Wool, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return BracketHandlers.getItem("minecraft:" + color.getResourceName() + "_wool");
  });

// Register Loot Modifiers
contentFactory
  .addLootModifierGenerator("colored_leaves_", (baseName, color, blocks, items) => {
    // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
    // val leaves = blocks[ColoredBlock.Leaves];
    val leaves = BracketHandlers.getBlock("colouredstuff:leaves_" + color.getResourceName()) as Block?;

    val apple = items[ColoredItem.Apple];
    val dye = items[ColoredItem.Dye];
    val sapling = items[ColoredItem.Sapling];
    val stick = items[ColoredItem.Stick];

    val gateways = getGatewaysForColor(color);

    if leaves == null {
      return;
    }

    leaves.addLootModifier(baseName + color.getResourceName(), (drops, ctx) => {
      val realPlayerLooting = isRealPlayerLooting(ctx);

      val saplingDropChance = realPlayerLooting ? 15 : 10;
      val appleDropChance = realPlayerLooting ? 5 : 1;
      val dyeDropChance = realPlayerLooting ? 10 : 5;
      val stickDropChance = realPlayerLooting ? 5 : 1;
      val gatewayDropChance = realPlayerLooting ? 0.69 : 0.25;

      if apple != null && rollsChance(ctx.random, appleDropChance) {
        drops.add(apple);
      }

      if dye != null && rollsChance(ctx.random, dyeDropChance) {
        drops.add(dye);
      }

      if sapling != null && rollsChance(ctx.random, saplingDropChance) {
        drops.add(sapling);
      }

      if stick != null && rollsChance(ctx.random, stickDropChance) {
        drops.add(stick);
      }

      for gateway in gateways {
        if rollsChance(ctx.random, gatewayDropChance) {
          drops.add(<item:gateways:gate_pearl>.withTag({gateway: gateway}));
        }
      }

      return drops;
    });
  });

// Register Recipes
contentFactory
  .addRecipeGenerator("_apple_to_dye", (baseName, color, items) => {
    val apple = items[ColoredItem.Apple];
    val dye = items[ColoredItem.Dye];
    val stage = getStageForColor(color);

    if apple == null || dye == null || stage == null {
      return;
    }

    mods.recipestages.Recipes.addShapeless(
      stage,
      color.getResourceName() + baseName,
      dye,
      [apple]
    );
  })
  .addRecipeGenerator("_chest_shaped", (baseName, color, items) => {
    val plankItem = items[ColoredItem.Plank];
    val storageChest = items[ColoredItem.StorageChest];

    if plankItem == null || storageChest == null {
      return;
    }

    craftingTable.addShaped(
      color.getResourceName() + baseName,
      storageChest,
      [
        [plankItem, plankItem, plankItem],
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, plankItem, plankItem],
      ]
    );
  })
  .addRecipeGenerator("_limited_barrel_shaped", (baseName, color, items) => {
    val barrel = items[ColoredItem.LimitedStorageBarrel1];
    val plankItem = items[ColoredItem.Plank];
    val slabItem = items[ColoredItem.PlankSlab];

    if barrel == null || plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      color.getResourceName() + baseName,
      barrel,
      [
        [plankItem, slabItem, plankItem],
        [plankItem, <item:minecraft:redstone_torch>, plankItem],
        [plankItem, plankItem, plankItem],
      ]
    );
  })
  .addRecipeGenerator("_limited_barrel_shaped2", (baseName, color, items) => {
    val barrel = items[ColoredItem.LimitedStorageBarrel2];
    val plankItem = items[ColoredItem.Plank];
    val slabItem = items[ColoredItem.PlankSlab];

    if barrel == null || plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      color.getResourceName() + baseName,
      barrel,
      [
        [plankItem, plankItem, plankItem],
        [slabItem, <item:minecraft:redstone_torch>, slabItem],
        [plankItem, plankItem, plankItem],
      ]
    );
  })
  .addRecipeGenerator("_limited_barrel_shaped4", (baseName, color, items) => {
    val barrel = items[ColoredItem.LimitedStorageBarrel4];
    val plankItem = items[ColoredItem.Plank];
    val slabItem = items[ColoredItem.PlankSlab];

    if barrel == null || plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      color.getResourceName() + baseName,
      barrel,
      [
        [plankItem, slabItem, plankItem],
        [slabItem, <item:minecraft:redstone_torch>, slabItem],
        [plankItem, slabItem, plankItem],
      ]
    );
  })
  .addRecipeGenerator("stick_", (baseName, color, items) => {
    val plankItem = items[ColoredItem.Plank];
    val stick = items[ColoredItem.Stick];

    if plankItem == null || stick == null {
      return;
    }

    craftingTable.addShaped(
      baseName + color.getResourceName(),
      stick * 4,
      [
        [plankItem],
        [plankItem]
      ]
    );
  })
  .addRecipeGenerator("treasure_bag_", (baseName, color, items) => {
    val treasureBag = items[ColoredItem.TreasureBag];
    val wool = items[ColoredItem.Wool];

    if treasureBag == null || wool == null {
      return;
    }

    craftingTable.addShaped(
      baseName + color.getResourceName(),
      treasureBag,
      [
        [wool, wool, wool],
        [wool, <item:sf5_things:treasure_bag_template>, wool],
        [wool, wool, wool]
      ]
    );
  });

// Build Colors

contentFactory.build();
