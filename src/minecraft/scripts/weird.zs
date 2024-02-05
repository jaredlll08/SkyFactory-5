import crafttweaker.api.loot.modifier.CommonLootModifiers;



// <entitytype:minecraft:drowned>.addLootModifier("clear_drowned", CommonLootModifiers.clearLoot());
<entitytype:minecraft:drowned>.addLootModifier("drowned_drops_heart_of_the_sea", CommonLootModifiers.add(<item:minecraft:stone>));

