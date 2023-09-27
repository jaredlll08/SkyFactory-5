import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.loot.modifier.CommonLootModifiers;

// Increases Sapling drops when breaking leaves
// <block:minecraft:oak_leaves>.addLootModifier("sapling_bonus_drops_0", CommonLootModifiers.addWithChance(<item:minecraft:oak_sapling> % 20));
<block:minecraft:spruce_leaves>.addLootModifier("sapling_bonus_drops_1", CommonLootModifiers.addWithChance(<item:minecraft:spruce_sapling> % 20));
<block:minecraft:birch_leaves>.addLootModifier("sapling_bonus_drops_2", CommonLootModifiers.addWithChance(<item:minecraft:birch_sapling> % 20));
<block:minecraft:jungle_leaves>.addLootModifier("sapling_bonus_drops_3", CommonLootModifiers.addWithChance(<item:minecraft:jungle_sapling> % 20));
<block:minecraft:acacia_leaves>.addLootModifier("sapling_bonus_drops_4", CommonLootModifiers.addWithChance(<item:minecraft:acacia_sapling> % 20));
<block:minecraft:cherry_leaves>.addLootModifier("sapling_bonus_drops_5", CommonLootModifiers.addWithChance(<item:minecraft:cherry_sapling> % 20));
<block:minecraft:dark_oak_leaves>.addLootModifier("sapling_bonus_drops_6", CommonLootModifiers.addWithChance(<item:minecraft:dark_oak_sapling> % 20));
<block:minecraft:mangrove_leaves>.addLootModifier("sapling_bonus_drops_7", CommonLootModifiers.addWithChance(<item:minecraft:mangrove_propagule> % 20));

// Adds a Drowned Gateway Pearl to Leaves drops for players only
<block:minecraft:oak_leaves>.addLootModifier("bonus_drops_oak", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 4) {
    drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:drowned"}));
  }

  return drops;
});

// Adds Zombies Gateway Pearl to Green Leaves drop for players only
<block:sf5_things:green_leaves>.addLootModifier("bonus_drops_green_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 4) {
    drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:zombie"}));
  }

  return drops;
});

<block:sf5_things:colorless_leaves>.addLootModifier("first_colorless_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  // Increases drops from 1st tree on worldgen
  if rollsChance(ctx.random, 15) {
    drops.add(<item:colouredstuff:sapling_none>);
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:colorless_apple>);
  }

  return drops;
});

<block:colouredstuff:leaves_none>.addLootModifier("colorless_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 10) {
    drops.add(<item:exdeorum:silk_worm>);
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:colorless_apple>);
  }

  val player: Player = (ctx.thisEntity as Entity) as Player;

  if !player.hasGameStage(Stage.Green) && rollsChance(ctx.random, 2) {
    drops.add(<item:sf5_things:green_apple>);
  }

  return drops;
});

// Drops Green Sticks from Green leaves
<block:colouredstuff:leaves_green>.addLootModifier("green_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:green_stick>);
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:green_apple>);
  }

  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:green_dye>);
  }

  if rollsChance(ctx.random, 1) {
    drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/green", BagType: "treasurebags:green"}}));
  }

  return drops;
});

// Drops Brown Sticks from Brown leaves
<block:colouredstuff:leaves_brown>.addLootModifier("brown_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:brown_stick>);
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:brown_apple>);
  }

  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:brown_dye>);
  }

  if rollsChance(ctx.random, 1) {
    drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/brown", BagType: "treasurebags:brown"}}));
  }

  return drops;
});

// Drops Brown Sticks from Brown leaves
<block:colouredstuff:leaves_white>.addLootModifier("white_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:white_stick>);
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:white_apple>);
  }

  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:white_dye>);
  }

  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/white", BagType: "treasurebags:white"}}));
  }

  return drops;
});


// Drops Yellow Sticks from Yellow leaves
<block:colouredstuff:leaves_yellow>.addLootModifier("yellow_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:yellow_stick>);
  }

  // if rollsChance(ctx.random, 5) {
  //  drops.add(<item:sf5_things:yellow_apple>);
  // }

  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:yellow_dye>);
  }

  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/yellow", BagType: "treasurebags:yellow"}}));
  }

  return drops;
});

// Drops Orange Sticks from Orange leaves
<block:colouredstuff:leaves_orange>.addLootModifier("orange_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:orange_stick>);
  }

  // if rollsChance(ctx.random, 5) {
  //  drops.add(<item:sf5_things:orange_apple>);
  // }

  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:orange_dye>);
  }

  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/orange", BagType: "treasurebags:orange"}}));
  }

  return drops;
});
