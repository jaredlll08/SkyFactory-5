//mods.recipestages.Recipes.addShaped("one", "name_one", <item:minecraft:iron_leggings>,[[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:iron_ingot>],[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]]);


//mods.recipestages.Recipes.setRecipeStage("hoe", <item:minecraft:stone_hoe>);






import crafttweaker.api.block.entity.BlockEntity;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.text.Component;


public class TrophyMob {

  public val stageName as string : get;
  public val mobDisplayName as string : get;

  public this( stageName as string, mobDisplayName as string) {
    this.stageName = stageName;
    this.mobDisplayName = mobDisplayName;
  }

  public toggleStage(player as Player) as void {
    var hasStage = player.hasGameStage(this.stageName);

    if hasStage {
      player.removeGameStage(this.stageName);
      player.sendMessage(Component.literal(this.mobDisplayName + " will no longer spawn!").withStyle(style => style.withColor(<constant:minecraft:formatting:red>)));
    } else {
      player.addGameStage(this.stageName);
      player.sendMessage(Component.literal(this.mobDisplayName + " will now spawn!").withStyle(style => style.withColor(<constant:minecraft:formatting:green>)));
    }

    // Pick a sound source: https://docs.blamejared.com/1.20.1/en/vanilla/api/sound/SoundSource#enum-constants
    player.level.playSound(player, player.blockPosition, <soundevent:minecraft:event.raid.horn>, <constant:minecraft:sound/source:master>);
  }

}

val mobs = {
    "minecraft:blaze": new TrophyMob("blaze", "Blazes"),  
    "minecraft:creeper": new TrophyMob("creeper", "Creepers"),
    "minecraft:zombie": new TrophyMob("zombie", "Zombies"),
    "minecraft:skeleton": new TrophyMob("skeleton", "Skeletons"),
    "minecraft:skeleton": new TrophyMob("skeleton", "Skeletons"),
    "minecraft:creeper": new TrophyMob("creeper", "Creepers"),
    "minecraft:enderman": new TrophyMob("enderman", "Endermen"),
    "minecraft:phantom": new TrophyMob("phantom", "Phantoms"),
    "minecraft:spider": new TrophyMob("spider", "Spiders"),
    "minecraft:warden": new TrophyMob("warden", "Wardens"),
    "minecraft:zombie_villager": new TrophyMob("zombie_villager", "Zombie Villagers")

} as TrophyMob[string];

events.register<crafttweaker.forge.api.event.interact.RightClickBlockEvent>(event => {
    var player = event.entity;
    var level = player.level;
    var pos = event.blockPos;
    if level.isClientSide {
      // Do nothing on the client
      return;
    }


    if level.getBlockState(pos).block == <block:obtrophies:trophy> {
      var mayBe = level.getBlockEntity(pos);
      if mayBe != null {
        var be = mayBe as BlockEntity;
        var data = be.data;
        var type = data["entity"].getAsString();

        if type in mobs {
          mobs[type].toggleStage(player);
        }
      }
    }

});







//Zombie Staging
mods.recipestages.Recipes.addShaped("zombie", "zombie_gateway", <item:gateways:gate_pearl>.withTag({gateway: "gateways:zombie_gate_small"}),[[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:iron_ingot>],[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]]);

/*
events.register<crafttweaker.forge.api.event.interact.RightClickBlockEvent>(event => {
    var player = event.entity;
    var hasStage = player.hasGameStage("zombie");
    if !player.level.isClientSide && player.level.getBlockState(event.blockPos).block.registryName == <resource:obtrophies:trophy> {
      if hasStage {
        player.removeGameStage("zombie");
        player.sendMessage("Zombies will no longer spawn!");
      } else {
        player.addGameStage("zombie");
        player.sendMessage("Zombies will now spawn!");
      }
    }
});
*/

<block:obtrophies:trophy>.setExplosionResistance(1200);