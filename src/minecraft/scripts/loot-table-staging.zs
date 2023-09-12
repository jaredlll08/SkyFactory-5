import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.condition.DamageSourceLootCondition;
import crafttweaker.api.loot.condition.KilledByPlayerLootCondition;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.WeatherCheckLootCondition;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.predicate.DamageSourcePredicate;
import crafttweaker.api.predicate.EntityEquipmentPredicate;
import crafttweaker.api.predicate.EntityPredicate;
import crafttweaker.api.predicate.ItemPredicate;
import stdlib.List;

// Stages Loot Tables based on Gamestages
loot.modifiers.register("game_stage", LootConditions.none(), (drops, ctx) => {
    if ctx.thisEntity != null && (ctx.thisEntity as Entity) is Player {
        var player as Player = (ctx.thisEntity as Entity) as Player;
        if player.hasGameStage("test_stage") {
            drops.add(<item:minecraft:diamond> * 2);
        }
    }
    return drops;
});

// Loot table modifications


// Increases Sapling drops when breaking leaves
// <block:minecraft:oak_leaves>.addLootModifier("sapling_bonus_drops_0", CommonLootModifiers.addWithChance(<item:minecraft:oak_sapling> % 20));
<block:minecraft:spruce_leaves>.addLootModifier("sapling_bonus_drops_1", CommonLootModifiers.addWithChance(<item:minecraft:spruce_sapling> % 20));
<block:minecraft:birch_leaves>.addLootModifier("sapling_bonus_drops_2", CommonLootModifiers.addWithChance(<item:minecraft:birch_sapling> % 20));
<block:minecraft:jungle_leaves>.addLootModifier("sapling_bonus_drops_3", CommonLootModifiers.addWithChance(<item:minecraft:jungle_sapling> % 20));
<block:minecraft:acacia_leaves>.addLootModifier("sapling_bonus_drops_4", CommonLootModifiers.addWithChance(<item:minecraft:acacia_sapling> % 20));
<block:minecraft:cherry_leaves>.addLootModifier("sapling_bonus_drops_5", CommonLootModifiers.addWithChance(<item:minecraft:cherry_sapling> % 20));
<block:minecraft:dark_oak_leaves>.addLootModifier("sapling_bonus_drops_6", CommonLootModifiers.addWithChance(<item:minecraft:dark_oak_sapling> % 20));
<block:minecraft:mangrove_leaves>.addLootModifier("sapling_bonus_drops_7", CommonLootModifiers.addWithChance(<item:minecraft:mangrove_propagule> % 20));
<block:sf5_things:colorless_leaves>.addLootModifier("sapling_bonus_drops_8", CommonLootModifiers.addWithChance(<item:sf5_things:colorless_sapling> % 20));
<block:sf5_things:green_leaves>.addLootModifier("sapling_bonus_drops_9", CommonLootModifiers.addWithChance(<item:sf5_things:green_sapling> % 20));

// Jared's script
// //
// Adds a Drowned Gateway Pearl to Leaves drops for players only
<block:minecraft:oak_leaves>.addLootModifier("bonus_drops_oak", (drops, ctx) => {
    if ctx.thisEntity != null && (ctx.thisEntity as Entity) is Player {
        var player as Player = (ctx.thisEntity as Entity) as Player;
        if !player.isFakePlayer && player.canEat(true) {
//            if ctx.random.nextIntBetweenInclusive(0, 99) < 15 {
//              drops.add(<item:minecraft:oak_sapling>);
//            }
            if ctx.random.nextIntBetweenInclusive(0, 99) < 4{
              drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:drowned"}));
            }
        }
    }

    return drops;
});

// Adds Zombies Gateway Pearl to Green Leaves drop for players only
<block:sf5_things:green_leaves>.addLootModifier("bonus_drops_green_leaves", (drops, ctx) => {
    if ctx.thisEntity != null && (ctx.thisEntity as Entity) is Player {
        var player as Player = (ctx.thisEntity as Entity) as Player;
        if !player.isFakePlayer && player.canEat(true) {
            if ctx.random.nextIntBetweenInclusive(0, 99) < 4{
              drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:zombie"}));
            }
        }
    }

    return drops;
});

// Loot table additions for Coloured Stuff Mod that are differentiated via Blockstate tags
<block:colouredstuff:leaves>.addLootModifier("colored_block_drops", (drops, ctx) => {
  if ctx.thisEntity != null && ctx.blockState != null && (ctx.thisEntity as Entity) is Player {
    var player as Player = (ctx.thisEntity as Entity) as Player;

    if !player.isFakePlayer {
      var color as string = ctx.blockState.getProperties()["color"];

        // red drops red sapling, etc... at 15% chance
        if ctx.random.nextIntBetweenInclusive(0, 99) < 15 {
          // TODO: Add sapling info
          drops.add(<item:colouredstuff:sapling>.withTag({BlockStateTag: {color: color}}));
        }

        // colorless leaves drop colorless stick
        if ctx.random.nextIntBetweenInclusive(0, 99) < 5 {
          // TODO: Add sapling info
          drops.add(<item:colouredstuff:sapling>.withTag({BlockStateTag: {color: color}}));
        }

                // red drops red sapling, etc... at 15% chance
        if ctx.random.nextIntBetweenInclusive(0, 99) < 15 {
          // TODO: Add sapling info
          drops.add(<item:sf5_things:colorless_stick>);
        }

        if ctx.random.nextIntBetweenInclusive(0, 99) < 4 {
          // TODO: Gateway pearl based on pearl
          // drops.add();
        }
    }
  }

  return drops;
});
