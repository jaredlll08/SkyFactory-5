public function getGatewayTreeDropsForColor(color: Color): string[] {
  if (color.getName() == ColorName.Black) {
    return [
      "gateways:normal/enderman",
      "gateways:normal/spider"
    ];
  }

  if (color.getName() == ColorName.Blue) {
    return [
      "gateways:normal/drowned",
      "gateways:normal/squid"
    ];
  }

  if (color.getName() == ColorName.Brown) {
    return ["gateways:normal/cow"];
  }

  if (color.getName() == ColorName.Cyan) {
    return ["gateways:normal/glow_squid"];
  }

  if (color.getName() == ColorName.Gray) {
    return ["gateways:normal/cat"];
  }

  if (color.getName() == ColorName.Green) {
    return [
      "gateways:normal/frog",
      "gateways:normal/zombie"
    ];
  }

  if (color.getName() == ColorName.LightBlue) {
    return ["gateways:normal/allay"];
  }

  if (color.getName() == ColorName.LightGray) {
    return ["gateways:normal/iron_golem"];
  }

  if (color.getName() == ColorName.Lime) {
    return ["gateways:normal/creeper"];
  }

  if (color.getName() == ColorName.Magenta) {
    return [];
  }

  if (color.getName() == ColorName.Orange) {
    return ["gateways:normal/wooly_cow"];
  }

  if (color.getName() == ColorName.Pink) {
    return ["gateways:normal/pig"];
  }

  if (color.getName() == ColorName.Purple) {
    return ["gateways:normal/bone_spider","gateways:normal/shulker"];
  }

  if (color.getName() == ColorName.Red) {
    return ["gateways:normal/cluck_shroom", "gateways:normal/strider"];
  }

  if (color.getName() == ColorName.White) {
    return ["gateways:normal/skeleton", "gateways:normal/goat"];
  }

  if (color.getName() == ColorName.Yellow) {
    return ["gateways:normal/bee"];
  }

  return [];
}

// GENERATOR START
// !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!
public function getGatewaysForColor(color: Color): string[] {
  if color.getName() == ColorName.Black {
    return [
      "gateways:normal/adelie_penguin",
      "gateways:normal/cave_spider",
      "gateways:normal/ender_dragon",
      "gateways:normal/ender_tot",
      "gateways:normal/enderman",
      "gateways:normal/spider",
      "gateways:normal/vein_creeper_black",
      "gateways:normal/wither",
      "gateways:normal/wither_skeleton",
      "gateways:titan/adelie_penguin",
      "gateways:titan/cave_spider",
      "gateways:titan/ender_dragon",
      "gateways:titan/ender_tot",
      "gateways:titan/enderman",
      "gateways:titan/spider",
      "gateways:titan/wither",
      "gateways:titan/wither_skeleton"
    ];
  }
  if color.getName() == ColorName.Blue {
    return [
      "gateways:normal/blue_chu_chu",
      "gateways:normal/drowned",
      "gateways:normal/phantom",
      "gateways:normal/squid",
      "gateways:normal/trader_llama",
      "gateways:normal/vein_creeper_blue",
      "gateways:normal/wandering_trader",
      "gateways:titan/blue_chu_chu",
      "gateways:titan/drowned",
      "gateways:titan/phantom",
      "gateways:titan/squid",
      "gateways:titan/trader_llama",
      "gateways:titan/wandering_trader"
    ];
  }
  if color.getName() == ColorName.Brown {
    return [
      "gateways:normal/bat",
      "gateways:normal/cod",
      "gateways:normal/cow",
      "gateways:normal/donkey",
      "gateways:normal/ghast_cow",
      "gateways:normal/horse",
      "gateways:normal/husk",
      "gateways:normal/luggage",
      "gateways:normal/rabbit",
      "gateways:normal/tadpole",
      "gateways:normal/vein_creeper_brown",
      "gateways:normal/villager",
      "gateways:titan/bat",
      "gateways:titan/cod",
      "gateways:titan/cow",
      "gateways:titan/donkey",
      "gateways:titan/ghast_cow",
      "gateways:titan/horse",
      "gateways:titan/husk",
      "gateways:titan/luggage",
      "gateways:titan/rabbit",
      "gateways:titan/tadpole",
      "gateways:titan/villager"
    ];
  }
  if color.getName() == ColorName.Cyan {
    return [
      "gateways:normal/ender_luggage",
      "gateways:normal/glow_squid",
      "gateways:normal/vein_creeper_cyan",
      "gateways:normal/warden",
      "gateways:titan/ender_luggage",
      "gateways:titan/glow_squid",
      "gateways:titan/warden"
    ];
  }
  if color.getName() == ColorName.Gray {
    return [
      "gateways:normal/cat",
      "gateways:normal/evoker",
      "gateways:normal/illusioner",
      "gateways:normal/pillager",
      "gateways:normal/ravager",
      "gateways:normal/silverfish",
      "gateways:normal/vein_creeper_gray",
      "gateways:normal/vindicator",
      "gateways:titan/cat",
      "gateways:titan/evoker",
      "gateways:titan/illusioner",
      "gateways:titan/pillager",
      "gateways:titan/ravager",
      "gateways:titan/silverfish",
      "gateways:titan/vindicator"
    ];
  }
  if color.getName() == ColorName.Green {
    return [
      "gateways:normal/frog",
      "gateways:normal/green_chu_chu",
      "gateways:normal/sniffer",
      "gateways:normal/vein_creeper_green",
      "gateways:normal/zombie",
      "gateways:normal/zombie_horse",
      "gateways:normal/zombie_villager",
      "gateways:titan/frog",
      "gateways:titan/green_chu_chu",
      "gateways:titan/sniffer",
      "gateways:titan/zombie",
      "gateways:titan/zombie_horse",
      "gateways:titan/zombie_villager"
    ];
  }
  if color.getName() == ColorName.LightBlue {
    return [
      "gateways:normal/allay",
      "gateways:normal/dolphin",
      "gateways:normal/vein_creeper_light_blue",
      "gateways:normal/vex"
    ];
  }
  if color.getName() == ColorName.LightGray {
    return [
      "gateways:normal/elder_guardian",
      "gateways:normal/iron_golem",
      "gateways:normal/stray",
      "gateways:normal/vein_creeper_light_gray",
      "gateways:normal/witch",
      "gateways:normal/wolf",
      "gateways:titan/allay",
      "gateways:titan/dolphin",
      "gateways:titan/elder_guardian",
      "gateways:titan/iron_golem",
      "gateways:titan/stray",
      "gateways:titan/vex",
      "gateways:titan/witch",
      "gateways:titan/wolf"
    ];
  }
  if color.getName() == ColorName.Lime {
    return [
      "gateways:normal/creeper",
      "gateways:normal/creeper_tot",
      "gateways:normal/slime",
      "gateways:normal/turtle",
      "gateways:normal/vein_creeper_lime",
      "gateways:titan/creeper",
      "gateways:titan/creeper_tot",
      "gateways:titan/slime",
      "gateways:titan/turtle"
    ];
  }
  if color.getName() == ColorName.Magenta {
    return [
      "gateways:normal/vein_creeper_magenta"
    ];
  }
  if color.getName() == ColorName.Orange {
    return [
      "gateways:normal/blaze",
      "gateways:normal/fox",
      "gateways:normal/lava_monster",
      "gateways:normal/magma_cube",
      "gateways:normal/pufferfish",
      "gateways:normal/tropical_fish",
      "gateways:normal/vein_creeper_orange",
      "gateways:normal/wooly_cow",
      "gateways:titan/blaze",
      "gateways:titan/fox",
      "gateways:titan/lava_monster",
      "gateways:titan/magma_cube",
      "gateways:titan/pufferfish",
      "gateways:titan/tropical_fish",
      "gateways:titan/wooly_cow"
    ];
  }
  if color.getName() == ColorName.Pink {
    return [
      "gateways:normal/axolotl",
      "gateways:normal/hoglin",
      "gateways:normal/pig",
      "gateways:normal/piglin",
      "gateways:normal/piglin_brute",
      "gateways:normal/vein_creeper_pink",
      "gateways:normal/zoglin",
      "gateways:normal/zombified_piglin",
      "gateways:titan/axolotl",
      "gateways:titan/hoglin",
      "gateways:titan/pig",
      "gateways:titan/piglin",
      "gateways:titan/piglin_brute",
      "gateways:titan/zoglin",
      "gateways:titan/zombified_piglin"
    ];
  }
  if color.getName() == ColorName.Purple {
    return [
      "gateways:normal/bone_spider",
      "gateways:normal/endermite",
      "gateways:normal/shulker",
      "gateways:normal/vein_creeper_purple",
      "gateways:titan/bone_spider",
      "gateways:titan/endermite",
      "gateways:titan/shulker"
    ];
  }
  if color.getName() == ColorName.Red {
    return [
      "gateways:normal/cluck_shroom",
      "gateways:normal/mooshroom",
      "gateways:normal/parrot",
      "gateways:normal/red_chu_chu",
      "gateways:normal/salmon",
      "gateways:normal/strider",
      "gateways:normal/vein_creeper_red",
      "gateways:titan/cluck_shroom",
      "gateways:titan/mooshroom",
      "gateways:titan/parrot",
      "gateways:titan/red_chu_chu",
      "gateways:titan/salmon",
      "gateways:titan/strider"
    ];
  }
  if color.getName() == ColorName.White {
    return [
      "gateways:normal/chicken",
      "gateways:normal/energetic_sheep",
      "gateways:normal/ghast",
      "gateways:normal/goat",
      "gateways:normal/panda",
      "gateways:normal/polar_bear",
      "gateways:normal/sheep",
      "gateways:normal/skeleton",
      "gateways:normal/skeleton_horse",
      "gateways:normal/snow_golem",
      "gateways:normal/vein_creeper_white",
      "gateways:titan/chicken",
      "gateways:titan/energetic_sheep",
      "gateways:titan/ghast",
      "gateways:titan/goat",
      "gateways:titan/panda",
      "gateways:titan/polar_bear",
      "gateways:titan/sheep",
      "gateways:titan/skeleton",
      "gateways:titan/skeleton_horse",
      "gateways:titan/snow_golem"
    ];
  }
  if color.getName() == ColorName.Yellow {
    return [
      "gateways:normal/bee",
      "gateways:normal/camel",
      "gateways:normal/gold_chu_chu",
      "gateways:normal/ocelot",
      "gateways:normal/vein_creeper_yellow",
      "gateways:titan/bee",
      "gateways:titan/camel",
      "gateways:titan/gold_chu_chu",
      "gateways:titan/ocelot"
    ];
  }

  return [];
}
// GENERATOR END
