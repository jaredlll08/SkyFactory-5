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
  Allay = "allay",
  Axolotl = "axolotl",
  Bat = "bat",
  Bee = "bee",
  Blaze = "blaze",
  Camel = "camel",
  Cat = "cat",
  CaveSpider = "cave_spider",
  Chicken = "chicken",
  Cod = "cod",
  Cow = "cow",
  Creeper = "creeper",
  Dolphin = "dolphin",
  Donkey = "donkey",
  Drowned = "drowned",
  Enderman = "enderman",
  Endermite = "endermite",
  EnergeticSheep = "energetic_sheep",
  Evoker = "evoker",
  Fox = "fox",
  Frog = "frog",
  Ghast = "ghast",
  GlowSquid = "glow_squid",
  Goat = "goat",
  // GoblinTrader = "goblin_trader",
  Guardian = "guardian",
  Hoglin = "hoglin",
  Horse = "horse",
  Husk = "husk",
  Illusioner = "illusioner",
  IronGolem = "iron_golem",
  Llama = "llama",
  MagmaCube = "magma_cube",
  Mooshroom = "mooshroom",
  Ocelot = "ocelot",
  Panda = "panda",
  Parrot = "parrot",
  Phantom = "phantom",
  Pig = "pig",
  Piglin = "piglin",
  PiglinBrute = "piglin_brute",
  Pillager = "pillager",
  PolarBear = "polar_bear",
  Pufferfish = "pufferfish",
  Rabbit = "rabbit",
  Ravager = "ravager",
  Salmon = "salmon",
  Sheep = "sheep",
  Shulker = "shulker",
  Silverfish = "silverfish",
  Skeleton = "skeleton",
  SkeletonHorse = "skeleton_horse",
  Slime = "slime",
  Sniffer = "sniffer",
  SnowGolem = "snow_golem",
  Spider = "spider",
  Squid = "squid",
  Stray = "stray",
  Strider = "strider",
  Tadpole = "tadpole",
  TropicalFish = "tropical_fish",
  Turtle = "turtle",
  Vex = "vex",
  Villager = "villager",
  Vindicator = "vindicator",
  WanderingTrader = "wandering_trader",
  TraderLlama = "trader_llama",
  Warden = "warden",
  Witch = "witch",
  Wither = "wither",
  WitherSkeleton = "wither_skeleton",
  Wolf = "wolf",
  Zoglin = "zoglin",
  Zombie = "zombie",
  ZombieHorse = "zombie_horse",
  ZombieVillager = "zombie_villager",
  ZombifiedPiglin = "zombified_piglin",

  // Earth Mobs
  Albino_Cow = "albino_cow",
  JollyLlama = "jolly_llama",
  SkeletonWolf = "skeleton_wolf",
  MelonGolem = "melon_golem",
  WoolyCow = "wooly_cow",
  HyperRabbit = "hyper_rabbit",
  MagmaCow = "magma_cow",
  Moobloom = "moobloom",
  CreamCow = "cream_cow",
  BabyGhast = "baby_ghast",
  ZombifiedPig = "zombified_pig",
  JumboRabbit = "jumbo_rabbit",
  Moolip = "moolip",
  TeacupPig = "teacup_pig",
  BoulderingZombie = "bouldering_zombie",
  FurnaceGolem = "furnace_golem",
  LobberZombie = "lobber_zombie",
  TropicalSlime = "tropical_slime",
  StrayBoneSpider = "stray_bone_spider",
  FancyChicken = "fancy_chicken",
  BoneSpider = "bone_spider",
  LobberDrowned = "lobber_drowned",
  BoulderingDrowned = "bouldering_drowned",
  VilerWitch = "viler_witch",
  Duck = "duck",
  CluckShroom = "cluck_shroom",
  WitherSkeletonWolf = "wither_skeleton_wolf",
  UmbraCow = "umbra_cow",

  // Vein Creepers
  MagentaVeinCreeper = "magenta_vein_creeper",
  PinkVeinCreeper = "pink_vein_creeper",
  YellowVeinCreeper = "yellow_vein_creeper",
  CyanVeinCreeper = "cyan_vein_creeper",
  RedVeinCreeper = "red_vein_creeper",
  GrayVeinCreeper = "gray_vein_creeper",
  WhiteVeinCreeper = "white_vein_creeper",
  GreenVeinCreeper = "green_vein_creeper",
  LightGrayVeinCreeper = "light_gray_vein_creeper",
  LimeVeinCreeper = "lime_vein_creeper",
  BlackVeinCreeper = "black_vein_creeper",
  LightBlueVeinCreeper = "light_blue_vein_creeper",
  BrownVeinCreeper = "brown_vein_creeper",
  OrangeVeinCreeper = "orange_vein_creeper",
  BlueVeinCreeper = "blue_vein_creeper",
  PurpleVeinCreeper = "purple_vein_creeper",

  // Lava Monsters
  LavaMonster = "lava_monster",

  // ForceCraft
  BlueChuChu = "forcecraft:blue_chu_chu",
  ColdChicken = "forcecraft:cold_chicken",
  ColdCow = "forcecraft:cold_cow",
  ColdPig = "forcecraft:cold_pig",
  CreeperTot = "forcecraft:creeper_tot",
  EnderTot = "forcecraft:ender_tot",
  // Fairy = "forcecraft:fairy",
  GoldChuChu = "forcecraft:gold_chu_chu",
  GreenChuChu = "forcecraft:green_chu_chu",
  RedChuChu = "forcecraft:red_chu_chu",

  // Luggage
  Luggage = "luggage:luggage",
  EnderLuggage = "luggage:ender_luggage",


  // Monster Plus
  GlowSkeleton = "monsterplus:glow_skeleton",
  SpectralSkeleton = "monsterplus:spectral_skeleton",
  OpalescentEye = "monsterplus:opalescent_eye",
  Abyssologer = "monsterplus:abyssologer",
  SwampZombie = "monsterplus:swamp_zombie",
  CrystalZombie = "monsterplus:crystal_zombie",
  MotherLavaSquid = "monsterplus:mother_lava_squid",
  LavaSquid = "monsterplus:lava_squid",
  OvergrownSkeleton = "monsterplus:overgrown_skeleton>",

  // Let's do Vinery
  Mule = "vinery:mule",
  WanderingWinemaker = "vinery:wandering_winemaker"
}
