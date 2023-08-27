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
    //Hostile Entities
    "minecraft:blaze": new TrophyMob("blaze", "Blazes"),  
    "minecraft:cave_spider": new TrophyMob("cave_spider", "Cave Spiders"),
    "minecraft:creeper": new TrophyMob("creeper", "Creepers"),
    "minecraft:enderman": new TrophyMob("enderman", "Endermen"),
    "minecraft:endermite": new TrophyMob("endermite", "Endermites"),
    "minecraft:evoker": new TrophyMob("evoker", "Evokers"),
    "minecraft:ghast": new TrophyMob("ghast", "Ghasts"),
    "minecraft:guardian": new TrophyMob("guardian", "Guardians"),
    "minecraft:hoglin": new TrophyMob("hoglin", "Hoglins"),
    "minecraft:husk": new TrophyMob("husk", "Husks"),
    "minecraft:illusioner": new TrophyMob("illusioner", "Illusioners"),
    "minecraft:magma_cube": new TrophyMob("magma_cube", "Magma Cubes"),
    "minecraft:phantom": new TrophyMob("phantom", "Phantoms"),
    "minecraft:piglin": new TrophyMob("piglin", "Piglins"),
    "minecraft:piglin_brute": new TrophyMob("piglin_brute", "Piglin Brutes"),
    "minecraft:pillager": new TrophyMob("pillager", "Pillagers"),
    "minecraft:ravager": new TrophyMob("ravager", "Ravagers"),
    "minecraft:shulker": new TrophyMob("shulker", "Shulkers"),
    "minecraft:silverfish": new TrophyMob("silverfish", "Silverfish"),
    "minecraft:skeleton": new TrophyMob("skeleton", "Skeletons"),
    "minecraft:slime": new TrophyMob("slime", "Slimes"),
    "minecraft:spider": new TrophyMob("spider", "Spiders"),
    "minecraft:stray": new TrophyMob("stray", "Strays"),
    "minecraft:vex": new TrophyMob("vex", "Vexes"),
    "minecraft:vindicator": new TrophyMob("vindicator", "Vindicators"),
    "minecraft:warden": new TrophyMob("warden", "Wardens"),
    "minecraft:witch": new TrophyMob("witch", "Witches"),
    "minecraft:wither": new TrophyMob("wither", "Withers"),
    "minecraft:wither_skeleton": new TrophyMob("wither_skeleton", "Wither Skeletons"),
    "minecraft:zoglin": new TrophyMob("zoglin", "Zoglins"),
    "minecraft:zombie": new TrophyMob("zombie", "Zombies"),
    "minecraft:zombie_villager": new TrophyMob("zombie_villager", "Zombie Villagers"),
    "minecraft:zombified_piglin": new TrophyMob("zombified_piglin", "Zombified Piglins"),
    //Passive Breedable Entities
    "minecraft:axolotl": new TrophyMob("axolotl", "Axolotls"),
    "minecraft:bee": new TrophyMob("bee", "Bees"),
    "minecraft:camel": new TrophyMob("camel", "Camels"),
    "minecraft:cat": new TrophyMob("cat", "Cats"),
    "minecraft:chicken": new TrophyMob("chicken", "Chickens"),
    "minecraft:cow": new TrophyMob("cow", "Cows"),
    "minecraft:donkey": new TrophyMob("donkey", "Donkeys"),
    "minecraft:fox": new TrophyMob("fox", "Foxes"),
    "minecraft:frog": new TrophyMob("frog", "Frogs"),
    "minecraft:goat": new TrophyMob("goat", "Goats"),
    "minecraft:horse": new TrophyMob("horse", "Horses"),
    "minecraft:llama": new TrophyMob("llama", "Llamas"),
    "minecraft:mooshroom": new TrophyMob("mooshroom", "Mooshrooms"),
    "minecraft:ocelot": new TrophyMob("ocelot", "Ocelots"),
    "minecraft:panda": new TrophyMob("panda", "Pandas"),
    "minecraft:pig": new TrophyMob("pig", "Pigs"),
    "minecraft:rabbit": new TrophyMob("rabbit", "Rabbits"),
    "minecraft:sheep": new TrophyMob("sheep", "Sheep"),
    "minecraft:sniffer": new TrophyMob("sniffer", "Sniffers"),
    "minecraft:strider": new TrophyMob("strider", "Striders"),
    "minecraft:wolf": new TrophyMob("wolf", "Wolves"),
    //Fishy Entities
    "minecraft:cod": new TrophyMob("cod", "Cod"),   
    "minecraft:glow_squid": new TrophyMob("glow_squid", "Glow Squid"),
    "minecraft:pufferfish": new TrophyMob("pufferfish", "Pufferfish"),
    "minecraft:salmon": new TrophyMob("salmon", "Salmon"),
    "minecraft:squid": new TrophyMob("squid", "Squid"),
    "minecraft:tadpole": new TrophyMob("tadpole", "Tadpoles"),
    "minecraft:tropical_fish": new TrophyMob("tropical_fish", "Tropical Fish"),
    //Entities not normally naturally spawned in Forest/in general
    "minecraft:allay": new TrophyMob("allay", "Allays"),
    "minecraft:parrot": new TrophyMob("parrot", "Parrots"),
    "minecraft:polar_bear": new TrophyMob("polar_bear", "Polar Bears"),
    "minecraft:skeleton_horse": new TrophyMob("skeleton_horse", "Skeleton Horses"),
    "minecraft:turtle": new TrophyMob("turtle", "Turtles"),
    "minecraft:zombie_horse": new TrophyMob("zombie_horse", "Zombie Horses"),
    //Entities that are annoying
    "minecraft:bat": new TrophyMob("bat", "Bats"),
    ////
    //Special Case Entities
    //Villagers and Wandering Trader
    "minecraft:villager": new TrophyMob("villager", "Villagers"),
    "minecraft:wandering_trader": new TrophyMob("wandering_trader", "Wandering Traders"),
    //Golems
    "minecraft:iron_golem": new TrophyMob("iron_golem", "Iron Golems"),
    "minecraft:snow_golem": new TrophyMob("snow_golem", "Snow Golems")
    //Mules have not been added to this list because I don't know
    //if I really need to care or have the desire to add them
    //does anybody really care if I don't add them? Seriously
    //let me know in the comments if you care and don't forget
    //to ring that bell and hit that like button


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



import crafttweaker.forge.api.event.interact.EntityInteractEvent;
import crafttweaker.api.entity.type.animal.Animal;

events.register<EntityInteractEvent>(event => {
    var entity = event.target;

    // If it's not an animal, do nothing
    if !(entity is Animal) {
        return;
    }
    var animal = entity as Animal;
    var stack = event.itemStack;
    var data = entity.data;
    // Check if the mob is spawned by a gateway
    if "gateways.owner" in data["ForgeData"] {
        if animal.isFood(stack) {
            event.cancel();
        }
    }
});


import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.recipe.type.ShapedRecipe;
import stdlib.List;
import crafttweaker.api.ingredient.IIngredient;

for recipe in craftingTable.allRecipes {
    var craftingRecipe = recipe as Recipe<Container>;
    if craftingRecipe is ShapedRecipe {
        var ingredients = (craftingRecipe.ingredients as IIngredient[]).filter(ingr => !ingr.empty);
        craftingTable.removeByName(craftingRecipe.id);
        craftingTable.addShapeless("shapeless_" + craftingRecipe.id.path, craftingRecipe.resultItem, ingredients);
    }
}




//Camel
//Chickens (eggs)
//Cows
//Fox
//Frog
//Goat
//Hoglins
//Llama
//Mooshrooms
//Panda
//Pig
//Rabbits
//Sheep
//Striders
//Turtle
//Wolf/dog
//axolotl
//cat
//donkey
//horse
//villagers