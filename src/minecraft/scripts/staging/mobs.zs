import crafttweaker.api.block.entity.BlockEntity;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.EntityType;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.text.Component;
import crafttweaker.forge.api.event.interact.RightClickBlockEvent;
import mods.angrymobs.AITweaks;

public class TrophyMob {
  public val entityType as EntityType<Entity> : get;
  public val stageName as MobStage : get;

  public this(entityType: EntityType<Entity>, stageName: MobStage) {
    this.entityType = entityType;
    this.stageName = stageName;
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
      player.sendMessage(
        Component.empty()
          .append(this.entityType.getDescription())
          .append(Component.literal(" will now spawn!"))
          .withStyle(style => style.withColor(<constant:minecraft:formatting:green>))
      );
    } else {
      player.removeGameStage(this.stageName);
      player.sendMessage(
        Component.empty()
          .append(this.entityType.getDescription())
          .append(Component.literal(" will no longer spawn!"))
          .withStyle(style => style.withColor(<constant:minecraft:formatting:red>))
      );
    }
  }
}

val mobs: TrophyMob[EntityType<Entity>] = {
  // Hostile Entities
  <entitytype:minecraft:blaze>: new TrophyMob(<entitytype:minecraft:blaze>, MobStage.Blaze),
  <entitytype:minecraft:cave_spider>: new TrophyMob(<entitytype:minecraft:cave_spider>, MobStage.CaveSpider),
  <entitytype:minecraft:creeper>: new TrophyMob(<entitytype:minecraft:creeper>, MobStage.Creeper),
  <entitytype:minecraft:drowned>: new TrophyMob(<entitytype:minecraft:drowned>, MobStage.Drowned),
  <entitytype:minecraft:enderman>: new TrophyMob(<entitytype:minecraft:enderman>, MobStage.Enderman),
  <entitytype:minecraft:endermite>: new TrophyMob(<entitytype:minecraft:endermite>, MobStage.Endermite),
  <entitytype:minecraft:evoker>: new TrophyMob(<entitytype:minecraft:evoker>, MobStage.Evoker),
  <entitytype:minecraft:ghast>: new TrophyMob(<entitytype:minecraft:ghast>, MobStage.Ghast),
  <entitytype:minecraft:guardian>: new TrophyMob(<entitytype:minecraft:guardian>, MobStage.Guardian),
  <entitytype:minecraft:hoglin>: new TrophyMob(<entitytype:minecraft:hoglin>, MobStage.Hoglin),
  <entitytype:minecraft:husk>: new TrophyMob(<entitytype:minecraft:husk>, MobStage.Husk),
  <entitytype:minecraft:illusioner>: new TrophyMob(<entitytype:minecraft:illusioner>, MobStage.Illusioner),
  <entitytype:minecraft:magma_cube>: new TrophyMob(<entitytype:minecraft:magma_cube>, MobStage.MagmaCube),
  <entitytype:minecraft:phantom>: new TrophyMob(<entitytype:minecraft:phantom>, MobStage.Phantom),
  <entitytype:minecraft:piglin>: new TrophyMob(<entitytype:minecraft:piglin>, MobStage.Piglin),
  <entitytype:minecraft:piglin_brute>: new TrophyMob(<entitytype:minecraft:piglin_brute>, MobStage.PiglinBrute),
  <entitytype:minecraft:pillager>: new TrophyMob(<entitytype:minecraft:pillager>, MobStage.Pillager),
  <entitytype:minecraft:ravager>: new TrophyMob(<entitytype:minecraft:ravager>, MobStage.Ravager),
  <entitytype:minecraft:shulker>: new TrophyMob(<entitytype:minecraft:shulker>, MobStage.Shulker),
  <entitytype:minecraft:silverfish>: new TrophyMob(<entitytype:minecraft:silverfish>, MobStage.Silverfish),
  <entitytype:minecraft:skeleton>: new TrophyMob(<entitytype:minecraft:skeleton>, MobStage.Skeleton),
  <entitytype:minecraft:slime>: new TrophyMob(<entitytype:minecraft:slime>, MobStage.Slime),
  <entitytype:minecraft:spider>: new TrophyMob(<entitytype:minecraft:spider>, MobStage.Spider),
  <entitytype:minecraft:stray>: new TrophyMob(<entitytype:minecraft:stray>, MobStage.Stray),
  <entitytype:minecraft:vex>: new TrophyMob(<entitytype:minecraft:vex>, MobStage.Vex),
  <entitytype:minecraft:vindicator>: new TrophyMob(<entitytype:minecraft:vindicator>, MobStage.Vindicator),
  <entitytype:minecraft:warden>: new TrophyMob(<entitytype:minecraft:warden>, MobStage.Warden),
  <entitytype:minecraft:witch>: new TrophyMob(<entitytype:minecraft:witch>, MobStage.Witch),
  <entitytype:minecraft:wither>: new TrophyMob(<entitytype:minecraft:wither>, MobStage.Wither),
  <entitytype:minecraft:wither_skeleton>: new TrophyMob(<entitytype:minecraft:wither_skeleton>, MobStage.WitherSkeleton),
  <entitytype:minecraft:zoglin>: new TrophyMob(<entitytype:minecraft:zoglin>, MobStage.Zoglin),
  <entitytype:minecraft:zombie>: new TrophyMob(<entitytype:minecraft:zombie>, MobStage.Zombie),
  <entitytype:minecraft:zombie_villager>: new TrophyMob(<entitytype:minecraft:zombie_villager>, MobStage.ZombieVillager),
  <entitytype:minecraft:zombified_piglin>: new TrophyMob(<entitytype:minecraft:zombified_piglin>, MobStage.ZombifiedPiglin),

  // Passive Breedable Entities
  <entitytype:minecraft:axolotl>: new TrophyMob(<entitytype:minecraft:axolotl>, MobStage.Axolotl),
  <entitytype:minecraft:bee>: new TrophyMob(<entitytype:minecraft:bee>, MobStage.Bee),
  <entitytype:minecraft:camel>: new TrophyMob(<entitytype:minecraft:camel>, MobStage.Camel),
  <entitytype:minecraft:cat>: new TrophyMob(<entitytype:minecraft:cat>, MobStage.Cat),
  <entitytype:minecraft:chicken>: new TrophyMob(<entitytype:minecraft:chicken>, MobStage.Chicken),
  <entitytype:minecraft:cow>: new TrophyMob(<entitytype:minecraft:cow>, MobStage.Cow),
  <entitytype:minecraft:donkey>: new TrophyMob(<entitytype:minecraft:donkey>, MobStage.Donkey),
  <entitytype:minecraft:fox>: new TrophyMob(<entitytype:minecraft:fox>, MobStage.Fox),
  <entitytype:minecraft:frog>: new TrophyMob(<entitytype:minecraft:frog>, MobStage.Frog),
  <entitytype:minecraft:goat>: new TrophyMob(<entitytype:minecraft:goat>, MobStage.Goat),
  <entitytype:minecraft:horse>: new TrophyMob(<entitytype:minecraft:horse>, MobStage.Horse),
  <entitytype:minecraft:llama>: new TrophyMob(<entitytype:minecraft:llama>, MobStage.Llama),
  <entitytype:minecraft:mooshroom>: new TrophyMob(<entitytype:minecraft:mooshroom>, MobStage.Mooshroom),
  <entitytype:minecraft:ocelot>: new TrophyMob(<entitytype:minecraft:ocelot>, MobStage.Ocelot),
  <entitytype:minecraft:panda>: new TrophyMob(<entitytype:minecraft:panda>, MobStage.Panda),
  <entitytype:minecraft:pig>: new TrophyMob(<entitytype:minecraft:pig>, MobStage.Pig),
  <entitytype:minecraft:rabbit>: new TrophyMob(<entitytype:minecraft:rabbit>, MobStage.Rabbit),
  <entitytype:minecraft:sheep>: new TrophyMob(<entitytype:minecraft:sheep>, MobStage.Sheep),
  <entitytype:minecraft:sniffer>: new TrophyMob(<entitytype:minecraft:sniffer>, MobStage.Sniffer),
  <entitytype:minecraft:strider>: new TrophyMob(<entitytype:minecraft:strider>, MobStage.Strider),
  <entitytype:minecraft:wolf>: new TrophyMob(<entitytype:minecraft:wolf>, MobStage.Wolf),

  // Fishy Entities
  <entitytype:minecraft:cod>: new TrophyMob(<entitytype:minecraft:cod>, MobStage.Cod),
  <entitytype:minecraft:glow_squid>: new TrophyMob(<entitytype:minecraft:glow_squid>, MobStage.GlowSquid),
  <entitytype:minecraft:pufferfish>: new TrophyMob(<entitytype:minecraft:pufferfish>, MobStage.Pufferfish),
  <entitytype:minecraft:salmon>: new TrophyMob(<entitytype:minecraft:salmon>, MobStage.Salmon),
  <entitytype:minecraft:squid>: new TrophyMob(<entitytype:minecraft:squid>, MobStage.Squid),
  <entitytype:minecraft:tadpole>: new TrophyMob(<entitytype:minecraft:tadpole>, MobStage.Tadpole),
  <entitytype:minecraft:tropical_fish>: new TrophyMob(<entitytype:minecraft:tropical_fish>, MobStage.TropicalFish),
  <entitytype:minecraft:dolphin>: new TrophyMob(<entitytype:minecraft:dolphin>, MobStage.Dolphin),

  // Entities not normally naturally spawned in Forest/in general
  <entitytype:minecraft:allay>: new TrophyMob(<entitytype:minecraft:allay>, MobStage.Allay),
  <entitytype:minecraft:parrot>: new TrophyMob(<entitytype:minecraft:parrot>, MobStage.Parrot),
  <entitytype:minecraft:polar_bear>: new TrophyMob(<entitytype:minecraft:polar_bear>, MobStage.PolarBear),
  <entitytype:minecraft:skeleton_horse>: new TrophyMob(<entitytype:minecraft:skeleton_horse>, MobStage.SkeletonHorse),
  <entitytype:minecraft:turtle>: new TrophyMob(<entitytype:minecraft:turtle>, MobStage.Turtle),
  <entitytype:minecraft:zombie_horse>: new TrophyMob(<entitytype:minecraft:zombie_horse>, MobStage.ZombieHorse),

  // Entities that are annoying
  <entitytype:minecraft:bat>: new TrophyMob(<entitytype:minecraft:bat>, MobStage.Bat),

  // Special Case Entities
  // Villagers and Wandering Trader
  <entitytype:minecraft:villager>: new TrophyMob(<entitytype:minecraft:villager>, MobStage.Villager),
  <entitytype:minecraft:wandering_trader>: new TrophyMob(<entitytype:minecraft:wandering_trader>, MobStage.WanderingTrader),

  // Golems
  <entitytype:minecraft:iron_golem>: new TrophyMob(<entitytype:minecraft:iron_golem>, MobStage.IronGolem),
  <entitytype:minecraft:snow_golem>: new TrophyMob(<entitytype:minecraft:snow_golem>, MobStage.SnowGolem),

  // Modded Entities
  // Mules have not been added to this list because I don't know
  // if I really need to care or have the desire to add them
  // does anybody really care if I don't add them? Seriously
  // let me know in the comments if you care and don't forget
  // to ring that bell and hit that like button
  <entitytype:energeticsheep:energetic_sheep>: new TrophyMob(<entitytype:energeticsheep:energetic_sheep>, MobStage.EnergeticSheep),

  // Earth Mobs Mod Entities
  <entitytype:earthmobsmod:albino_cow>: new TrophyMob(<entitytype:earthmobsmod:albino_cow>, MobStage.Albino_Cow),
  <entitytype:earthmobsmod:jolly_llama>: new TrophyMob(<entitytype:earthmobsmod:jolly_llama>, MobStage.JollyLlama),
  <entitytype:earthmobsmod:skeleton_wolf>: new TrophyMob(<entitytype:earthmobsmod:skeleton_wolf>, MobStage.SkeletonWolf),
  <entitytype:earthmobsmod:melon_golem>: new TrophyMob(<entitytype:earthmobsmod:melon_golem>, MobStage.MelonGolem),
  <entitytype:earthmobsmod:wooly_cow>: new TrophyMob(<entitytype:earthmobsmod:wooly_cow>, MobStage.WoolyCow),
  <entitytype:earthmobsmod:hyper_rabbit>: new TrophyMob(<entitytype:earthmobsmod:hyper_rabbit>, MobStage.HyperRabbit),
  <entitytype:earthmobsmod:magma_cow>: new TrophyMob(<entitytype:earthmobsmod:magma_cow>, MobStage.MagmaCow),
  <entitytype:earthmobsmod:moobloom>: new TrophyMob(<entitytype:earthmobsmod:moobloom>, MobStage.Moobloom),
  <entitytype:earthmobsmod:cream_cow>: new TrophyMob(<entitytype:earthmobsmod:cream_cow>, MobStage.CreamCow),
  <entitytype:earthmobsmod:baby_ghast>: new TrophyMob(<entitytype:earthmobsmod:baby_ghast>, MobStage.BabyGhast),
  <entitytype:earthmobsmod:zombified_pig>: new TrophyMob(<entitytype:earthmobsmod:zombified_pig>, MobStage.ZombifiedPig),
  <entitytype:earthmobsmod:jumbo_rabbit>: new TrophyMob(<entitytype:earthmobsmod:jumbo_rabbit>, MobStage.JumboRabbit),
  <entitytype:earthmobsmod:moolip>: new TrophyMob(<entitytype:earthmobsmod:moolip>, MobStage.Moolip),
  <entitytype:earthmobsmod:teacup_pig>: new TrophyMob(<entitytype:earthmobsmod:teacup_pig>, MobStage.TeacupPig),
  <entitytype:earthmobsmod:bouldering_zombie>: new TrophyMob(<entitytype:earthmobsmod:bouldering_zombie>, MobStage.BoulderingZombie),
  <entitytype:earthmobsmod:furnace_golem>: new TrophyMob(<entitytype:earthmobsmod:furnace_golem>, MobStage.FurnaceGolem),
  <entitytype:earthmobsmod:lobber_zombie>: new TrophyMob(<entitytype:earthmobsmod:lobber_zombie>, MobStage.LobberZombie),
  <entitytype:earthmobsmod:tropical_slime>: new TrophyMob(<entitytype:earthmobsmod:tropical_slime>, MobStage.TropicalSlime),
  <entitytype:earthmobsmod:stray_bone_spider>: new TrophyMob(<entitytype:earthmobsmod:stray_bone_spider>, MobStage.StrayBoneSpider),
  <entitytype:earthmobsmod:fancy_chicken>: new TrophyMob(<entitytype:earthmobsmod:fancy_chicken>, MobStage.FancyChicken),
  <entitytype:earthmobsmod:bone_spider>: new TrophyMob(<entitytype:earthmobsmod:bone_spider>, MobStage.BoneSpider),
  <entitytype:earthmobsmod:lobber_drowned>: new TrophyMob(<entitytype:earthmobsmod:lobber_drowned>, MobStage.LobberDrowned),
  <entitytype:earthmobsmod:bouldering_drowned>: new TrophyMob(<entitytype:earthmobsmod:bouldering_drowned>, MobStage.BoulderingDrowned),
  <entitytype:earthmobsmod:viler_witch>: new TrophyMob(<entitytype:earthmobsmod:viler_witch>, MobStage.VilerWitch),
  <entitytype:earthmobsmod:duck>: new TrophyMob(<entitytype:earthmobsmod:duck>, MobStage.Duck),
  <entitytype:earthmobsmod:cluck_shroom>: new TrophyMob(<entitytype:earthmobsmod:cluck_shroom>, MobStage.CluckShroom),
  <entitytype:earthmobsmod:wither_skeleton_wolf>: new TrophyMob(<entitytype:earthmobsmod:wither_skeleton_wolf>, MobStage.WitherSkeletonWolf),
  <entitytype:earthmobsmod:umbra_cow>: new TrophyMob(<entitytype:earthmobsmod:umbra_cow>, MobStage.UmbraCow),

  // Vein Creepers
  <entitytype:veincreeper:black>: new TrophyMob(<entitytype:veincreeper:black>, MobStage.BlackVeinCreeper),
  <entitytype:veincreeper:blue>: new TrophyMob(<entitytype:veincreeper:blue>, MobStage.BlueVeinCreeper),
  <entitytype:veincreeper:brown>: new TrophyMob(<entitytype:veincreeper:brown>, MobStage.BrownVeinCreeper),
  <entitytype:veincreeper:cyan>: new TrophyMob(<entitytype:veincreeper:cyan>, MobStage.CyanVeinCreeper),
  <entitytype:veincreeper:gray>: new TrophyMob(<entitytype:veincreeper:gray>, MobStage.GrayVeinCreeper),
  <entitytype:veincreeper:green>: new TrophyMob(<entitytype:veincreeper:green>, MobStage.GreenVeinCreeper),
  <entitytype:veincreeper:light_blue>: new TrophyMob(<entitytype:veincreeper:light_blue>, MobStage.LightBlueVeinCreeper),
  <entitytype:veincreeper:light_gray>: new TrophyMob(<entitytype:veincreeper:light_gray>, MobStage.LightGrayVeinCreeper),
  <entitytype:veincreeper:lime>: new TrophyMob(<entitytype:veincreeper:lime>, MobStage.LimeVeinCreeper),
  <entitytype:veincreeper:magenta>: new TrophyMob(<entitytype:veincreeper:magenta>, MobStage.MagentaVeinCreeper),
  <entitytype:veincreeper:orange>: new TrophyMob(<entitytype:veincreeper:orange>, MobStage.OrangeVeinCreeper),
  <entitytype:veincreeper:pink>: new TrophyMob(<entitytype:veincreeper:pink>, MobStage.PinkVeinCreeper),
  <entitytype:veincreeper:purple>: new TrophyMob(<entitytype:veincreeper:purple>, MobStage.PurpleVeinCreeper),
  <entitytype:veincreeper:red>: new TrophyMob(<entitytype:veincreeper:red>, MobStage.RedVeinCreeper),
  <entitytype:veincreeper:white>: new TrophyMob(<entitytype:veincreeper:white>, MobStage.WhiteVeinCreeper),
  <entitytype:veincreeper:yellow>: new TrophyMob(<entitytype:veincreeper:yellow>, MobStage.YellowVeinCreeper),

  // Lava Monsters
  <entitytype:lava_monster:lava_monster>: new TrophyMob(<entitytype:lava_monster:lava_monster>, MobStage.LavaMonster),

  // ForceCraft
  <entitytype:forcecraft:blue_chu_chu>: new TrophyMob(<entitytype:forcecraft:blue_chu_chu>, MobStage.BlueChuChu),
  <entitytype:forcecraft:cold_chicken>: new TrophyMob(<entitytype:forcecraft:cold_chicken>, MobStage.ColdChicken),
  <entitytype:forcecraft:cold_cow>: new TrophyMob(<entitytype:forcecraft:cold_cow>, MobStage.ColdCow),
  <entitytype:forcecraft:cold_pig>: new TrophyMob(<entitytype:forcecraft:cold_pig>, MobStage.ColdPig),
  <entitytype:forcecraft:creeper_tot>: new TrophyMob(<entitytype:forcecraft:creeper_tot>, MobStage.CreeperTot),
  <entitytype:forcecraft:ender_tot>: new TrophyMob(<entitytype:forcecraft:ender_tot>, MobStage.EnderTot),
  <entitytype:forcecraft:fairy>: new TrophyMob(<entitytype:forcecraft:fairy>, MobStage.Fairy),
  <entitytype:forcecraft:gold_chu_chu>: new TrophyMob(<entitytype:forcecraft:gold_chu_chu>, MobStage.GoldChuChu),
  <entitytype:forcecraft:green_chu_chu>: new TrophyMob(<entitytype:forcecraft:green_chu_chu>, MobStage.GreenChuChu),
  <entitytype:forcecraft:red_chu_chu>: new TrophyMob(<entitytype:forcecraft:red_chu_chu>, MobStage.RedChuChu),

  // Luggage
  <entitytype:luggage:luggage>: new TrophyMob(<entitytype:luggage:luggage>, MobStage.Luggage),
  <entitytype:luggage:ender_luggage>: new TrophyMob(<entitytype:luggage:ender_luggage>, MobStage.EnderLuggage)
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
      val type = BracketHandlers.getEntityType(data["entity"].getAsString());

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

for mob in mobs {
  if !mob.getCategory().isFriendly() {
    continue;
  }

  AITweaks.addMeleeAttackTweak(mob, 1, 1.0F, 1.0D, false);
}

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
