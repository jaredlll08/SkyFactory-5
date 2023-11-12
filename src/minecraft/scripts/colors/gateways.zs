public function getGatewayTreeDropsForColor(color: Color): string[] {
  if (color.getName() == ColorName.Black) {
    return [
      "gateways:enderman",
      "gateways:spider"
    ];
  }

  if (color.getName() == ColorName.Blue) {
    return [
      "gateways:drowned",
      "gateways:squid"
    ];
  }

  if (color.getName() == ColorName.Brown) {
    return ["gateways:cow"];
  }

  if (color.getName() == ColorName.Cyan) {
    return ["gateways:glow_squid"];
  }

  if (color.getName() == ColorName.Gray) {
    return ["gateways:cat"];
  }

  if (color.getName() == ColorName.Green) {
    return [
      "gateways:frog",
      "gateways:zombie"
    ];
  }

  if (color.getName() == ColorName.LightBlue) {
    return ["gateways:allay"];
  }

  if (color.getName() == ColorName.LightGray) {
    return ["gateways:iron_golem"];
  }

  if (color.getName() == ColorName.Lime) {
    return ["gateways:creeper"];
  }

  if (color.getName() == ColorName.Magenta) {
    return [];
  }

  if (color.getName() == ColorName.Orange) {
    return ["gateways:wooly_cow"];
  }

  if (color.getName() == ColorName.Pink) {
    return ["gateways:pig"];
  }

  if (color.getName() == ColorName.Purple) {
    return ["gateways:bone_spider","gateways:shulker"];
  }

  if (color.getName() == ColorName.Red) {
    return ["gateways:cluck_shroom", "gateways:strider"];
  }

  if (color.getName() == ColorName.White) {
    return ["gateways:skeleton", "gateways:goat"];
  }

  if (color.getName() == ColorName.Yellow) {
    return ["gateways:bee"];
  }

  return [];
}

// GENERATOR START
// !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!
public function getGatewaysForColor(color: Color): string[] {
  if color.getName() == ColorName.Black {
    return [
      "gateways:adelie_penguin",
      "gateways:cave_spider",
      "gateways:ender_dragon",
      "gateways:ender_tot",
      "gateways:enderman",
      "gateways:frog_kill_adelie_penguin",
      "gateways:frog_kill_cave_spider",
      "gateways:frog_kill_ender_dragon",
      "gateways:frog_kill_ender_tot",
      "gateways:frog_kill_enderman",
      "gateways:frog_kill_spider",
      "gateways:frog_kill_wither",
      "gateways:frog_kill_wither_skeleton",
      "gateways:spider",
      "gateways:vein_creeper_black",
      "gateways:wither",
      "gateways:wither_skeleton"
    ];
  }
  if color.getName() == ColorName.Blue {
    return [
      "gateways:blue_chu_chu",
      "gateways:drowned",
      "gateways:frog_kill_blue_chu_chu",
      "gateways:frog_kill_drowned",
      "gateways:frog_kill_phantom",
      "gateways:frog_kill_squid",
      "gateways:frog_kill_trader_llama",
      "gateways:frog_kill_wandering_trader",
      "gateways:phantom",
      "gateways:squid",
      "gateways:trader_llama",
      "gateways:vein_creeper_blue",
      "gateways:wandering_trader"
    ];
  }
  if color.getName() == ColorName.Brown {
    return [
      "gateways:bat",
      "gateways:cod",
      "gateways:cow",
      "gateways:donkey",
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
      "gateways:ghast_cow",
      "gateways:horse",
      "gateways:husk",
      "gateways:luggage",
      "gateways:rabbit",
      "gateways:tadpole",
      "gateways:vein_creeper_brown",
      "gateways:villager"
    ];
  }
  if color.getName() == ColorName.Cyan {
    return [
      "gateways:ender_luggage",
      "gateways:frog_kill_ender_luggage",
      "gateways:frog_kill_glow_squid",
      "gateways:frog_kill_warden",
      "gateways:glow_squid",
      "gateways:vein_creeper_cyan",
      "gateways:warden"
    ];
  }
  if color.getName() == ColorName.Gray {
    return [
      "gateways:cat",
      "gateways:evoker",
      "gateways:frog_kill_cat",
      "gateways:frog_kill_evoker",
      "gateways:frog_kill_illusioner",
      "gateways:frog_kill_pillager",
      "gateways:frog_kill_ravager",
      "gateways:frog_kill_silverfish",
      "gateways:frog_kill_vindicator",
      "gateways:illusioner",
      "gateways:pillager",
      "gateways:ravager",
      "gateways:silverfish",
      "gateways:vein_creeper_gray",
      "gateways:vindicator"
    ];
  }
  if color.getName() == ColorName.Green {
    return [
      "gateways:frog",
      "gateways:frog_kill_frog",
      "gateways:frog_kill_green_chu_chu",
      "gateways:frog_kill_sniffer",
      "gateways:frog_kill_zombie",
      "gateways:frog_kill_zombie_horse",
      "gateways:frog_kill_zombie_villager",
      "gateways:green_chu_chu",
      "gateways:sniffer",
      "gateways:vein_creeper_green",
      "gateways:zombie",
      "gateways:zombie_horse",
      "gateways:zombie_villager"
    ];
  }
  if color.getName() == ColorName.LightBlue {
    return [
      "gateways:allay",
      "gateways:dolphin",
      "gateways:vein_creeper_light_blue",
      "gateways:vex"
    ];
  }
  if color.getName() == ColorName.LightGray {
    return [
      "gateways:elder_guardian",
      "gateways:frog_kill_allay",
      "gateways:frog_kill_dolphin",
      "gateways:frog_kill_elder_guardian",
      "gateways:frog_kill_iron_golem",
      "gateways:frog_kill_stray",
      "gateways:frog_kill_vex",
      "gateways:frog_kill_witch",
      "gateways:frog_kill_wolf",
      "gateways:iron_golem",
      "gateways:stray",
      "gateways:vein_creeper_light_gray",
      "gateways:witch",
      "gateways:wolf"
    ];
  }
  if color.getName() == ColorName.Lime {
    return [
      "gateways:creeper",
      "gateways:creeper_tot",
      "gateways:frog_kill_creeer_tot",
      "gateways:frog_kill_creeper",
      "gateways:frog_kill_slime",
      "gateways:frog_kill_turtle",
      "gateways:slime",
      "gateways:turtle",
      "gateways:vein_creeper_lime"
    ];
  }
  if color.getName() == ColorName.Magenta {
    return [
      "gateways:vein_creeper_magenta"
    ];
  }
  if color.getName() == ColorName.Orange {
    return [
      "gateways:blaze",
      "gateways:fox",
      "gateways:frog_kill_blaze",
      "gateways:frog_kill_fox",
      "gateways:frog_kill_lava_monster",
      "gateways:frog_kill_magma_cube",
      "gateways:frog_kill_pufferfish",
      "gateways:frog_kill_tropical_fish",
      "gateways:frog_kill_wooly_cow",
      "gateways:lava_monster",
      "gateways:magma_cube",
      "gateways:pufferfish",
      "gateways:tropical_fish",
      "gateways:vein_creeper_orange",
      "gateways:wooly_cow"
    ];
  }
  if color.getName() == ColorName.Pink {
    return [
      "gateways:axolotl",
      "gateways:frog_kill_axolotl",
      "gateways:frog_kill_hoglin",
      "gateways:frog_kill_pig",
      "gateways:frog_kill_piglin",
      "gateways:frog_kill_piglin_brute",
      "gateways:frog_kill_zoglin",
      "gateways:frog_kill_zombified_piglin",
      "gateways:hoglin",
      "gateways:pig",
      "gateways:piglin",
      "gateways:piglin_brute",
      "gateways:vein_creeper_pink",
      "gateways:zoglin",
      "gateways:zombified_piglin"
    ];
  }
  if color.getName() == ColorName.Purple {
    return [
      "gateways:bone_spider",
      "gateways:endermite",
      "gateways:frog_kill_bone_spider",
      "gateways:frog_kill_endermite",
      "gateways:frog_kill_shulker",
      "gateways:shulker",
      "gateways:vein_creeper_purple"
    ];
  }
  if color.getName() == ColorName.Red {
    return [
      "gateways:cluck_shroom",
      "gateways:frog_kill_cluck_shroom",
      "gateways:frog_kill_mooshroom",
      "gateways:frog_kill_parrot",
      "gateways:frog_kill_red_chu_chu",
      "gateways:frog_kill_salmon",
      "gateways:frog_kill_strider",
      "gateways:mooshroom",
      "gateways:parrot",
      "gateways:red_chu_chu",
      "gateways:salmon",
      "gateways:strider",
      "gateways:vein_creeper_red"
    ];
  }
  if color.getName() == ColorName.White {
    return [
      "gateways:chicken",
      "gateways:energetic_sheep",
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
      "gateways:ghast",
      "gateways:goat",
      "gateways:panda",
      "gateways:polar_bear",
      "gateways:sheep",
      "gateways:skeleton",
      "gateways:skeleton_horse",
      "gateways:snow_golem",
      "gateways:vein_creeper_white"
    ];
  }
  if color.getName() == ColorName.Yellow {
    return [
      "gateways:bee",
      "gateways:camel",
      "gateways:frog_kill_bee",
      "gateways:frog_kill_camel",
      "gateways:frog_kill_gold_chu_chu",
      "gateways:frog_kill_ocelot",
      "gateways:gold_chu_chu",
      "gateways:ocelot",
      "gateways:vein_creeper_yellow"
    ];
  }

  return [];
}
// GENERATOR END
