import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.EntityPropertyLootCondition;
import crafttweaker.api.predicate.EntityPredicate;
import crafttweaker.api.entity.EntityType;
import crafttweaker.api.entity.Entity;

// val noFrogDrops = [<entitytype:minecraft:slime>] as EntityType<Entity>[];
val noFrogDrops = [] as EntityType<Entity>[];

loot.modifiers.register(
  "frog_drops",
  LootConditions.allOf(
    EntityPropertyLootCondition.create(<constant:minecraft:entitytarget:killer>, EntityPredicate.create(<entitytype:minecraft:frog>))
  ),
  (drops, ctx) => {
    if ctx.thisEntity is Entity {
      val entity = ctx.thisEntity as Entity;
      if !(entity.type in noFrogDrops) {
        drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/" + entity.registryName.path}));
      }
    }
    return drops;
  }
);

// Adds entities to Frog kill tag
<tag:entity_types:minecraft:frog_food>.add(
  <entitytype:minecraft:pig>,
  <entitytype:minecraft:chicken>,
  <entitytype:minecraft:ghast>,
  <entitytype:minecraft:polar_bear>,
  <entitytype:minecraft:skeleton_horse>,
  <entitytype:minecraft:skeleton>,
  <entitytype:minecraft:panda>,
  <entitytype:minecraft:snow_golem>,
  <entitytype:minecraft:goat>,
  <entitytype:minecraft:sheep>,
  <entitytype:energeticsheep:energetic_sheep>,
  <entitytype:earthmobsmod:albino_cow>,
  <entitytype:earthmobsmod:jolly_llama>,
  <entitytype:earthmobsmod:skeleton_wolf>,
  <entitytype:earthmobsmod:melon_golem>,
  <entitytype:minecraft:enderman>,
  <entitytype:minecraft:spider>,
  <entitytype:minecraft:wither_skeleton>,
  <entitytype:minecraft:wither>,
  <entitytype:minecraft:cave_spider>,
  <entitytype:minecraft:ender_dragon>,
  <entitytype:waddles:adelie_penguin>,
  <entitytype:earthmobsmod:wither_skeleton_wolf>,
  <entitytype:earthmobsmod:umbra_cow>,
  <entitytype:minecraft:mooshroom>,
  <entitytype:minecraft:parrot>,
  <entitytype:minecraft:strider>,
  <entitytype:minecraft:salmon>,
  <entitytype:earthmobsmod:cluck_shroom>,
  <entitytype:minecraft:camel>,
  <entitytype:minecraft:bee>,
  <entitytype:minecraft:ocelot>,
  <entitytype:earthmobsmod:moobloom>,
  <entitytype:earthmobsmod:cream_cow>,
  <entitytype:minecraft:blaze>,
  <entitytype:minecraft:fox>,
  <entitytype:minecraft:tropical_fish>,
  <entitytype:minecraft:pufferfish>,
  <entitytype:minecraft:magma_cube>,
  <entitytype:earthmobsmod:wooly_cow>,
  <entitytype:earthmobsmod:hyper_rabbit>,
  <entitytype:earthmobsmod:magma_cow>,
  <entitytype:minecraft:shulker>,
  <entitytype:minecraft:endermite>,
  <entitytype:earthmobsmod:bone_spider>,
  <entitytype:minecraft:glow_squid>,
  <entitytype:minecraft:warden>,
  <entitytype:earthmobsmod:tropical_slime>,
  <entitytype:earthmobsmod:stray_bone_spider>,
  <entitytype:earthmobsmod:fancy_chicken>,
  <entitytype:minecraft:silverfish>,
  <entitytype:minecraft:evoker>,
  <entitytype:minecraft:cat>,
  <entitytype:minecraft:pillager>,
  <entitytype:minecraft:ravager>,
  <entitytype:minecraft:vindicator>,
  <entitytype:minecraft:illusioner>,
  <entitytype:earthmobsmod:bouldering_zombie>,
  <entitytype:minecraft:allay>,
  <entitytype:minecraft:dolphin>,
  <entitytype:minecraft:vex>,
  <entitytype:minecraft:tadpole>,
  <entitytype:minecraft:bat>,
  <entitytype:minecraft:cow>,
  <entitytype:ghastcow:ghast_cow>,
  <entitytype:minecraft:rabbit>,
  <entitytype:minecraft:donkey>,
  <entitytype:minecraft:cod>,
  <entitytype:minecraft:villager>,
  <entitytype:minecraft:horse>,
  <entitytype:minecraft:husk>,
  <entitytype:earthmobsmod:duck>,
  <entitytype:minecraft:iron_golem>,
  <entitytype:minecraft:elder_guardian>,
  <entitytype:minecraft:witch>,
  <entitytype:minecraft:wolf>,
  <entitytype:minecraft:stray>,
  <entitytype:earthmobsmod:furnace_golem>,
  <entitytype:earthmobsmod:lobber_zombie>,
  <entitytype:minecraft:creeper>,
  <entitytype:minecraft:slime>,
  <entitytype:minecraft:turtle>,
  <entitytype:earthmobsmod:wooly_cow>,
  <entitytype:earthmobsmod:cluck_shroom>
);
