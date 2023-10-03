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

  if rollsChance(ctx.random, 0.69) {
    drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:drowned"}));
  }

  return drops;
});

// Adds Zombies Gateway Pearl to Green Leaves drop for players only
<block:sf5_things:green_leaves>.addLootModifier("bonus_drops_green_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 0.69) {
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

  if !player.hasGameStage(Stage.Green) && rollsChance(ctx.random, 1) {
    drops.add(<item:sf5_things:green_apple>);
  }

  return drops;
});

// Drops Green Items from Green leaves
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
/*
  if rollsChance(ctx.random, 1) {
    drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/green", BagType: "treasurebags:green"}}));
  }
*/

  if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:frog"}));
  }

  if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:zombie"}));
  }

  return drops;
});

// Drops Brown Items from Brown leaves
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
/*
  if rollsChance(ctx.random, 1) {
    drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/brown", BagType: "treasurebags:brown"}}));
  }
*/

  if rollsChance(ctx.random, 0.69) {
    drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:cow"}));
  }

  return drops;
});

// Drops White Items from White leaves
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
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/white", BagType: "treasurebags:white"}}));
  }
*/

    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:skeleton"}));
  }

  return drops;
});


// Drops Yellow Items from Yellow leaves
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
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/yellow", BagType: "treasurebags:yellow"}}));
  }
*/



    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:bee"}));
  }

  return drops;
});

// Drops Orange Items from Orange leaves
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
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/orange", BagType: "treasurebags:orange"}}));
  }
*/

    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:wooly_cow"}));
  }

  return drops;
});


// Drops Black Items from Black leaves
<block:colouredstuff:leaves_black>.addLootModifier("black_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:black_stick>);
  }

  // if rollsChance(ctx.random, 5) {
  //  drops.add(<item:sf5_things:black_apple>);
  // }

  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:black_dye>);
  }
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/black", BagType: "treasurebags:black"}}));
  }
*/

    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:enderman"}));
  }

    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:spider"}));
  }

  return drops;
});




// Drops Red Items from Red leaves
<block:colouredstuff:leaves_red>.addLootModifier("red_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:red_stick>);
  }

  if rollsChance(ctx.random, 5) {
   drops.add(<item:minecraft:apple>);
  }

  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:red_dye>);
  }
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/red", BagType: "treasurebags:red"}}));
  }
*/

    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:cluckshroom"}));
  }

  return drops;
});

// Drops Blue Items from Blue leaves
<block:colouredstuff:leaves_blue>.addLootModifier("blue_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:blue_stick>);
  }
/*
  if rollsChance(ctx.random, 5) {
   drops.add(<item:minecraft:apple>);
  }
*/
  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:blue_dye>);
  }
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/blue", BagType: "treasurebags:blue"}}));
  }
*/
    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:drowned"}));
  }

    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:squid"}));
  }

  return drops;
});

// Drops Cyan Items from Cyan leaves
<block:colouredstuff:leaves_cyan>.addLootModifier("cyan_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:cyan_stick>);
  }
/*
  if rollsChance(ctx.random, 5) {
   drops.add(<item:minecraft:apple>);
  }
*/
  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:cyan_dye>);
  }
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/cyan", BagType: "treasurebags:cyan"}}));
  }
*/
    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:glow_squid"}));
  }


  return drops;
});




// Drops Gray Items from Gray leaves
<block:colouredstuff:leaves_gray>.addLootModifier("gray_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:gray_stick>);
  }
/*
  if rollsChance(ctx.random, 5) {
   drops.add(<item:minecraft:apple>);
  }
*/
  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:gray_dye>);
  }
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/gray", BagType: "treasurebags:gray"}}));
  }
*/
    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:cat"}));
  }

  return drops;
});



// Drops Light Blue Items from Light Blue leaves
<block:colouredstuff:leaves_light_blue>.addLootModifier("light_blue_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:light_blue_stick>);
  }
/*
  if rollsChance(ctx.random, 5) {
   drops.add(<item:minecraft:apple>);
  }
*/
  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:light_blue_dye>);
  }
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/light_blue", BagType: "treasurebags:light_blue"}}));
  }
*/

    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:allay"}));
  }

  return drops;
});

// Drops Light Gray Items from Light Gray leaves
<block:colouredstuff:leaves_light_gray>.addLootModifier("light_gray_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:light_gray_stick>);
  }
/*
  if rollsChance(ctx.random, 5) {
   drops.add(<item:minecraft:apple>);
  }
*/
  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:light_gray_dye>);
  }
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/light_gray", BagType: "treasurebags:light_gray"}}));
  }
*/

    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:iron_golem"}));
  }

  return drops;
});

// Drops Lime Items from Lime leaves
<block:colouredstuff:leaves_lime>.addLootModifier("lime_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:lime_stick>);
  }
/*
  if rollsChance(ctx.random, 5) {
   drops.add(<item:minecraft:apple>);
  }
*/
  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:lime_dye>);
  }
/*
  if rollsChance(ctx.random, 0.69) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/lime", BagType: "treasurebags:lime"}}));
  }
*/
    if rollsChance(ctx.random, 1) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:creeper"}));
  }

  return drops;
});

// Drops Magenta Items from Magenta leaves
<block:colouredstuff:leaves_magenta>.addLootModifier("magenta_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:magenta_stick>);
  }
/*
  if rollsChance(ctx.random, 5) {
   drops.add(<item:minecraft:apple>);
  }
*/
  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:magenta_dye>);
  }
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/magenta", BagType: "treasurebags:magenta"}}));
  }
*/

  return drops;
});



// Drops Pink Items from Pink leaves
<block:colouredstuff:leaves_pink>.addLootModifier("pink_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:pink_stick>);
  }
/*
  if rollsChance(ctx.random, 5) {
   drops.add(<item:minecraft:apple>);
  }
*/
  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:pink_dye>);
  }
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/pink", BagType: "treasurebags:pink"}}));
  }
*/
    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:pig"}));
  }

  return drops;
});

// Drops Purple Items from Purple leaves
<block:colouredstuff:leaves_purple>.addLootModifier("purple_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:purple_stick>);
  }
/*
  if rollsChance(ctx.random, 5) {
   drops.add(<item:minecraft:apple>);
  }
*/
  if rollsChance(ctx.random, 10) {
    drops.add(<item:minecraft:purple_dye>);
  }
/*
  if rollsChance(ctx.random, 1) {
   drops.add(<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/purple", BagType: "treasurebags:purple"}}));
  }
*/

    if rollsChance(ctx.random, 0.69) {
   drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:bone_spider"}));
  }

  return drops;
});



// Sets up drops from Tall Grass
<block:minecraft:spruce_leaves>.addLootModifier("wheat_seeds_from_tall_grass", CommonLootModifiers.addWithChance(<item:minecraft:wheat_seeds> % 12.5));

