public enum Stage {
  Colorless = "colorless",

  Red = "red",
  Green = "green",
  Lime = "lime",
  Blue = "blue",
  Light_Blue = "lightblue",
  // LightBlue = "light_blue",
  Gray = "gray",
  Light_Gray = "lightgray",
  // LightGray = "lightgray",
  Yellow = "yellow",
  Purple = "purple",
  Magenta = "magenta",
  Pink = "pink",
  White = "white",
  Black = "black",
  Brown = "brown",
  Cyan = "cyan",
  Orange = "orange";
}

public function getStageForColor(color as Color) as Stage? {
  if color.getName() == ColorName.None {
    return Stage.Colorless;
  }

  if color.getName() == ColorName.Red {
    return Stage.Red;
  }

  if color.getName() == ColorName.Green {
    return Stage.Green;
  }

  if color.getName() == ColorName.Lime {
    return Stage.Lime;
  }

  if color.getName() == ColorName.Blue {
    return Stage.Blue;
  }

  if color.getName() == ColorName.LightBlue {
    return Stage.Light_Blue;
  }

  if color.getName() == ColorName.Gray {
    return Stage.Gray;
  }

  if color.getName() == ColorName.LightGray {
    return Stage.Light_Gray;
  }

  if color.getName() == ColorName.Yellow {
    return Stage.Yellow;
  }

  if color.getName() == ColorName.Purple {
    return Stage.Purple;
  }

  if color.getName() == ColorName.Magenta {
    return Stage.Magenta;
  }

  if color.getName() == ColorName.Pink {
    return Stage.Pink;
  }

  if color.getName() == ColorName.White {
    return Stage.White;
  }

  if color.getName() == ColorName.Black {
    return Stage.Black;
  }

  if color.getName() == ColorName.Brown {
    return Stage.Brown;
  }

  if color.getName() == ColorName.Cyan {
    return Stage.Cyan;
  }

  if color.getName() == ColorName.Orange {
    return Stage.Orange;
  }


  return null;
}

public enum MobStage {
  // MobStage GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  ALLAY = "allay",
  AXOLOTL = "axolotl",
  BAT = "bat",
  BEE = "bee",
  BLACK_VEIN_CREEPER = "black_vein_creeper",
  BLAZE = "blaze",
  BLUE_CHU_CHU = "blue_chu_chu",
  BLUE_VEIN_CREEPER = "blue_vein_creeper",
  BONE_SPIDER = "bone_spider",
  BROWN_VEIN_CREEPER = "brown_vein_creeper",
  CAMEL = "camel",
  CAT = "cat",
  CAVE_SPIDER = "cave_spider",
  CHICKEN = "chicken",
  CLUCK_SHROOM = "cluck_shroom",
  COD = "cod",
  COW = "cow",
  CREEPER = "creeper",
  CREEPER_TOT = "creeper_tot",
  CYAN_VEIN_CREEPER = "cyan_vein_creeper",
  DOLPHIN = "dolphin",
  DONKEY = "donkey",
  DROWNED = "drowned",
  ENDER_LUGGAGE = "ender_luggage",
  ENDER_TOT = "ender_tot",
  ENDERMAN = "enderman",
  ENDERMITE = "endermite",
  ENERGETIC_SHEEP = "energetic_sheep",
  EVOKER = "evoker",
  FOX = "fox",
  FROG = "frog",
  GHAST = "ghast",
  GLOW_SQUID = "glow_squid",
  GOLD_CHU_CHU = "gold_chu_chu",
  GRAY_VEIN_CREEPER = "gray_vein_creeper",
  GREEN_CHU_CHU = "green_chu_chu",
  GREEN_VEIN_CREEPER = "green_vein_creeper",
  HOGLIN = "hoglin",
  HORSE = "horse",
  HUSK = "husk",
  ILLUSIONER = "illusioner",
  IRON_GOLEM = "iron_golem",
  LAVA_MONSTER = "lava_monster",
  LIGHT_BLUE_VEIN_CREEPER = "light_blue_vein_creeper",
  LIGHT_GRAY_VEIN_CREEPER = "light_gray_vein_creeper",
  LIME_VEIN_CREEPER = "lime_vein_creeper",
  LUGGAGE = "luggage",
  MAGENTA_VEIN_CREEPER = "magenta_vein_creeper",
  MAGMA_CUBE = "magma_cube",
  MOOSHROOM = "mooshroom",
  OCELOT = "ocelot",
  ORANGE_VEIN_CREEPER = "orange_vein_creeper",
  PANDA = "panda",
  PARROT = "parrot",
  PHANTOM = "phantom",
  PIG = "pig",
  PIGLIN = "piglin",
  PIGLIN_BRUTE = "piglin_brute",
  PILLAGER = "pillager",
  PINK_VEIN_CREEPER = "pink_vein_creeper",
  POLAR_BEAR = "polar_bear",
  PUFFERFISH = "pufferfish",
  PURPLE_VEIN_CREEPER = "purple_vein_creeper",
  RABBIT = "rabbit",
  RAVAGER = "ravager",
  RED_CHU_CHU = "red_chu_chu",
  RED_VEIN_CREEPER = "red_vein_creeper",
  SALMON = "salmon",
  SHEEP = "sheep",
  SHULKER = "shulker",
  SILVERFISH = "silverfish",
  SKELETON = "skeleton",
  SKELETON_HORSE = "skeleton_horse",
  SLIME = "slime",
  SNIFFER = "sniffer",
  SNOW_GOLEM = "snow_golem",
  SPIDER = "spider",
  SQUID = "squid",
  STRAY = "stray",
  STRIDER = "strider",
  TADPOLE = "tadpole",
  TRADER_LLAMA = "trader_llama",
  TROPICAL_FISH = "tropical_fish",
  TURTLE = "turtle",
  VEX = "vex",
  VILLAGER = "villager",
  VINDICATOR = "vindicator",
  WANDERING_TRADER = "wandering_trader",
  WARDEN = "warden",
  WHITE_VEIN_CREEPER = "white_vein_creeper",
  WITCH = "witch",
  WITHER = "wither",
  WITHER_SKELETON = "wither_skeleton",
  WOLF = "wolf",
  WOOLY_COW = "wooly_cow",
  YELLOW_VEIN_CREEPER = "yellow_vein_creeper",
  ZOGLIN = "zoglin",
  ZOMBIE = "zombie",
  ZOMBIE_HORSE = "zombie_horse",
  ZOMBIE_VILLAGER = "zombie_villager",
  ZOMBIFIED_PIGLIN = "zombified_piglin"

  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!
  // MobStage GENERATOR END
}
