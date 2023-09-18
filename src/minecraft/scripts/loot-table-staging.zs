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

// Increases Sapling drops when breaking leaves
// <block:minecraft:oak_leaves>.addLootModifier("sapling_bonus_drops_0", CommonLootModifiers.addWithChance(<item:minecraft:oak_sapling> % 20));
<block:minecraft:spruce_leaves>.addLootModifier("sapling_bonus_drops_1", CommonLootModifiers.addWithChance(<item:minecraft:spruce_sapling> % 20));
<block:minecraft:birch_leaves>.addLootModifier("sapling_bonus_drops_2", CommonLootModifiers.addWithChance(<item:minecraft:birch_sapling> % 20));
<block:minecraft:jungle_leaves>.addLootModifier("sapling_bonus_drops_3", CommonLootModifiers.addWithChance(<item:minecraft:jungle_sapling> % 20));
<block:minecraft:acacia_leaves>.addLootModifier("sapling_bonus_drops_4", CommonLootModifiers.addWithChance(<item:minecraft:acacia_sapling> % 20));
<block:minecraft:cherry_leaves>.addLootModifier("sapling_bonus_drops_5", CommonLootModifiers.addWithChance(<item:minecraft:cherry_sapling> % 20));
<block:minecraft:dark_oak_leaves>.addLootModifier("sapling_bonus_drops_6", CommonLootModifiers.addWithChance(<item:minecraft:dark_oak_sapling> % 20));
<block:minecraft:mangrove_leaves>.addLootModifier("sapling_bonus_drops_7", CommonLootModifiers.addWithChance(<item:minecraft:mangrove_propagule> % 20));

// Jared's script
// //
// Adds a Drowned Gateway Pearl to Leaves drops for players only
<block:minecraft:oak_leaves>.addLootModifier("bonus_drops_oak", (drops, ctx) => {
    if ctx.thisEntity != null && (ctx.thisEntity as Entity) is Player {
        var player as Player = (ctx.thisEntity as Entity) as Player;
        if !player.isFakePlayer && player.canEat(true) {
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


// Drops Colorless Apples and Worms from Colorless Leaves
<block:sf5_things:colorless_leaves>.addLootModifier("colorless_apple_from_colorless_leaves2", (drops, ctx) => {
    if ctx.thisEntity != null && (ctx.thisEntity as Entity) is Player {
        var player as Player = (ctx.thisEntity as Entity) as Player;
        if !player.isFakePlayer && player.canEat(true) {
            if ctx.random.nextIntBetweenInclusive(0, 99) < 5{
              drops.add(<item:sf5_things:colorless_apple>);
            }
        }
    }

    return drops;

});


<block:colouredstuff:leaves_none>.addLootModifier("colorless_apple_from_colorless_leaves1", (drops, ctx) => {
    if ctx.thisEntity != null && (ctx.thisEntity as Entity) is Player {
        var player as Player = (ctx.thisEntity as Entity) as Player;
        if !player.isFakePlayer && player.canEat(true) {
            if ctx.random.nextIntBetweenInclusive(0, 99) < 5{
              drops.add(<item:sf5_things:colorless_apple>);
            }
        }
    }

    return drops;

});

<block:colouredstuff:leaves_none>.addLootModifier("green_apple_from_colorless_leaves", (drops, ctx) => {
    if ctx.thisEntity != null && (ctx.thisEntity as Entity) is Player {
        var player as Player = (ctx.thisEntity as Entity) as Player;
        if !player.isFakePlayer && player.canEat(true) {
            if ctx.random.nextIntBetweenInclusive(0, 99) < 3{
              drops.add(<item:sf5_things:green_apple>);
            }
        }
    }

    return drops;

});
