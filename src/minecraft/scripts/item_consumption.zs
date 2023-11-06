import crafttweaker.api.entity.type.player.Player;

events.register<crafttweaker.forge.api.event.entity.use.LivingEntityUseItemFinishEvent>(event => {
  val entity = event.entity;
  val level = entity.level;

  if level.isClientSide || !(entity is Player) {
    return;
  }

  val player = entity as Player;

  if <item:minecraft:potion>.withTag({Potion: "minecraft:water"}).matches(event.item) {
    player.give(<item:minecraft:blue_dye>);
  }
});
