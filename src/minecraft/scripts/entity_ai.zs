import mods.angrymobs.AITweaks;

/*
// Makes Chickens able to do melee damage (needed for any mob that normally doesn't attack anything)
AITweaks.addMeleeAttackTweak(<entitytype:minecraft:chicken>, 1, 1.0F, 1.0D, false);
// Makes Chickens shoot eggs at their target
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:chicken>, <entitytype:minecraft:egg>, "minecraft:entity.egg.throw", 1, 1.0F, 1.0F);


// Makes Chickens able to do melee damage (needed for any mob that normally doesn't attack anything)
AITweaks.addMeleeAttackTweak(<entitytype:minecraft:allay>, 1, 1.0F, 1.0D, false);
// Makes Chickens shoot eggs at their target
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:allay>, <entitytype:minecraft:egg>, "minecraft:entity.egg.throw", 1, 1.0F, 1.0F);
*/

// Ranged Entities
// Camels spit
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:camel>, <entitytype:minecraft:llama_spit>, "minecraft:entity.llama.spit", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:earthmobsmod:cluck_shroom>, <entitytype:earthmobsmod:smelly_egg>, "minecraft:entity.egg.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:earthmobsmod:duck>, <entitytype:earthmobsmod:duck_egg>, "minecraft:entity.egg.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:earthmobsmod:fancy_chicken>, <entitytype:earthmobsmod:fancy_egg>, "minecraft:entity.egg.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:chicken>, <entitytype:minecraft:egg>, "minecraft:entity.egg.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:strider>, <entitytype:minecraft:egg>, "minecraft:entity.egg.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:panda>, <entitytype:minecraft:llama_spit>, "minecraft:entity.llama.spit", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:forcecraft:cold_chicken>, <entitytype:minecraft:egg>, "minecraft:entity.egg.throw", 1, 1.0F, 1.0F);

// TODO: Remove these (in favor of the loop below) after confirming these are all fine
// Melee Entities
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:albino_cow>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:cream_cow>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:furnace_golem>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:hyper_rabbit>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:jumbo_rabbit>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:magma_cow>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:melon_golem>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:moobloom>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:moolip>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:jolly_llama>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:teacup_pig>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:umbra_cow>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:wooly_cow>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:zombified_pig>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:energeticsheep:energetic_sheep>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:allay>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:axolotl>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:bat>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:cat>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:cod>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:cow>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:dolphin>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:donkey>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:fox>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:frog>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:glow_squid>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:goat>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:horse>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:mooshroom>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:ocelot>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:parrot>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:pig>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:polar_bear>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:pufferfish>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:rabbit>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:salmon>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:sheep>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:skeleton_horse>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:sniffer>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:squid>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:tadpole>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:tropical_fish>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:turtle>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:villager>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:wandering_trader>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:wolf>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:minecraft:zombie_horse>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:forcecraft:cold_cow>, 1, 1.0F, 1.0D, false);
// AITweaks.addMeleeAttackTweak(<entitytype:forcecraft:cold_pig>, 1, 1.0F, 1.0D, false);

for mob in Globals.stagedMobs {
  if !mob.getCategory().isFriendly() {
    continue;
  }

  AITweaks.addMeleeAttackTweak(mob, 1, 1.0F, 1.0D, false);
}
