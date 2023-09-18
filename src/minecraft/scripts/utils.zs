import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.loot.LootContext;
import crafttweaker.api.util.math.RandomSource;

public function rollsChance(random: RandomSource, percent: int): bool {
  return random.nextIntBetweenInclusive(0, 99) < percent;
}

public function isRealPlayerLooting(ctx: LootContext): bool {
  if ctx.thisEntity == null {
    return false;
  }

  if !((ctx.thisEntity as Entity) is Player) {
    return false;
  }

  val player: Player = (ctx.thisEntity as Entity) as Player;

  return !player.isFakePlayer;
}
