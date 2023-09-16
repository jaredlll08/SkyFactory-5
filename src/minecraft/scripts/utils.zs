import crafttweaker.api.util.math.RandomSource;

public function rollsChance(random as RandomSource, percent as int) as bool {
  return random.nextIntBetweenInclusive(0, 99) < percent;
}
