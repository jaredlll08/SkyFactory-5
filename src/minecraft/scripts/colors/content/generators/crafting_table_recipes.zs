ContentBuilder.factory
  .addRecipeGenerator("_apple_to_dye", (baseName, args) => {
    val apple = args.getItem(ColoredItem.Apple);
    val dye = args.getItem(ColoredItem.Dye);
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
  .addRecipeGenerator("_boat", (baseName, args) => {
    val plankItem = args.getItem(ColoredItem.Plank);
    val boatItem = args.getItem(ColoredItem.Boat);

    if plankItem == null || boatItem == null {
      return;
    }

    craftingTable.remove(boatItem);

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      boatItem,
      [
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, plankItem, plankItem]
      ]
    );
  })
  .addRecipeGenerator("_dye_block_from_dye", (baseName, args) => {
    val dyeBlockItem = args.getItem(ColoredItem.DyeBlock);
    val dye = args.getItem(ColoredItem.Dye);
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
    val dyeBlockItem = args.getItem(ColoredItem.DyeBlock);
    val dye = args.getItem(ColoredItem.Dye);
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
  .addRecipeGenerator("_dye_from_essence", (baseName, args) => {
    val essence = args.getItem(ColoredItem.Essence);
    val dye = args.getItem(ColoredItem.Dye);
    val stage = getStageForColor(args.color);

    if essence == null || dye == null || stage == null {
      return;
    }

    mods.recipestages.Recipes.addShapeless(
      stage,
      args.color.getResourceName() + baseName,
      dye * 4,
      [
        essence,
        essence,
        essence,
        essence,
        essence,
        essence,
        essence,
        essence
      ]
    );
  })
  .addRecipeGenerator("_campfire", (baseName, args) => {
    val logItem = args.getItem(ColoredItem.Log);
    val torchItem = args.getItem(ColoredItem.Torch);
    val campfireItem = args.getItem(ColoredItem.Campfire);

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
    val plankItem = args.getItem(ColoredItem.Plank);
    val storageChest = args.getItem(ColoredItem.StorageChest);

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
    val logItem = args.getItem(ColoredItem.Log);
    val storageChest = args.getItem(ColoredItem.StorageChest);

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
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);
    val compostingBin = args.getItem(ColoredItem.CompostingBin);

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
    val plankItem = args.getItem(ColoredItem.Plank);
    val craftingTableItem = args.getItem(ColoredItem.CraftingTable);

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
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);
    val crucible = args.getItem(ColoredItem.Crucible);

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
    val barrel = args.getItem(ColoredItem.LimitedStorageBarrel1);
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);

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
    val barrel = args.getItem(ColoredItem.LimitedStorageBarrel2);
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);

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
    val barrel = args.getItem(ColoredItem.LimitedStorageBarrel4);
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);

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
  .addRecipeGenerator("sophisticated_barrel_shaped", (baseName, args) => {
    val sophisticated_barrel = args.getItem(ColoredItem.SophisticatedBarrel);
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);

    if sophisticated_barrel == null || plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      sophisticated_barrel,
      [
        [plankItem, slabItem, plankItem],
        [plankItem, <item:minecraft:redstone_torch>, plankItem],
        [plankItem, slabItem, plankItem],
      ]
    );
  })
  .addRecipeGenerator("_slabs_to_plank", (baseName, args) => {
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);

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
    val dye = args.getItem(ColoredItem.Dye);
    val torchItem = args.getItem(ColoredItem.Torch);

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
    val treasureBag = args.getItem(ColoredItem.TreasureBag);
    val wool = args.getItem(ColoredItem.Wool);

    if treasureBag == null || wool == null {
      return;
    }

    craftingTable.addShaped(
      baseName + args.color.getResourceName(),
      treasureBag,
      [
        [wool, wool, wool],
        [wool, <item:sf5_things:treasure_bag_template>.reuse(), wool],
        [wool, wool, wool]
      ]
    );
  });

