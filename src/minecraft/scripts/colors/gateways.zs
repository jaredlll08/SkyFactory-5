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
      "gateways:frog_kill_adelie_penguin",
      "gateways:frog_kill_cave_spider",
      "gateways:frog_kill_ender_dragon",
      "gateways:frog_kill_ender_tot",
      "gateways:frog_kill_enderman",
      "gateways:frog_kill_spider",
      "gateways:frog_kill_wither",
      "gateways:frog_kill_wither_skeleton",
      "gateways:normal/spider",
      "gateways:normal/vein_creeper_black",
      "gateways:normal/wither",
      "gateways:normal/wither_skeleton"
    ];
  }
  if color.getName() == ColorName.Blue {
    return [
      "gateways:normal/blue_chu_chu",
      "gateways:normal/drowned",
      "gateways:frog_kill_blue_chu_chu",
      "gateways:frog_kill_drowned",
      "gateways:frog_kill_phantom",
      "gateways:frog_kill_squid",
      "gateways:frog_kill_trader_llama",
      "gateways:frog_kill_wandering_trader",
      "gateways:normal/phantom",
      "gateways:normal/squid",
      "gateways:normal/trader_llama",
      "gateways:normal/vein_creeper_blue",
      "gateways:normal/wandering_trader"
    ];
  }
  if color.getName() == ColorName.Brown {
    return [
      "gateways:normal/bat",
      "gateways:normal/cod",
      "gateways:normal/cow",
      "gateways:normal/donkey",
      "gateways:frog_kill_bat",
      "gateways:frog_kill_cod",
      "gateways:frog_kill_cow",
      "gateways:frog_kill_donkey",
      "gateways:frog_kill_ghast_cow",
      "gateways:frog_kill_horse",
      "gateways:frog_kill_husk",
      "gateways:frog_kill_luggage",
      "gateways:frog_kill_rabbit",
      "gateways:frog_kill_tadpole",
      "gateways:frog_kill_villager",
      "gateways:normal/ghast_cow",
      "gateways:normal/horse",
      "gateways:normal/husk",
      "gateways:normal/luggage",
      "gateways:normal/rabbit",
      "gateways:normal/tadpole",
      "gateways:normal/vein_creeper_brown",
      "gateways:normal/villager"
    ];
  }
  if color.getName() == ColorName.Cyan {
    return [
      "gateways:normal/ender_luggage",
      "gateways:frog_kill_ender_luggage",
      "gateways:frog_kill_glow_squid",
      "gateways:frog_kill_warden",
      "gateways:normal/glow_squid",
      "gateways:normal/vein_creeper_cyan",
      "gateways:normal/warden"
    ];
  }
  if color.getName() == ColorName.Gray {
    return [
      "gateways:normal/cat",
      "gateways:normal/evoker",
      "gateways:frog_kill_cat",
      "gateways:frog_kill_evoker",
      "gateways:frog_kill_illusioner",
      "gateways:frog_kill_pillager",
      "gateways:frog_kill_ravager",
      "gateways:frog_kill_silverfish",
      "gateways:frog_kill_vindicator",
      "gateways:normal/illusioner",
      "gateways:normal/pillager",
      "gateways:normal/ravager",
      "gateways:normal/silverfish",
      "gateways:normal/vein_creeper_gray",
      "gateways:normal/vindicator"
    ];
  }
  if color.getName() == ColorName.Green {
    return [
      "gateways:normal/frog",
      "gateways:frog_kill_frog",
      "gateways:frog_kill_green_chu_chu",
      "gateways:frog_kill_sniffer",
      "gateways:frog_kill_zombie",
      "gateways:frog_kill_zombie_horse",
      "gateways:frog_kill_zombie_villager",
      "gateways:normal/green_chu_chu",
      "gateways:normal/sniffer",
      "gateways:normal/vein_creeper_green",
      "gateways:normal/zombie",
      "gateways:normal/zombie_horse",
      "gateways:normal/zombie_villager"
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
      "gateways:frog_kill_allay",
      "gateways:frog_kill_dolphin",
      "gateways:frog_kill_elder_guardian",
      "gateways:frog_kill_iron_golem",
      "gateways:frog_kill_stray",
      "gateways:frog_kill_vex",
      "gateways:frog_kill_witch",
      "gateways:frog_kill_wolf",
      "gateways:normal/iron_golem",
      "gateways:normal/stray",
      "gateways:normal/vein_creeper_light_gray",
      "gateways:normal/witch",
      "gateways:normal/wolf"
    ];
  }
  if color.getName() == ColorName.Lime {
    return [
      "gateways:normal/creeper",
      "gateways:normal/creeper_tot",
      "gateways:frog_kill_creeer_tot",
      "gateways:frog_kill_creeper",
      "gateways:frog_kill_slime",
      "gateways:frog_kill_turtle",
      "gateways:normal/slime",
      "gateways:normal/turtle",
      "gateways:normal/vein_creeper_lime"
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
      "gateways:frog_kill_blaze",
      "gateways:frog_kill_fox",
      "gateways:frog_kill_lava_monster",
      "gateways:frog_kill_magma_cube",
      "gateways:frog_kill_pufferfish",
      "gateways:frog_kill_tropical_fish",
      "gateways:frog_kill_wooly_cow",
      "gateways:normal/lava_monster",
      "gateways:normal/magma_cube",
      "gateways:normal/pufferfish",
      "gateways:normal/tropical_fish",
      "gateways:normal/vein_creeper_orange",
      "gateways:normal/wooly_cow"
    ];
  }
  if color.getName() == ColorName.Pink {
    return [
      "gateways:normal/axolotl",
      "gateways:frog_kill_axolotl",
      "gateways:frog_kill_hoglin",
      "gateways:frog_kill_pig",
      "gateways:frog_kill_piglin",
      "gateways:frog_kill_piglin_brute",
      "gateways:frog_kill_zoglin",
      "gateways:frog_kill_zombified_piglin",
      "gateways:normal/hoglin",
      "gateways:normal/pig",
      "gateways:normal/piglin",
      "gateways:normal/piglin_brute",
      "gateways:normal/vein_creeper_pink",
      "gateways:normal/zoglin",
      "gateways:normal/zombified_piglin"
    ];
  }
  if color.getName() == ColorName.Purple {
    return [
      "gateways:normal/bone_spider",
      "gateways:normal/endermite",
      "gateways:frog_kill_bone_spider",
      "gateways:frog_kill_endermite",
      "gateways:frog_kill_shulker",
      "gateways:normal/shulker",
      "gateways:normal/vein_creeper_purple"
    ];
  }
  if color.getName() == ColorName.Red {
    return [
      "gateways:normal/cluck_shroom",
      "gateways:frog_kill_cluck_shroom",
      "gateways:frog_kill_mooshroom",
      "gateways:frog_kill_parrot",
      "gateways:frog_kill_red_chu_chu",
      "gateways:frog_kill_salmon",
      "gateways:frog_kill_strider",
      "gateways:normal/mooshroom",
      "gateways:normal/parrot",
      "gateways:normal/red_chu_chu",
      "gateways:normal/salmon",
      "gateways:normal/strider",
      "gateways:normal/vein_creeper_red"
    ];
  }
  if color.getName() == ColorName.White {
    return [
      "gateways:normal/chicken",
      "gateways:normal/energetic_sheep",
      "gateways:frog_kill_chicken",
      "gateways:frog_kill_energetic_sheep",
      "gateways:frog_kill_ghast",
      "gateways:frog_kill_goat",
      "gateways:frog_kill_panda",
      "gateways:frog_kill_polar_bear",
      "gateways:frog_kill_sheep",
      "gateways:frog_kill_skeleton",
      "gateways:frog_kill_skeleton_horse",
      "gateways:frog_kill_snow_golem",
      "gateways:normal/ghast",
      "gateways:normal/goat",
      "gateways:normal/panda",
      "gateways:normal/polar_bear",
      "gateways:normal/sheep",
      "gateways:normal/skeleton",
      "gateways:normal/skeleton_horse",
      "gateways:normal/snow_golem",
      "gateways:normal/vein_creeper_white"
    ];
  }
  if color.getName() == ColorName.Yellow {
    return [
      "gateways:normal/bee",
      "gateways:normal/camel",
      "gateways:frog_kill_bee",
      "gateways:frog_kill_camel",
      "gateways:frog_kill_gold_chu_chu",
      "gateways:frog_kill_ocelot",
      "gateways:normal/gold_chu_chu",
      "gateways:normal/ocelot",
      "gateways:normal/vein_creeper_yellow"
    ];
  }

  return [];
}
// GENERATOR END
