#priority 100

import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.EntityType;

public class Globals {
  public static val colors as Color[ColorName] = {
    // Commented colors are being kept for reference
    ColorName.None: new Color(ColorName.None, "none", 9539985), // #919191
    ColorName.Red: new Color(ColorName.Red, "red", 16711680), // #ff0000
    ColorName.Green: new Color(ColorName.Green, "green", 1466134), // #165F16
    ColorName.Lime: new Color(ColorName.Lime, "lime", 195842), // #02FD02
    // ColorName.Blue: new Color(ColorName.Blue, "blue", 33023), // #0080ff
    ColorName.Blue: new Color(ColorName.Blue, "blue", 17544), // #004488
    ColorName.LightBlue: new Color(ColorName.LightBlue, "light_blue", 9425919), // #8fd3ff
    ColorName.Gray: new Color(ColorName.Gray, "gray", 3355443), // #333333
    ColorName.LightGray: new Color(ColorName.LightGray, "light_gray", 13882323), // #D3D3D3
    ColorName.Yellow: new Color(ColorName.Yellow, "yellow", 16776960), // #ffff00
    // ColorName.Purple: new Color(ColorName.Purple, "purple", 8388736), // #800080
    ColorName.Purple: new Color(ColorName.Purple, "purple", 8192221), // #7d00dd
    ColorName.Magenta: new Color(ColorName.Magenta, "magenta", 16711935), // #FF00FF
    ColorName.Pink: new Color(ColorName.Pink, "pink", 16761035), // #FFC0CB
    ColorName.White: new Color(ColorName.White, "white", 16777215), // #FFFFFF
    ColorName.Black: new Color(ColorName.Black, "black", 0), // #000000
    ColorName.Brown: new Color(ColorName.Brown, "brown", 5847071), // #59381f
    ColorName.LightBrown: new Color(ColorName.LightBrown, "brown", 9849600), // #964B00
    ColorName.Cyan: new Color(ColorName.Cyan, "cyan", 3203513), // #30e1b9
    ColorName.Orange: new Color(ColorName.Orange, "orange", 16476957) // #fb6b1d
  };

  public static val stagedMobs as StagedMob[EntityType<Entity>] = {
    // Hostile Entities
    <entitytype:minecraft:blaze>: new StagedMob(<entitytype:minecraft:blaze>, MobStage.Blaze),
    <entitytype:minecraft:cave_spider>: new StagedMob(<entitytype:minecraft:cave_spider>, MobStage.CaveSpider),
    <entitytype:minecraft:creeper>: new StagedMob(<entitytype:minecraft:creeper>, MobStage.Creeper),
    <entitytype:minecraft:drowned>: new StagedMob(<entitytype:minecraft:drowned>, MobStage.Drowned),
    <entitytype:minecraft:enderman>: new StagedMob(<entitytype:minecraft:enderman>, MobStage.Enderman),
    <entitytype:minecraft:endermite>: new StagedMob(<entitytype:minecraft:endermite>, MobStage.Endermite),
    <entitytype:minecraft:evoker>: new StagedMob(<entitytype:minecraft:evoker>, MobStage.Evoker),
    <entitytype:minecraft:ghast>: new StagedMob(<entitytype:minecraft:ghast>, MobStage.Ghast),
    <entitytype:minecraft:guardian>: new StagedMob(<entitytype:minecraft:guardian>, MobStage.Guardian),
    <entitytype:minecraft:hoglin>: new StagedMob(<entitytype:minecraft:hoglin>, MobStage.Hoglin),
    <entitytype:minecraft:husk>: new StagedMob(<entitytype:minecraft:husk>, MobStage.Husk),
    <entitytype:minecraft:illusioner>: new StagedMob(<entitytype:minecraft:illusioner>, MobStage.Illusioner),
    <entitytype:minecraft:magma_cube>: new StagedMob(<entitytype:minecraft:magma_cube>, MobStage.MagmaCube),
    <entitytype:minecraft:phantom>: new StagedMob(<entitytype:minecraft:phantom>, MobStage.Phantom),
    <entitytype:minecraft:piglin>: new StagedMob(<entitytype:minecraft:piglin>, MobStage.Piglin),
    <entitytype:minecraft:piglin_brute>: new StagedMob(<entitytype:minecraft:piglin_brute>, MobStage.PiglinBrute),
    <entitytype:minecraft:pillager>: new StagedMob(<entitytype:minecraft:pillager>, MobStage.Pillager),
    <entitytype:minecraft:ravager>: new StagedMob(<entitytype:minecraft:ravager>, MobStage.Ravager),
    <entitytype:minecraft:shulker>: new StagedMob(<entitytype:minecraft:shulker>, MobStage.Shulker),
    <entitytype:minecraft:silverfish>: new StagedMob(<entitytype:minecraft:silverfish>, MobStage.Silverfish),
    <entitytype:minecraft:skeleton>: new StagedMob(<entitytype:minecraft:skeleton>, MobStage.Skeleton),
    <entitytype:minecraft:slime>: new StagedMob(<entitytype:minecraft:slime>, MobStage.Slime),
    <entitytype:minecraft:spider>: new StagedMob(<entitytype:minecraft:spider>, MobStage.Spider),
    <entitytype:minecraft:stray>: new StagedMob(<entitytype:minecraft:stray>, MobStage.Stray),
    <entitytype:minecraft:vex>: new StagedMob(<entitytype:minecraft:vex>, MobStage.Vex),
    <entitytype:minecraft:vindicator>: new StagedMob(<entitytype:minecraft:vindicator>, MobStage.Vindicator),
    <entitytype:minecraft:warden>: new StagedMob(<entitytype:minecraft:warden>, MobStage.Warden),
    <entitytype:minecraft:witch>: new StagedMob(<entitytype:minecraft:witch>, MobStage.Witch),
    <entitytype:minecraft:wither>: new StagedMob(<entitytype:minecraft:wither>, MobStage.Wither),
    <entitytype:minecraft:wither_skeleton>: new StagedMob(<entitytype:minecraft:wither_skeleton>, MobStage.WitherSkeleton),
    <entitytype:minecraft:zoglin>: new StagedMob(<entitytype:minecraft:zoglin>, MobStage.Zoglin),
    <entitytype:minecraft:zombie>: new StagedMob(<entitytype:minecraft:zombie>, MobStage.Zombie),
    <entitytype:minecraft:zombie_villager>: new StagedMob(<entitytype:minecraft:zombie_villager>, MobStage.ZombieVillager),
    <entitytype:minecraft:zombified_piglin>: new StagedMob(<entitytype:minecraft:zombified_piglin>, MobStage.ZombifiedPiglin),

    // Passive Breedable Entities
    <entitytype:minecraft:axolotl>: new StagedMob(<entitytype:minecraft:axolotl>, MobStage.Axolotl),
    <entitytype:minecraft:bee>: new StagedMob(<entitytype:minecraft:bee>, MobStage.Bee),
    <entitytype:minecraft:camel>: new StagedMob(<entitytype:minecraft:camel>, MobStage.Camel),
    <entitytype:minecraft:cat>: new StagedMob(<entitytype:minecraft:cat>, MobStage.Cat),
    <entitytype:minecraft:chicken>: new StagedMob(<entitytype:minecraft:chicken>, MobStage.Chicken),
    <entitytype:minecraft:cow>: new StagedMob(<entitytype:minecraft:cow>, MobStage.Cow),
    <entitytype:minecraft:donkey>: new StagedMob(<entitytype:minecraft:donkey>, MobStage.Donkey),
    <entitytype:minecraft:fox>: new StagedMob(<entitytype:minecraft:fox>, MobStage.Fox),
    <entitytype:minecraft:frog>: new StagedMob(<entitytype:minecraft:frog>, MobStage.Frog),
    <entitytype:minecraft:goat>: new StagedMob(<entitytype:minecraft:goat>, MobStage.Goat),
    <entitytype:minecraft:horse>: new StagedMob(<entitytype:minecraft:horse>, MobStage.Horse),
    <entitytype:minecraft:llama>: new StagedMob(<entitytype:minecraft:llama>, MobStage.Llama),
    <entitytype:minecraft:mooshroom>: new StagedMob(<entitytype:minecraft:mooshroom>, MobStage.Mooshroom),
    <entitytype:minecraft:ocelot>: new StagedMob(<entitytype:minecraft:ocelot>, MobStage.Ocelot),
    <entitytype:minecraft:panda>: new StagedMob(<entitytype:minecraft:panda>, MobStage.Panda),
    <entitytype:minecraft:pig>: new StagedMob(<entitytype:minecraft:pig>, MobStage.Pig),
    <entitytype:minecraft:rabbit>: new StagedMob(<entitytype:minecraft:rabbit>, MobStage.Rabbit),
    <entitytype:minecraft:sheep>: new StagedMob(<entitytype:minecraft:sheep>, MobStage.Sheep),
    <entitytype:minecraft:sniffer>: new StagedMob(<entitytype:minecraft:sniffer>, MobStage.Sniffer),
    <entitytype:minecraft:strider>: new StagedMob(<entitytype:minecraft:strider>, MobStage.Strider),
    <entitytype:minecraft:wolf>: new StagedMob(<entitytype:minecraft:wolf>, MobStage.Wolf),

    // Fishy Entities
    <entitytype:minecraft:cod>: new StagedMob(<entitytype:minecraft:cod>, MobStage.Cod),
    <entitytype:minecraft:glow_squid>: new StagedMob(<entitytype:minecraft:glow_squid>, MobStage.GlowSquid),
    <entitytype:minecraft:pufferfish>: new StagedMob(<entitytype:minecraft:pufferfish>, MobStage.Pufferfish),
    <entitytype:minecraft:salmon>: new StagedMob(<entitytype:minecraft:salmon>, MobStage.Salmon),
    <entitytype:minecraft:squid>: new StagedMob(<entitytype:minecraft:squid>, MobStage.Squid),
    <entitytype:minecraft:tadpole>: new StagedMob(<entitytype:minecraft:tadpole>, MobStage.Tadpole),
    <entitytype:minecraft:tropical_fish>: new StagedMob(<entitytype:minecraft:tropical_fish>, MobStage.TropicalFish),
    <entitytype:minecraft:dolphin>: new StagedMob(<entitytype:minecraft:dolphin>, MobStage.Dolphin),

    // Entities not normally naturally spawned in Forest/in general
    <entitytype:minecraft:allay>: new StagedMob(<entitytype:minecraft:allay>, MobStage.Allay),
    <entitytype:minecraft:parrot>: new StagedMob(<entitytype:minecraft:parrot>, MobStage.Parrot),
    <entitytype:minecraft:polar_bear>: new StagedMob(<entitytype:minecraft:polar_bear>, MobStage.PolarBear),
    <entitytype:minecraft:skeleton_horse>: new StagedMob(<entitytype:minecraft:skeleton_horse>, MobStage.SkeletonHorse),
    <entitytype:minecraft:turtle>: new StagedMob(<entitytype:minecraft:turtle>, MobStage.Turtle),
    <entitytype:minecraft:zombie_horse>: new StagedMob(<entitytype:minecraft:zombie_horse>, MobStage.ZombieHorse),

    // Entities that are annoying
    <entitytype:minecraft:bat>: new StagedMob(<entitytype:minecraft:bat>, MobStage.Bat),

    // Special Case Entities
    // Villagers and Wandering Trader
    <entitytype:minecraft:villager>: new StagedMob(<entitytype:minecraft:villager>, MobStage.Villager),
    <entitytype:minecraft:wandering_trader>: new StagedMob(<entitytype:minecraft:wandering_trader>, MobStage.WanderingTrader),
    <entitytype:minecraft:trader_llama>: new StagedMob(<entitytype:minecraft:trader_llama>, MobStage.TraderLlama),

    // Golems
    <entitytype:minecraft:iron_golem>: new StagedMob(<entitytype:minecraft:iron_golem>, MobStage.IronGolem),
    <entitytype:minecraft:snow_golem>: new StagedMob(<entitytype:minecraft:snow_golem>, MobStage.SnowGolem),

    // Modded Entities
    // Mules have not been added to this list because I don't know
    // if I really need to care or have the desire to add them
    // does anybody really care if I don't add them? Seriously
    // let me know in the comments if you care and don't forget
    // to ring that bell and hit that like button
    <entitytype:energeticsheep:energetic_sheep>: new StagedMob(<entitytype:energeticsheep:energetic_sheep>, MobStage.EnergeticSheep),

    // Earth Mobs Mod Entities
    <entitytype:earthmobsmod:albino_cow>: new StagedMob(<entitytype:earthmobsmod:albino_cow>, MobStage.Albino_Cow),
    <entitytype:earthmobsmod:jolly_llama>: new StagedMob(<entitytype:earthmobsmod:jolly_llama>, MobStage.JollyLlama),
    <entitytype:earthmobsmod:skeleton_wolf>: new StagedMob(<entitytype:earthmobsmod:skeleton_wolf>, MobStage.SkeletonWolf),
    <entitytype:earthmobsmod:melon_golem>: new StagedMob(<entitytype:earthmobsmod:melon_golem>, MobStage.MelonGolem),
    <entitytype:earthmobsmod:wooly_cow>: new StagedMob(<entitytype:earthmobsmod:wooly_cow>, MobStage.WoolyCow),
    <entitytype:earthmobsmod:hyper_rabbit>: new StagedMob(<entitytype:earthmobsmod:hyper_rabbit>, MobStage.HyperRabbit),
    <entitytype:earthmobsmod:magma_cow>: new StagedMob(<entitytype:earthmobsmod:magma_cow>, MobStage.MagmaCow),
    <entitytype:earthmobsmod:moobloom>: new StagedMob(<entitytype:earthmobsmod:moobloom>, MobStage.Moobloom),
    <entitytype:earthmobsmod:cream_cow>: new StagedMob(<entitytype:earthmobsmod:cream_cow>, MobStage.CreamCow),
    <entitytype:earthmobsmod:baby_ghast>: new StagedMob(<entitytype:earthmobsmod:baby_ghast>, MobStage.BabyGhast),
    <entitytype:earthmobsmod:zombified_pig>: new StagedMob(<entitytype:earthmobsmod:zombified_pig>, MobStage.ZombifiedPig),
    <entitytype:earthmobsmod:jumbo_rabbit>: new StagedMob(<entitytype:earthmobsmod:jumbo_rabbit>, MobStage.JumboRabbit),
    <entitytype:earthmobsmod:moolip>: new StagedMob(<entitytype:earthmobsmod:moolip>, MobStage.Moolip),
    <entitytype:earthmobsmod:teacup_pig>: new StagedMob(<entitytype:earthmobsmod:teacup_pig>, MobStage.TeacupPig),
    <entitytype:earthmobsmod:bouldering_zombie>: new StagedMob(<entitytype:earthmobsmod:bouldering_zombie>, MobStage.BoulderingZombie),
    <entitytype:earthmobsmod:furnace_golem>: new StagedMob(<entitytype:earthmobsmod:furnace_golem>, MobStage.FurnaceGolem),
    <entitytype:earthmobsmod:lobber_zombie>: new StagedMob(<entitytype:earthmobsmod:lobber_zombie>, MobStage.LobberZombie),
    <entitytype:earthmobsmod:tropical_slime>: new StagedMob(<entitytype:earthmobsmod:tropical_slime>, MobStage.TropicalSlime),
    <entitytype:earthmobsmod:stray_bone_spider>: new StagedMob(<entitytype:earthmobsmod:stray_bone_spider>, MobStage.StrayBoneSpider),
    <entitytype:earthmobsmod:fancy_chicken>: new StagedMob(<entitytype:earthmobsmod:fancy_chicken>, MobStage.FancyChicken),
    <entitytype:earthmobsmod:bone_spider>: new StagedMob(<entitytype:earthmobsmod:bone_spider>, MobStage.BoneSpider),
    <entitytype:earthmobsmod:lobber_drowned>: new StagedMob(<entitytype:earthmobsmod:lobber_drowned>, MobStage.LobberDrowned),
    <entitytype:earthmobsmod:bouldering_drowned>: new StagedMob(<entitytype:earthmobsmod:bouldering_drowned>, MobStage.BoulderingDrowned),
    <entitytype:earthmobsmod:viler_witch>: new StagedMob(<entitytype:earthmobsmod:viler_witch>, MobStage.VilerWitch),
    <entitytype:earthmobsmod:duck>: new StagedMob(<entitytype:earthmobsmod:duck>, MobStage.Duck),
    <entitytype:earthmobsmod:cluck_shroom>: new StagedMob(<entitytype:earthmobsmod:cluck_shroom>, MobStage.CluckShroom),
    <entitytype:earthmobsmod:wither_skeleton_wolf>: new StagedMob(<entitytype:earthmobsmod:wither_skeleton_wolf>, MobStage.WitherSkeletonWolf),
    <entitytype:earthmobsmod:umbra_cow>: new StagedMob(<entitytype:earthmobsmod:umbra_cow>, MobStage.UmbraCow),

    // Vein Creepers
    <entitytype:veincreeper:black>: new StagedMob(<entitytype:veincreeper:black>, MobStage.BlackVeinCreeper),
    <entitytype:veincreeper:blue>: new StagedMob(<entitytype:veincreeper:blue>, MobStage.BlueVeinCreeper),
    <entitytype:veincreeper:brown>: new StagedMob(<entitytype:veincreeper:brown>, MobStage.BrownVeinCreeper),
    <entitytype:veincreeper:cyan>: new StagedMob(<entitytype:veincreeper:cyan>, MobStage.CyanVeinCreeper),
    <entitytype:veincreeper:gray>: new StagedMob(<entitytype:veincreeper:gray>, MobStage.GrayVeinCreeper),
    <entitytype:veincreeper:green>: new StagedMob(<entitytype:veincreeper:green>, MobStage.GreenVeinCreeper),
    <entitytype:veincreeper:light_blue>: new StagedMob(<entitytype:veincreeper:light_blue>, MobStage.LightBlueVeinCreeper),
    <entitytype:veincreeper:light_gray>: new StagedMob(<entitytype:veincreeper:light_gray>, MobStage.LightGrayVeinCreeper),
    <entitytype:veincreeper:lime>: new StagedMob(<entitytype:veincreeper:lime>, MobStage.LimeVeinCreeper),
    <entitytype:veincreeper:magenta>: new StagedMob(<entitytype:veincreeper:magenta>, MobStage.MagentaVeinCreeper),
    <entitytype:veincreeper:orange>: new StagedMob(<entitytype:veincreeper:orange>, MobStage.OrangeVeinCreeper),
    <entitytype:veincreeper:pink>: new StagedMob(<entitytype:veincreeper:pink>, MobStage.PinkVeinCreeper),
    <entitytype:veincreeper:purple>: new StagedMob(<entitytype:veincreeper:purple>, MobStage.PurpleVeinCreeper),
    <entitytype:veincreeper:red>: new StagedMob(<entitytype:veincreeper:red>, MobStage.RedVeinCreeper),
    <entitytype:veincreeper:white>: new StagedMob(<entitytype:veincreeper:white>, MobStage.WhiteVeinCreeper),
    <entitytype:veincreeper:yellow>: new StagedMob(<entitytype:veincreeper:yellow>, MobStage.YellowVeinCreeper),

    // Lava Monsters
    <entitytype:lava_monster:lava_monster>: new StagedMob(<entitytype:lava_monster:lava_monster>, MobStage.LavaMonster),

    // ForceCraft
    <entitytype:forcecraft:blue_chu_chu>: new StagedMob(<entitytype:forcecraft:blue_chu_chu>, MobStage.BlueChuChu),
    <entitytype:forcecraft:cold_chicken>: new StagedMob(<entitytype:forcecraft:cold_chicken>, MobStage.ColdChicken),
    <entitytype:forcecraft:cold_cow>: new StagedMob(<entitytype:forcecraft:cold_cow>, MobStage.ColdCow),
    <entitytype:forcecraft:cold_pig>: new StagedMob(<entitytype:forcecraft:cold_pig>, MobStage.ColdPig),
    <entitytype:forcecraft:creeper_tot>: new StagedMob(<entitytype:forcecraft:creeper_tot>, MobStage.CreeperTot),
    <entitytype:forcecraft:ender_tot>: new StagedMob(<entitytype:forcecraft:ender_tot>, MobStage.EnderTot),
    // <entitytype:forcecraft:fairy>: new StagedMob(<entitytype:forcecraft:fairy>, MobStage.Fairy),
    <entitytype:forcecraft:gold_chu_chu>: new StagedMob(<entitytype:forcecraft:gold_chu_chu>, MobStage.GoldChuChu),
    <entitytype:forcecraft:green_chu_chu>: new StagedMob(<entitytype:forcecraft:green_chu_chu>, MobStage.GreenChuChu),
    <entitytype:forcecraft:red_chu_chu>: new StagedMob(<entitytype:forcecraft:red_chu_chu>, MobStage.RedChuChu),


  // Monsters Plus
  <entitytype:monsterplus:glow_skeleton>: new StagedMob(<entitytype:monsterplus:glow_skeleton>, MobStage.GlowSkeleton),
  <entitytype:monsterplus:spectral_skeleton>: new StagedMob(<entitytype:monsterplus:spectral_skeleton>, MobStage.SpectralSkeleton),
  <entitytype:monsterplus:opalescent_eye>: new StagedMob(<entitytype:monsterplus:opalescent_eye>, MobStage.OpalescentEye),
  <entitytype:monsterplus:abyssologer>: new StagedMob(<entitytype:monsterplus:abyssologer>, MobStage.Abyssologer),
  <entitytype:monsterplus:swamp_zombie>: new StagedMob(<entitytype:monsterplus:swamp_zombie>, MobStage.SwampZombie),
  <entitytype:monsterplus:crystal_zombie>: new StagedMob(<entitytype:monsterplus:crystal_zombie>, MobStage.CrystalZombie),
  <entitytype:monsterplus:mother_lava_squid>: new StagedMob(<entitytype:monsterplus:mother_lava_squid>, MobStage.MotherLavaSquid),
  <entitytype:monsterplus:lava_squid>: new StagedMob(<entitytype:monsterplus:lava_squid>, MobStage.LavaSquid),
  <entitytype:monsterplus:overgrown_skeleton>: new StagedMob(<entitytype:monsterplus:overgrown_skeleton>, MobStage.OvergrownSkeleton),


  // Let's do Vinery
  <entitytype:vinery:wandering_winemaker>: new StagedMob(<entitytype:vinery:wandering_winemaker>, MobStage.WanderingWinemaker),
  <entitytype:vinery:mule>: new StagedMob(<entitytype:vinery:mule>, MobStage.Mule)

  };
}
