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
    // stagedMobs GENERATOR START
    // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

    <entitytype:earthmobsmod:bone_spider>: new StagedMob(<entitytype:earthmobsmod:bone_spider>, MobStage.BONE_SPIDER),
    <entitytype:earthmobsmod:cluck_shroom>: new StagedMob(<entitytype:earthmobsmod:cluck_shroom>, MobStage.CLUCK_SHROOM),
    <entitytype:earthmobsmod:wooly_cow>: new StagedMob(<entitytype:earthmobsmod:wooly_cow>, MobStage.WOOLY_COW),
    <entitytype:energeticsheep:energetic_sheep>: new StagedMob(<entitytype:energeticsheep:energetic_sheep>, MobStage.ENERGETIC_SHEEP),
    <entitytype:forcecraft:blue_chu_chu>: new StagedMob(<entitytype:forcecraft:blue_chu_chu>, MobStage.BLUE_CHU_CHU),
    <entitytype:forcecraft:creeper_tot>: new StagedMob(<entitytype:forcecraft:creeper_tot>, MobStage.CREEPER_TOT),
    <entitytype:forcecraft:ender_tot>: new StagedMob(<entitytype:forcecraft:ender_tot>, MobStage.ENDER_TOT),
    <entitytype:forcecraft:gold_chu_chu>: new StagedMob(<entitytype:forcecraft:gold_chu_chu>, MobStage.GOLD_CHU_CHU),
    <entitytype:forcecraft:green_chu_chu>: new StagedMob(<entitytype:forcecraft:green_chu_chu>, MobStage.GREEN_CHU_CHU),
    <entitytype:forcecraft:red_chu_chu>: new StagedMob(<entitytype:forcecraft:red_chu_chu>, MobStage.RED_CHU_CHU),
    <entitytype:lava_monster:lava_monster>: new StagedMob(<entitytype:lava_monster:lava_monster>, MobStage.LAVA_MONSTER),
    <entitytype:luggage:ender_luggage>: new StagedMob(<entitytype:luggage:ender_luggage>, MobStage.ENDER_LUGGAGE),
    <entitytype:luggage:luggage>: new StagedMob(<entitytype:luggage:luggage>, MobStage.LUGGAGE),
    <entitytype:minecraft:allay>: new StagedMob(<entitytype:minecraft:allay>, MobStage.ALLAY),
    <entitytype:minecraft:axolotl>: new StagedMob(<entitytype:minecraft:axolotl>, MobStage.AXOLOTL),
    <entitytype:minecraft:bat>: new StagedMob(<entitytype:minecraft:bat>, MobStage.BAT),
    <entitytype:minecraft:bee>: new StagedMob(<entitytype:minecraft:bee>, MobStage.BEE),
    <entitytype:minecraft:blaze>: new StagedMob(<entitytype:minecraft:blaze>, MobStage.BLAZE),
    <entitytype:minecraft:camel>: new StagedMob(<entitytype:minecraft:camel>, MobStage.CAMEL),
    <entitytype:minecraft:cat>: new StagedMob(<entitytype:minecraft:cat>, MobStage.CAT),
    <entitytype:minecraft:cave_spider>: new StagedMob(<entitytype:minecraft:cave_spider>, MobStage.CAVE_SPIDER),
    <entitytype:minecraft:chicken>: new StagedMob(<entitytype:minecraft:chicken>, MobStage.CHICKEN),
    <entitytype:minecraft:cod>: new StagedMob(<entitytype:minecraft:cod>, MobStage.COD),
    <entitytype:minecraft:cow>: new StagedMob(<entitytype:minecraft:cow>, MobStage.COW),
    <entitytype:minecraft:creeper>: new StagedMob(<entitytype:minecraft:creeper>, MobStage.CREEPER),
    <entitytype:minecraft:dolphin>: new StagedMob(<entitytype:minecraft:dolphin>, MobStage.DOLPHIN),
    <entitytype:minecraft:donkey>: new StagedMob(<entitytype:minecraft:donkey>, MobStage.DONKEY),
    <entitytype:minecraft:drowned>: new StagedMob(<entitytype:minecraft:drowned>, MobStage.DROWNED),
    <entitytype:minecraft:enderman>: new StagedMob(<entitytype:minecraft:enderman>, MobStage.ENDERMAN),
    <entitytype:minecraft:endermite>: new StagedMob(<entitytype:minecraft:endermite>, MobStage.ENDERMITE),
    <entitytype:minecraft:evoker>: new StagedMob(<entitytype:minecraft:evoker>, MobStage.EVOKER),
    <entitytype:minecraft:fox>: new StagedMob(<entitytype:minecraft:fox>, MobStage.FOX),
    <entitytype:minecraft:frog>: new StagedMob(<entitytype:minecraft:frog>, MobStage.FROG),
    <entitytype:minecraft:ghast>: new StagedMob(<entitytype:minecraft:ghast>, MobStage.GHAST),
    <entitytype:minecraft:glow_squid>: new StagedMob(<entitytype:minecraft:glow_squid>, MobStage.GLOW_SQUID),
    <entitytype:minecraft:hoglin>: new StagedMob(<entitytype:minecraft:hoglin>, MobStage.HOGLIN),
    <entitytype:minecraft:horse>: new StagedMob(<entitytype:minecraft:horse>, MobStage.HORSE),
    <entitytype:minecraft:husk>: new StagedMob(<entitytype:minecraft:husk>, MobStage.HUSK),
    <entitytype:minecraft:illusioner>: new StagedMob(<entitytype:minecraft:illusioner>, MobStage.ILLUSIONER),
    <entitytype:minecraft:iron_golem>: new StagedMob(<entitytype:minecraft:iron_golem>, MobStage.IRON_GOLEM),
    <entitytype:minecraft:magma_cube>: new StagedMob(<entitytype:minecraft:magma_cube>, MobStage.MAGMA_CUBE),
    <entitytype:minecraft:mooshroom>: new StagedMob(<entitytype:minecraft:mooshroom>, MobStage.MOOSHROOM),
    <entitytype:minecraft:ocelot>: new StagedMob(<entitytype:minecraft:ocelot>, MobStage.OCELOT),
    <entitytype:minecraft:panda>: new StagedMob(<entitytype:minecraft:panda>, MobStage.PANDA),
    <entitytype:minecraft:parrot>: new StagedMob(<entitytype:minecraft:parrot>, MobStage.PARROT),
    <entitytype:minecraft:phantom>: new StagedMob(<entitytype:minecraft:phantom>, MobStage.PHANTOM),
    <entitytype:minecraft:pig>: new StagedMob(<entitytype:minecraft:pig>, MobStage.PIG),
    <entitytype:minecraft:piglin>: new StagedMob(<entitytype:minecraft:piglin>, MobStage.PIGLIN),
    <entitytype:minecraft:piglin_brute>: new StagedMob(<entitytype:minecraft:piglin_brute>, MobStage.PIGLIN_BRUTE),
    <entitytype:minecraft:pillager>: new StagedMob(<entitytype:minecraft:pillager>, MobStage.PILLAGER),
    <entitytype:minecraft:polar_bear>: new StagedMob(<entitytype:minecraft:polar_bear>, MobStage.POLAR_BEAR),
    <entitytype:minecraft:pufferfish>: new StagedMob(<entitytype:minecraft:pufferfish>, MobStage.PUFFERFISH),
    <entitytype:minecraft:rabbit>: new StagedMob(<entitytype:minecraft:rabbit>, MobStage.RABBIT),
    <entitytype:minecraft:ravager>: new StagedMob(<entitytype:minecraft:ravager>, MobStage.RAVAGER),
    <entitytype:minecraft:salmon>: new StagedMob(<entitytype:minecraft:salmon>, MobStage.SALMON),
    <entitytype:minecraft:sheep>: new StagedMob(<entitytype:minecraft:sheep>, MobStage.SHEEP),
    <entitytype:minecraft:shulker>: new StagedMob(<entitytype:minecraft:shulker>, MobStage.SHULKER),
    <entitytype:minecraft:silverfish>: new StagedMob(<entitytype:minecraft:silverfish>, MobStage.SILVERFISH),
    <entitytype:minecraft:skeleton>: new StagedMob(<entitytype:minecraft:skeleton>, MobStage.SKELETON),
    <entitytype:minecraft:skeleton_horse>: new StagedMob(<entitytype:minecraft:skeleton_horse>, MobStage.SKELETON_HORSE),
    <entitytype:minecraft:slime>: new StagedMob(<entitytype:minecraft:slime>, MobStage.SLIME),
    <entitytype:minecraft:sniffer>: new StagedMob(<entitytype:minecraft:sniffer>, MobStage.SNIFFER),
    <entitytype:minecraft:snow_golem>: new StagedMob(<entitytype:minecraft:snow_golem>, MobStage.SNOW_GOLEM),
    <entitytype:minecraft:spider>: new StagedMob(<entitytype:minecraft:spider>, MobStage.SPIDER),
    <entitytype:minecraft:squid>: new StagedMob(<entitytype:minecraft:squid>, MobStage.SQUID),
    <entitytype:minecraft:stray>: new StagedMob(<entitytype:minecraft:stray>, MobStage.STRAY),
    <entitytype:minecraft:strider>: new StagedMob(<entitytype:minecraft:strider>, MobStage.STRIDER),
    <entitytype:minecraft:tadpole>: new StagedMob(<entitytype:minecraft:tadpole>, MobStage.TADPOLE),
    <entitytype:minecraft:trader_llama>: new StagedMob(<entitytype:minecraft:trader_llama>, MobStage.TRADER_LLAMA),
    <entitytype:minecraft:tropical_fish>: new StagedMob(<entitytype:minecraft:tropical_fish>, MobStage.TROPICAL_FISH),
    <entitytype:minecraft:turtle>: new StagedMob(<entitytype:minecraft:turtle>, MobStage.TURTLE),
    <entitytype:minecraft:vex>: new StagedMob(<entitytype:minecraft:vex>, MobStage.VEX),
    <entitytype:minecraft:villager>: new StagedMob(<entitytype:minecraft:villager>, MobStage.VILLAGER),
    <entitytype:minecraft:vindicator>: new StagedMob(<entitytype:minecraft:vindicator>, MobStage.VINDICATOR),
    <entitytype:minecraft:wandering_trader>: new StagedMob(<entitytype:minecraft:wandering_trader>, MobStage.WANDERING_TRADER),
    <entitytype:minecraft:warden>: new StagedMob(<entitytype:minecraft:warden>, MobStage.WARDEN),
    <entitytype:minecraft:witch>: new StagedMob(<entitytype:minecraft:witch>, MobStage.WITCH),
    <entitytype:minecraft:wither>: new StagedMob(<entitytype:minecraft:wither>, MobStage.WITHER),
    <entitytype:minecraft:wither_skeleton>: new StagedMob(<entitytype:minecraft:wither_skeleton>, MobStage.WITHER_SKELETON),
    <entitytype:minecraft:wolf>: new StagedMob(<entitytype:minecraft:wolf>, MobStage.WOLF),
    <entitytype:minecraft:zoglin>: new StagedMob(<entitytype:minecraft:zoglin>, MobStage.ZOGLIN),
    <entitytype:minecraft:zombie>: new StagedMob(<entitytype:minecraft:zombie>, MobStage.ZOMBIE),
    <entitytype:minecraft:zombie_horse>: new StagedMob(<entitytype:minecraft:zombie_horse>, MobStage.ZOMBIE_HORSE),
    <entitytype:minecraft:zombie_villager>: new StagedMob(<entitytype:minecraft:zombie_villager>, MobStage.ZOMBIE_VILLAGER),
    <entitytype:minecraft:zombified_piglin>: new StagedMob(<entitytype:minecraft:zombified_piglin>, MobStage.ZOMBIFIED_PIGLIN),
    <entitytype:veincreeper:black>: new StagedMob(<entitytype:veincreeper:black>, MobStage.BLACK_VEIN_CREEPER),
    <entitytype:veincreeper:blue>: new StagedMob(<entitytype:veincreeper:blue>, MobStage.BLUE_VEIN_CREEPER),
    <entitytype:veincreeper:brown>: new StagedMob(<entitytype:veincreeper:brown>, MobStage.BROWN_VEIN_CREEPER),
    <entitytype:veincreeper:cyan>: new StagedMob(<entitytype:veincreeper:cyan>, MobStage.CYAN_VEIN_CREEPER),
    <entitytype:veincreeper:gray>: new StagedMob(<entitytype:veincreeper:gray>, MobStage.GRAY_VEIN_CREEPER),
    <entitytype:veincreeper:green>: new StagedMob(<entitytype:veincreeper:green>, MobStage.GREEN_VEIN_CREEPER),
    <entitytype:veincreeper:light_blue>: new StagedMob(<entitytype:veincreeper:light_blue>, MobStage.LIGHT_BLUE_VEIN_CREEPER),
    <entitytype:veincreeper:light_gray>: new StagedMob(<entitytype:veincreeper:light_gray>, MobStage.LIGHT_GRAY_VEIN_CREEPER),
    <entitytype:veincreeper:lime>: new StagedMob(<entitytype:veincreeper:lime>, MobStage.LIME_VEIN_CREEPER),
    <entitytype:veincreeper:magenta>: new StagedMob(<entitytype:veincreeper:magenta>, MobStage.MAGENTA_VEIN_CREEPER),
    <entitytype:veincreeper:orange>: new StagedMob(<entitytype:veincreeper:orange>, MobStage.ORANGE_VEIN_CREEPER),
    <entitytype:veincreeper:pink>: new StagedMob(<entitytype:veincreeper:pink>, MobStage.PINK_VEIN_CREEPER),
    <entitytype:veincreeper:purple>: new StagedMob(<entitytype:veincreeper:purple>, MobStage.PURPLE_VEIN_CREEPER),
    <entitytype:veincreeper:red>: new StagedMob(<entitytype:veincreeper:red>, MobStage.RED_VEIN_CREEPER),
    <entitytype:veincreeper:white>: new StagedMob(<entitytype:veincreeper:white>, MobStage.WHITE_VEIN_CREEPER),
    <entitytype:veincreeper:yellow>: new StagedMob(<entitytype:veincreeper:yellow>, MobStage.YELLOW_VEIN_CREEPER)

    // stagedMobs GENERATOR END
  };
}
