import crafttweaker.api.block.Block;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.bracket.ResourceLocationBracketHandler;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.type.player.Player;

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
  Campfire = "campfire",
  CompostingBin = "composting_bin",
  CraftingTable = "crafting_table",
  Crucible = "crucible",
  Dye = "dye",
  DyeBlock = "dye_block",
  LimitedStorageBarrel1 = "limited_storage_barrel_1",
  LimitedStorageBarrel2 = "limited_storage_barrel_2",
  LimitedStorageBarrel4 = "limited_storage_barrel_4",
  Log = "log",
  Plank = "plank",
  PlankSlab = "plank_slab",
  Sapling = "sapling",
  StorageChest = "storage_chest",
  Torch = "torch",
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
  .registerItem(ColoredItem.Campfire, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return BracketHandlers.getItem("tintedcampfires:" + color.getResourceName() + "_campfire");
  })
  .registerItem(ColoredItem.CompostingBin, (color) => {
    return BracketHandlers.getItem("sf5stuff:composting_bin_" + color.getResourceName());
  })
  .registerItem(ColoredItem.CraftingTable, (color) => {
    return BracketHandlers.getItem("colouredstuff:crafting_table_" + color.getResourceName());
  })
  .registerItem(ColoredItem.Crucible, (color) => {
    return BracketHandlers.getItem("sf5stuff:crucible_" + color.getResourceName());
  })
  .registerItem(ColoredItem.Dye, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return BracketHandlers.getItem("minecraft:" + color.getResourceName() + "_dye");
  })
  .registerItem(ColoredItem.DyeBlock, (color) => {
    var resourceName = color.getResourceName();
    if color.getName() == ColorName.None {
      resourceName = "colorless";
    }

    return BracketHandlers.getItem("sf5_things:block_of_" + resourceName + "_dye");
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
  .registerItem(ColoredItem.Log, (color) => {
    return BracketHandlers.getItem("colouredstuff:log_" + color.getResourceName());
  })
  .registerItem(ColoredItem.Torch, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return BracketHandlers.getItem("tinted_torches:" + color.getResourceName() + "_torch");
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

// Register Fluid Tags
public enum ColoredFluidTag {
  Water = "water"
}

contentFactory
  .registerFluidTag(ColoredFluidTag.Water, (color) => {
    val resourceLocation = ResourceLocationBracketHandler.getResourceLocation("skyfactory_5:" + color.getResourceName() + "_water");
    return <tagmanager:fluids>.tag(resourceLocation);
  });

// Register Item Tags
public enum ColoredItemTag {
  ColoredProcessingItem = "colored_processing_item",
}

contentFactory
  .registerItemTag(ColoredItemTag.ColoredProcessingItem, (color) => {
    val resourceLocation = ResourceLocationBracketHandler.getResourceLocation("skyfactory_5:colors/processing_items/" + color.getResourceName());
    return <tagmanager:items>.tag(resourceLocation);
  });

// Register Water
contentFactory.registerWater((color) => {
  if color.getName() == ColorName.None {
    return null;
  }

  return BracketHandlers.getFluidStack("colored_water:" + color.getResourceName() + "_fluid");
});

// Register Loot Modifiers
contentFactory
  .addLootModifierGenerator("colored_leaves_", (baseName, args) => {
    // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
    // val leaves = args.blocks[ColoredBlock.Leaves];
    val leaves = BracketHandlers.getBlock("colouredstuff:leaves_" + args.color.getResourceName()) as Block?;

    val apple = args.items[ColoredItem.Apple];
    val dye = args.items[ColoredItem.Dye];
    val sapling = args.items[ColoredItem.Sapling];

    val gateways = getGatewayTreeDropsForColor(args.color);

    if leaves == null {
      return;
    }

    leaves.addLootModifier(baseName + args.color.getResourceName(), (drops, ctx) => {
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

      if rollsChance(ctx.random, stickDropChance) {
        drops.add(<item:minecraft:stick>);
      }

      for gateway in gateways {
        if rollsChance(ctx.random, gatewayDropChance) {
          drops.add(<item:gateways:gate_pearl>.withTag({gateway: gateway}));
        }
      }

      return drops;
    });
  })
  .addLootModifierGenerator("_colored_leaves_green_apple", (baseName, args) => {
    if args.color.getName() == ColorName.Green {
      return;
    }

    // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
    // val leaves = args.blocks[ColoredBlock.Leaves];
    val leaves = BracketHandlers.getBlock("colouredstuff:leaves_" + args.color.getResourceName()) as Block?;

    if leaves == null {
      return;
    }

    leaves.addLootModifier(args.color.getResourceName() + baseName, (drops, ctx) => {
      val realPlayerLooting = isRealPlayerLooting(ctx);

      if !realPlayerLooting {
        return drops;
      }

      val appleDropChance = 5;

      val player: Player = (ctx.thisEntity as Entity) as Player;

      if !player.hasGameStage(Stage.Green) && rollsChance(ctx.random, appleDropChance) {
        drops.add(<item:sf5_things:green_apple>);
      }

      return drops;
    });
  });

// Register Crafting Table Recipes
contentFactory
  .addRecipeGenerator("_apple_to_dye", (baseName, args) => {
    val apple = args.items[ColoredItem.Apple];
    val dye = args.items[ColoredItem.Dye];
    val stage = getStageForColor(args.color);

    if apple == null || dye == null || stage == null {
      return;
    }

    mods.recipestages.Recipes.addShapeless(
      stage,
      args.color.getResourceName() + baseName,
      dye,
      [apple]
    );
  })
  .addRecipeGenerator("_dye_block_from_dye", (baseName, args) => {
    val dyeBlockItem = args.items[ColoredItem.DyeBlock];
    val dye = args.items[ColoredItem.Dye];
    val stage = getStageForColor(args.color);

    if dyeBlockItem == null || dye == null || stage == null {
      return;
    }

    mods.recipestages.Recipes.addShapeless(
      stage,
      args.color.getResourceName() + baseName,
      dyeBlockItem,
      [
        dye,
        dye,
        dye,
        dye,
        dye,
        dye,
        dye,
        dye,
        dye
      ]
    );
  })
  .addRecipeGenerator("_dye_from_dye_block", (baseName, args) => {
    val dyeBlockItem = args.items[ColoredItem.DyeBlock];
    val dye = args.items[ColoredItem.Dye];
    val stage = getStageForColor(args.color);

    if dyeBlockItem == null || dye == null || stage == null {
      return;
    }

    mods.recipestages.Recipes.addShapeless(
      stage,
      args.color.getResourceName() + baseName,
      dye * 9,
      [dyeBlockItem]
    );
  })
  .addRecipeGenerator("_campfire", (baseName, args) => {
    val logItem = args.items[ColoredItem.Log];
    val torchItem = args.items[ColoredItem.Torch];
    val campfireItem = args.items[ColoredItem.Campfire];

    if logItem == null || torchItem == null || campfireItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      campfireItem,
      [
        [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
        [<item:minecraft:stick>, torchItem, <item:minecraft:stick>],
        [logItem, logItem, logItem],
      ]
    );
  })
  .addRecipeGenerator("_chest_shaped", (baseName, args) => {
    val plankItem = args.items[ColoredItem.Plank];
    val storageChest = args.items[ColoredItem.StorageChest];

    if plankItem == null || storageChest == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      storageChest,
      [
        [plankItem, plankItem, plankItem],
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, plankItem, plankItem],
      ]
    );
  })
  .addRecipeGenerator("_chest_shaped_from_logs", (baseName, args) => {
    val logItem = args.items[ColoredItem.Log];
    val storageChest = args.items[ColoredItem.StorageChest];

    if logItem == null || storageChest == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      storageChest * 4,
      [
        [logItem, logItem, logItem],
        [logItem, <item:minecraft:air>, logItem],
        [logItem, logItem, logItem],
      ]
    );
  })
  .addRecipeGenerator("_composting_bin", (baseName, args) => {
    val plankItem = args.items[ColoredItem.Plank];
    val slabItem = args.items[ColoredItem.PlankSlab];
    val compostingBin = args.items[ColoredItem.CompostingBin];

    if plankItem == null || slabItem == null || compostingBin == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      compostingBin,
      [
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, slabItem, plankItem]
      ]
    );
  })
  .addRecipeGenerator("_crafting_table", (baseName, args) => {
    val plankItem = args.items[ColoredItem.Plank];
    val craftingTableItem = args.items[ColoredItem.CraftingTable];

    if plankItem == null || craftingTableItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      craftingTableItem,
      [
        [plankItem, plankItem],
        [plankItem, plankItem]
      ]
    );
  })
  .addRecipeGenerator("_crucible", (baseName, args) => {
    val plankItem = args.items[ColoredItem.Plank];
    val slabItem = args.items[ColoredItem.PlankSlab];
    val crucible = args.items[ColoredItem.Crucible];

    if plankItem == null || slabItem == null || crucible == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      crucible,
      [
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, <item:minecraft:air>, plankItem],
        [slabItem, slabItem, slabItem]
      ]
    );
  })
  .addRecipeGenerator("_limited_barrel_shaped", (baseName, args) => {
    val barrel = args.items[ColoredItem.LimitedStorageBarrel1];
    val plankItem = args.items[ColoredItem.Plank];
    val slabItem = args.items[ColoredItem.PlankSlab];

    if barrel == null || plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      barrel,
      [
        [plankItem, slabItem, plankItem],
        [plankItem, <item:minecraft:redstone_torch>, plankItem],
        [plankItem, plankItem, plankItem],
      ]
    );
  })
  .addRecipeGenerator("_limited_barrel_shaped2", (baseName, args) => {
    val barrel = args.items[ColoredItem.LimitedStorageBarrel2];
    val plankItem = args.items[ColoredItem.Plank];
    val slabItem = args.items[ColoredItem.PlankSlab];

    if barrel == null || plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      barrel,
      [
        [plankItem, plankItem, plankItem],
        [slabItem, <item:minecraft:redstone_torch>, slabItem],
        [plankItem, plankItem, plankItem],
      ]
    );
  })
  .addRecipeGenerator("_limited_barrel_shaped4", (baseName, args) => {
    val barrel = args.items[ColoredItem.LimitedStorageBarrel4];
    val plankItem = args.items[ColoredItem.Plank];
    val slabItem = args.items[ColoredItem.PlankSlab];

    if barrel == null || plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      barrel,
      [
        [plankItem, slabItem, plankItem],
        [slabItem, <item:minecraft:redstone_torch>, slabItem],
        [plankItem, slabItem, plankItem],
      ]
    );
  })
  .addRecipeGenerator("_slabs_to_plank", (baseName, args) => {
    val plankItem = args.items[ColoredItem.Plank];
    val slabItem = args.items[ColoredItem.PlankSlab];

    if plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      plankItem,
      [
        [slabItem],
        [slabItem]
      ]
    );
  })
  .addRecipeGenerator("_torch", (baseName, args) => {
    val dye = args.items[ColoredItem.Dye];
    val torchItem = args.items[ColoredItem.Torch];

    if dye == null || torchItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      torchItem * 4,
      [
        [dye],
        [<tag:items:forge:rods>]
      ]
    );
  })
  .addRecipeGenerator("treasure_bag_", (baseName, args) => {
    val treasureBag = args.items[ColoredItem.TreasureBag];
    val wool = args.items[ColoredItem.Wool];

    if treasureBag == null || wool == null {
      return;
    }

    craftingTable.addShaped(
      baseName + args.color.getResourceName(),
      treasureBag,
      [
        [wool, wool, wool],
        [wool, <item:sf5_things:treasure_bag_template>, wool],
        [wool, wool, wool]
      ]
    );
  });

// Register Cyclic Recipes
contentFactory
  .addRecipeGenerator("_dye_macerator", (baseName, args) => {
    val dye = args.items[ColoredItem.Dye];
    val coloredProcessingItemTag = args.itemTags[ColoredItemTag.ColoredProcessingItem];

    if dye == null || coloredProcessingItemTag == null {
      return;
    }

    <recipetype:cyclic:crusher>.addRecipe(
      args.color.getResourceName() + baseName,
      coloredProcessingItemTag.asIIngredient(),
      dye,
      5,
      100,
      dye,
      65
    );
  });

// Register EnderIO Recipes
contentFactory
  .addRecipeGenerator("_dye_from_processing_items", (baseName, args) => {
    val dye = args.items[ColoredItem.Dye];
    val coloredProcessingItemTag = args.itemTags[ColoredItemTag.ColoredProcessingItem];

    if dye == null || coloredProcessingItemTag == null {
      return;
    }

    EnderIOSagMill.addRecipe(
      args.color.getResourceName() + baseName,
      coloredProcessingItemTag,
      [
        dye,
        dye % 50,
        dye % 15,
      ],
      500
    );
  });

// Register Immersive Engineering Recipes
contentFactory
  .addRecipeGenerator("_dye_water_ie_bottling", (baseName, args) => {
    val dyeBlockItem = args.items[ColoredItem.DyeBlock];
    val coloredWaterFluidTag = args.fluidTags[ColoredFluidTag.Water];

    if dyeBlockItem == null || coloredWaterFluidTag == null {
      return;
    }

    <recipetype:immersiveengineering:bottling_machine>.addRecipe(
      args.color.getResourceName() + baseName,
      [<tag:items:forge:sand>],
      coloredWaterFluidTag * 1000,
      [dyeBlockItem]
    );
  })
  .addRecipeGenerator("_dye_ie_crusher", (baseName, args) => {
    val dye = args.items[ColoredItem.Dye];
    val coloredProcessingItemTag = args.itemTags[ColoredItemTag.ColoredProcessingItem];

    if dye == null || coloredProcessingItemTag == null {
      return;
    }

    <recipetype:immersiveengineering:crusher>.addRecipe(
      args.color.getResourceName() + baseName,
      coloredProcessingItemTag.asIIngredient(),
      500,
      dye,
      dye % 50,
      dye % 15
    );
  })
  .addRecipeGenerator("_dye_ie_mixer", (baseName, args) => {
    val dye = args.items[ColoredItem.Dye];
    val coloredProcessingItemTag = args.itemTags[ColoredItemTag.ColoredProcessingItem];
    val water = args.water;

    if dye == null || coloredProcessingItemTag == null || water == null {
      return;
    }

    <recipetype:immersiveengineering:mixer>.addRecipe(
      args.color.getResourceName() + baseName,
      <tag:fluids:skyfactory_5:water>,
      [coloredProcessingItemTag.asIIngredient()],
      500,
      water,
      1000
    );
  });

// Build Colors

contentFactory.build();
