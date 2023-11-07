import crafttweaker.api.block.entity.BlockEntity;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.text.Component;
import crafttweaker.forge.api.event.interact.RightClickBlockEvent;

public class TrophyMob {
  public val stageName as MobStage : get;
  public val mobDisplayName as string : get;

  public this(stageName: MobStage, mobDisplayName: string) {
    this.stageName = stageName;
    this.mobDisplayName = mobDisplayName;
  }

  public toggleStage(player: Player): bool {
    val newEnabled = !player.hasGameStage(this.stageName);

    this.setStageStateForPlayer(player, newEnabled);

    return newEnabled;
  }

  public setStageStateForPlayers(players: Player[], enabled: bool): void {
    for player in players {
      this.setStageStateForPlayer(player, enabled);
    }
  }

  private setStageStateForPlayer(player: Player, enabled: bool): void {
    // Skip giving stage if player already has it.
    if enabled && player.hasGameStage(this.stageName) {
      return;
    }

    // Skip removing stage if player already doesn't have it.
    if !enabled && !player.hasGameStage(this.stageName) {
      return;
    }

    if enabled {
      player.addGameStage(this.stageName);
      player.sendMessage(Component.literal(this.mobDisplayName + " will now spawn!").withStyle(style => style.withColor(<constant:minecraft:formatting:green>)));
    } else {
      player.removeGameStage(this.stageName);
      player.sendMessage(Component.literal(this.mobDisplayName + " will no longer spawn!").withStyle(style => style.withColor(<constant:minecraft:formatting:red>)));
    }
  }
}

val mobs: TrophyMob[string] = {
  // Hostile Entities
  "minecraft:blaze": new TrophyMob(MobStage.Blaze, "Blazes"),
  "minecraft:cave_spider": new TrophyMob(MobStage.CaveSpider, "Cave Spiders"),
  "minecraft:creeper": new TrophyMob(MobStage.Creeper, "Creepers"),
  "minecraft:drowned": new TrophyMob(MobStage.Drowned, "Drowned"),
  "minecraft:enderman": new TrophyMob(MobStage.Enderman, "Endermen"),
  "minecraft:endermite": new TrophyMob(MobStage.Endermite, "Endermites"),
  "minecraft:evoker": new TrophyMob(MobStage.Evoker, "Evokers"),
  "minecraft:ghast": new TrophyMob(MobStage.Ghast, "Ghasts"),
  "minecraft:guardian": new TrophyMob(MobStage.Guardian, "Guardians"),
  "minecraft:hoglin": new TrophyMob(MobStage.Hoglin, "Hoglins"),
  "minecraft:husk": new TrophyMob(MobStage.Husk, "Husks"),
  "minecraft:illusioner": new TrophyMob(MobStage.Illusioner, "Illusioners"),
  "minecraft:magma_cube": new TrophyMob(MobStage.MagmaCube, "Magma Cubes"),
  "minecraft:phantom": new TrophyMob(MobStage.Phantom, "Phantoms"),
  "minecraft:piglin": new TrophyMob(MobStage.Piglin, "Piglins"),
  "minecraft:piglin_brute": new TrophyMob(MobStage.PiglinBrute, "Piglin Brutes"),
  "minecraft:pillager": new TrophyMob(MobStage.Pillager, "Pillagers"),
  "minecraft:ravager": new TrophyMob(MobStage.Ravager, "Ravagers"),
  "minecraft:shulker": new TrophyMob(MobStage.Shulker, "Shulkers"),
  "minecraft:silverfish": new TrophyMob(MobStage.Silverfish, "Silverfish"),
  "minecraft:skeleton": new TrophyMob(MobStage.Skeleton, "Skeletons"),
  "minecraft:slime": new TrophyMob(MobStage.Slime, "Slimes"),
  "minecraft:spider": new TrophyMob(MobStage.Spider, "Spiders"),
  "minecraft:stray": new TrophyMob(MobStage.Stray, "Strays"),
  "minecraft:vex": new TrophyMob(MobStage.Vex, "Vexes"),
  "minecraft:vindicator": new TrophyMob(MobStage.Vindicator, "Vindicators"),
  "minecraft:warden": new TrophyMob(MobStage.Warden, "Wardens"),
  "minecraft:witch": new TrophyMob(MobStage.Witch, "Witches"),
  "minecraft:wither": new TrophyMob(MobStage.Wither, "Withers"),
  "minecraft:wither_skeleton": new TrophyMob(MobStage.WitherSkeleton, "Wither Skeletons"),
  "minecraft:zoglin": new TrophyMob(MobStage.Zoglin, "Zoglins"),
  "minecraft:zombie": new TrophyMob(MobStage.Zombie, "Zombies"),
  "minecraft:zombie_villager": new TrophyMob(MobStage.ZombieVillager, "Zombie Villagers"),
  "minecraft:zombified_piglin": new TrophyMob(MobStage.ZombifiedPiglin, "Zombified Piglins"),

  // Passive Breedable Entities
  "minecraft:axolotl": new TrophyMob(MobStage.Axolotl, "Axolotls"),
  "minecraft:bee": new TrophyMob(MobStage.Bee, "Bees"),
  "minecraft:camel": new TrophyMob(MobStage.Camel, "Camels"),
  "minecraft:cat": new TrophyMob(MobStage.Cat, "Cats"),
  "minecraft:chicken": new TrophyMob(MobStage.Chicken, "Chickens"),
  "minecraft:cow": new TrophyMob(MobStage.Cow, "Cows"),
  "minecraft:donkey": new TrophyMob(MobStage.Donkey, "Donkeys"),
  "minecraft:fox": new TrophyMob(MobStage.Fox, "Foxes"),
  "minecraft:frog": new TrophyMob(MobStage.Frog, "Frogs"),
  "minecraft:goat": new TrophyMob(MobStage.Goat, "Goats"),
  "minecraft:horse": new TrophyMob(MobStage.Horse, "Horses"),
  "minecraft:llama": new TrophyMob(MobStage.Llama, "Llamas"),
  "minecraft:mooshroom": new TrophyMob(MobStage.Mooshroom, "Mooshrooms"),
  "minecraft:ocelot": new TrophyMob(MobStage.Ocelot, "Ocelots"),
  "minecraft:panda": new TrophyMob(MobStage.Panda, "Pandas"),
  "minecraft:pig": new TrophyMob(MobStage.Pig, "Pigs"),
  "minecraft:rabbit": new TrophyMob(MobStage.Rabbit, "Rabbits"),
  "minecraft:sheep": new TrophyMob(MobStage.Sheep, "Sheep"),
  "minecraft:sniffer": new TrophyMob(MobStage.Sniffer, "Sniffers"),
  "minecraft:strider": new TrophyMob(MobStage.Strider, "Striders"),
  "minecraft:wolf": new TrophyMob(MobStage.Wolf, "Wolves"),

  // Fishy Entities
  "minecraft:cod": new TrophyMob(MobStage.Cod, "Cod"),
  "minecraft:glow_squid": new TrophyMob(MobStage.GlowSquid, "Glow Squid"),
  "minecraft:pufferfish": new TrophyMob(MobStage.Pufferfish, "Pufferfish"),
  "minecraft:salmon": new TrophyMob(MobStage.Salmon, "Salmon"),
  "minecraft:squid": new TrophyMob(MobStage.Squid, "Squid"),
  "minecraft:tadpole": new TrophyMob(MobStage.Tadpole, "Tadpoles"),
  "minecraft:tropical_fish": new TrophyMob(MobStage.TropicalFish, "Tropical Fish"),
  "minecraft:dolphin": new TrophyMob(MobStage.Dolphin, "Dolphin"),

  // Entities not normally naturally spawned in Forest/in general
  "minecraft:allay": new TrophyMob(MobStage.Allay, "Allays"),
  "minecraft:parrot": new TrophyMob(MobStage.Parrot, "Parrots"),
  "minecraft:polar_bear": new TrophyMob(MobStage.PolarBear, "Polar Bears"),
  "minecraft:skeleton_horse": new TrophyMob(MobStage.SkeletonHorse, "Skeleton Horses"),
  "minecraft:turtle": new TrophyMob(MobStage.Turtle, "Turtles"),
  "minecraft:zombie_horse": new TrophyMob(MobStage.ZombieHorse, "Zombie Horses"),

  // Entities that are annoying
  "minecraft:bat": new TrophyMob(MobStage.Bat, "Bats"),

  // Special Case Entities
  // Villagers and Wandering Trader
  "minecraft:villager": new TrophyMob(MobStage.Villager, "Villagers"),
  "minecraft:wandering_trader": new TrophyMob(MobStage.WanderingTrader, "Wandering Traders"),

  // Golems
  "minecraft:iron_golem": new TrophyMob(MobStage.IronGolem, "Iron Golems"),
  "minecraft:snow_golem": new TrophyMob(MobStage.SnowGolem, "Snow Golems"),

  // Modded Entities
  // Mules have not been added to this list because I don't know
  // if I really need to care or have the desire to add them
  // does anybody really care if I don't add them? Seriously
  // let me know in the comments if you care and don't forget
  // to ring that bell and hit that like button

  "energeticsheep:energetic_sheep": new TrophyMob(MobStage.EnergeticSheep, "Energetic Sheep"),

  // Earth Mobs Mod Entities
  "earthmobsmod:albino_cow": new TrophyMob(MobStage.Albino_Cow, "Albino Cow"),
  "earthmobsmod:jolly_llama": new TrophyMob(MobStage.JollyLlama, "Jolly Llama"),
  "earthmobsmod:skeleton_wolf": new TrophyMob(MobStage.SkeletonWolf, "Skeleton Wolf"),
  "earthmobsmod:melon_golem": new TrophyMob(MobStage.MelonGolem, "Melon Golem"),
  "earthmobsmod:wooly_cow": new TrophyMob(MobStage.WoolyCow, "Wooly Cow"),
  "earthmobsmod:hyper_rabbit": new TrophyMob(MobStage.HyperRabbit, "Hyper Rabbit"),
  "earthmobsmod:magma_cow": new TrophyMob(MobStage.MagmaCow, "Magma Cow"),
  "earthmobsmod:moobloom": new TrophyMob(MobStage.Moobloom, "Moobloom"),
  "earthmobsmod:cream_cow": new TrophyMob(MobStage.CreamCow, "Cream Cow"),
  "earthmobsmod:baby_ghast": new TrophyMob(MobStage.BabyGhast, "Baby Ghast"),
  "earthmobsmod:zombified_pig": new TrophyMob(MobStage.ZombifiedPig, "Zombified Pig"),
  "earthmobsmod:jumbo_rabbit": new TrophyMob(MobStage.JumboRabbit, "Jumbo Rabbit"),
  "earthmobsmod:moolip": new TrophyMob(MobStage.Moolip, "Moolip"),
  "earthmobsmod:teacup_pig": new TrophyMob(MobStage.TeacupPig, "Teacup Pig"),
  "earthmobsmod:bouldering_zombie": new TrophyMob(MobStage.BoulderingZombie, "Bouldering Zombie"),
  "earthmobsmod:furnace_golem": new TrophyMob(MobStage.FurnaceGolem, "Furnace Golem"),
  "earthmobsmod:lobber_zombie": new TrophyMob(MobStage.LobberZombie, "Lobber Zombie"),
  "earthmobsmod:tropical_slime": new TrophyMob(MobStage.TropicalSlime, "Tropical Slime"),
  "earthmobsmod:stray_bone_spider": new TrophyMob(MobStage.StrayBoneSpider, "Stray Bone Spider"),
  "earthmobsmod:fancy_chicken": new TrophyMob(MobStage.FancyChicken, "Fancy Chicken"),
  "earthmobsmod:bone_spider": new TrophyMob(MobStage.BoneSpider, "Bone Spider"),
  "earthmobsmod:lobber_drowned": new TrophyMob(MobStage.LobberDrowned, "Lobber Drowned"),
  "earthmobsmod:bouldering_drowned": new TrophyMob(MobStage.BoulderingDrowned, "Bouldering Drowned"),
  "earthmobsmod:viler_witch": new TrophyMob(MobStage.VilerWitch, "Viler Witch"),
  "earthmobsmod:duck": new TrophyMob(MobStage.Duck, "Duck"),
  "earthmobsmod:cluck_shroom": new TrophyMob(MobStage.CluckShroom, "Cluck Shroom"),
  "earthmobsmod:wither_skeleton_wolf": new TrophyMob(MobStage.WitherSkeletonWolf, "Wither Skeleton Wolf"),
  "earthmobsmod:umbra_cow": new TrophyMob(MobStage.UmbraCow, "Umbra Cow"),

// Vein Creepers
  "veincreeper:black": new TrophyMob(MobStage.BlackVeinCreeper, "Black Vein Creeper"),
  "veincreeper:blue": new TrophyMob(MobStage.BlueVeinCreeper, "Blue Vein Creeper"),
  "veincreeper:brown": new TrophyMob(MobStage.BrownVeinCreeper, "Brown Vein Creeper"),
  "veincreeper:cyan": new TrophyMob(MobStage.CyanVeinCreeper, "Cyan Vein Creeper"),
  "veincreeper:gray": new TrophyMob(MobStage.GrayVeinCreeper, "Gray Vein Creeper"),
  "veincreeper:green": new TrophyMob(MobStage.GreenVeinCreeper, "Green Vein Creeper"),
  "veincreeper:light_blue": new TrophyMob(MobStage.LightBlueVeinCreeper, "Light Blue Vein Creeper"),
  "veincreeper:light_gray": new TrophyMob(MobStage.LightGrayVeinCreeper, "Light Gray Vein Creeper"),
  "veincreeper:lime": new TrophyMob(MobStage.LimeVeinCreeper, "Lime Vein Creeper"),
  "veincreeper:magenta": new TrophyMob(MobStage.MagentaVeinCreeper, "Magenta Vein Creeper"),
  "veincreeper:orange": new TrophyMob(MobStage.OrangeVeinCreeper, "Orange Vein Creeper"),
  "veincreeper:pink": new TrophyMob(MobStage.PinkVeinCreeper, "Pink Vein Creeper"),
  "veincreeper:purple": new TrophyMob(MobStage.PurpleVeinCreeper, "Purple Vein Creeper"),
  "veincreeper:red": new TrophyMob(MobStage.RedVeinCreeper, "Red Vein Creeper"),
  "veincreeper:white": new TrophyMob(MobStage.WhiteVeinCreeper, "White Vein Creeper"),
  "veincreeper:yellow": new TrophyMob(MobStage.YellowVeinCreeper, "Yellow Vein Creeper"),

// Lava Monsters
  "lava_monster:lava_monster": new TrophyMob(MobStage.LavaMonster, "Lava Monster"),

// ForceCraft

"forcecraft:blue_chu_chu": new TrophyMob(MobStage.BlueChuChu, "Blue Chu Chu"),
"forcecraft:cold_chicken": new TrophyMob(MobStage.ColdChicken, "Cold Chicken"),
"forcecraft:cold_cow": new TrophyMob(MobStage.ColdCow, "Cold Cow"),
"forcecraft:cold_pig": new TrophyMob(MobStage.ColdPig, "Cold Pig"),
"forcecraft:creeper_tot": new TrophyMob(MobStage.CreeperTot, "Creeper Tot"),
"forcecraft:ender_tot": new TrophyMob(MobStage.EnderTot, "Ender Tot"),
"forcecraft:fairy": new TrophyMob(MobStage.Fairy, "Fairy"),
"forcecraft:gold_chu_chu": new TrophyMob(MobStage.GoldChuChu, "Gold Chu Chu"),
"forcecraft:green_chu_chu": new TrophyMob(MobStage.GreenChuChu, "Green Chu Chu"),
"forcecraft:red_chu_chu": new TrophyMob(MobStage.RedChuChu, "Red Chu Chu"),

// Luggage
"luggage:luggage": new TrophyMob(MobStage.Luggage, "Luggage"),
"luggage:ender_luggage": new TrophyMob(MobStage.EnderLuggage, "Ender Luggage")

};

val playerRadius = 64;

events.register<RightClickBlockEvent>(event => {
  val player = event.entity;
  val level = player.level;
  val pos = event.blockPos;

  if level.isClientSide {
    // Do nothing on the client
    return;
  }

  if level.getBlockState(pos).block == <block:obtrophies:trophy> {
    val blockEntity = level.getBlockEntity(pos);

    if blockEntity != null {
      val data = blockEntity.data;
      val type = data["entity"].getAsString();

      if type in mobs {
        val trophyMob = mobs[type];
        val newEnabledState = trophyMob.toggleStage(player);

        val entities = level.getEntitiesInArea<Player>(
          pos.north(playerRadius).east(playerRadius).above(playerRadius),
          pos.south(playerRadius).west(playerRadius).below(playerRadius)
        );

        trophyMob.setStageStateForPlayers(entities, newEnabledState);
      }
    }
  }
});

/*
// Used as a deny list for the following loop. Value should be true
val lootModifierDenyList: bool[string] = {};

for mob, trophyMob in mobs {
  val entity = BracketHandlers.getEntityType(mob);

  if !(mob in lootModifierDenyList) {
    entity.addLootModifier("extra_drops_" + mob.replace(":", "_"), (drops, ctx) => {
      drops.add(<item:minecraft:bone>);

      return drops;
    });
  }
}
*/
