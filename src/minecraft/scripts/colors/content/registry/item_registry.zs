import crafttweaker.api.bracket.BracketHandlers;

public enum ColoredItem {
  Apple = "apple",
  Boat = "boat",
  Campfire = "campfire",
  ChallengeGateway = "challenge_gateway",
  CompostingBin = "composting_bin",
  CraftingTable = "crafting_table",
  Crucible = "crucible",
  Dye = "dye",
  DyeBlock = "dye_block",
  Essence = "essence",
  LimitedStorageBarrel1 = "limited_storage_barrel_1",
  LimitedStorageBarrel2 = "limited_storage_barrel_2",
  LimitedStorageBarrel3 = "limited_storage_barrel_3",
  LimitedStorageBarrel4 = "limited_storage_barrel_4",
  SophisticatedBarrel= "barrel",
  Log = "log",
  Plank = "plank",
  PlankSlab = "plank_slab",
  Sapling = "sapling",
  Seed = "seed",
  StorageChest = "storage_chest",
  Torch = "torch",
  TreasureBag = "treasure_bag",
  Wool = "wool",
}

ContentBuilder.factory
  .registerItem(ColoredItem.Apple, (color) => {
    if color.getName() == ColorName.Red {
      return <item:minecraft:apple>;
    }

    return BracketHandlers.getItem("sf5_things:" + color.getResourceName() + "_apple");
  })
  .registerItem(ColoredItem.Boat, (color) => {
    if color.getName() == ColorName.Brown {
      return <item:minecraft:dark_oak_boat>;
    }
    if color.getName() == ColorName.Cyan {
      return <item:minecraft:jungle_boat>;
    }
    if color.getName() == ColorName.Green {
      return <item:minecraft:acacia_boat>;
    }
    if color.getName() == ColorName.LightBlue {
      return <item:minecraft:mangrove_boat>;
    }
    if color.getName() == ColorName.Lime {
      return <item:minecraft:spruce_boat>;
    }
    if color.getName() == ColorName.Pink {
      return <item:minecraft:cherry_boat>;
    }
    if color.getName() == ColorName.Purple {
      return <item:minecraft:birch_boat>;
    }
    if color.getName() == ColorName.Red {
      return <item:minecraft:oak_boat>;
    }

    return null;
  })
  .registerItem(ColoredItem.Campfire, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return BracketHandlers.getItem("tintedcampfires:" + color.getResourceName() + "_campfire");
  })
  .registerItem(ColoredItem.ChallengeGateway, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return <item:gateways:gate_pearl>.withTag({gateway:"gateways:challenge/challenge_" + color.getResourceName()});
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
  .registerItem(ColoredItem.DyeBlock, (color) => {
    var resourceName = color.getResourceName();
    if color.getName() == ColorName.None {
      resourceName = "colorless";
    }

    return BracketHandlers.getItem("sf5_things:block_of_" + resourceName + "_dye");
  })
  .registerItem(ColoredItem.Essence, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return <item:mysticalagriculture:${color.getResourceName()}_crop_essence>;
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
  .registerItem(ColoredItem.Seed, (color) => {
    return BracketHandlers.getItem("mysticalagriculture:" + color.getResourceName() + "_crop_seeds");
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
  .registerItem(ColoredItem.LimitedStorageBarrel3, (color) => {
    return <item:sophisticatedstorage:limited_barrel_3>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.LimitedStorageBarrel4, (color) => {
    return <item:sophisticatedstorage:limited_barrel_4>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.SophisticatedBarrel, (color) => {
    return <item:sophisticatedstorage:barrel>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.Log, (color) => {
    return BracketHandlers.getItem("colouredstuff:log_" + color.getResourceName());
  })
  .registerItem(ColoredItem.Torch, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return BracketHandlers.getItem("colored_torches:" + color.getResourceName() + "_torch");
  })
  .registerItem(ColoredItem.TreasureBag, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    if color.getName() == ColorName.Brown {
      color = Globals.colors[ColorName.LightBrown];
    }

    return <item:lootbags:loot_bag>.withTag({
      Type: "COMMON",
      Loot: "skyfactory_5:loot_bags/" + color.getResourceName() + "_loot_bag",
      Color: color.asDecimal(),
      Name: color.getDisplayName() + " Loot Bag"
    });
  })
  .registerItem(ColoredItem.Wool, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return BracketHandlers.getItem("minecraft:" + color.getResourceName() + "_wool");
  });
