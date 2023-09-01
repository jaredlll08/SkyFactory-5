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



//Stages Loot Tables based on Gamestages


loot.modifiers.register("game_stage", LootConditions.none(), (drops, ctx) => {
    if ctx.thisEntity != null && (ctx.thisEntity as Entity) is Player {
        var player as Player = (ctx.thisEntity as Entity) as Player;
        if player.hasGameStage("test_stage") {
            drops.add(<item:minecraft:diamond> * 2);
        }
    }
    return drops;
});