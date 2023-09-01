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
    "minecraft:drowned": new TrophyMob("drowned", "Drowned"),
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



////
//Block attributes
////
//Trophy protection from explosions
<block:obtrophies:trophy>.setExplosionResistance(1200);


////
//Blocking breedable entities from being fed
//when they spawn from a Gateway
////
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


//Recipe removal test for Cooking for Blockheads debug
//craftingTable.removeByName("crafttweaker:shapeless_iron_axe");



//Debug recipes for testing
//mods.recipestages.Recipes.addShaped("debug_stage", "silent_tools_test", <item:minecraft:iron_leggings>,[[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:iron_ingot>],[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:silentgear:pickaxe>.withTag({SGear_UUID: [-1513530654, 2097039455, -1343663264, 537535244], SGear_Data: {Construction: {Parts: [{Item: {id: "silentgear:pickaxe_head", Count: 1, tag: {Damage: 0, Materials: [{Item: {id: "minecraft:diamond", Count: 1}, ID: "silentgear:diamond", Count: 3}]}}, ID: "silentgear:pickaxe_head"}, {Item: {id: "silentgear:rod", Count: 1, tag: {Materials: [{Item: {id: "minecraft:bamboo_planks", Count: 1}, ID: "silentgear:wood"}]}}, ID: "silentgear:rod"}]}, Properties: {ModVersion: "3.5.0", Stats: {"silentgear:charging_value": 0.8, "silentgear:enchantment_value": 10.0, "silentgear:harvest_speed": 8.0, "silentgear:attack_reach": 3.0, "silentgear:harvest_level": 3.0, "silentgear:durability": 1561.0, "silentgear:melee_damage": 4.0, "silentgear:magic_damage": 1.0, "silentgear:rarity": 69.99999, "silentgear:attack_speed": -2.8, "silentgear:repair_efficiency": 1.0}, LockStats: 0, Traits: [{Level: 2, Name: "silentgear:brittle"}, {Level: 1, Name: "silentgear:lustrous"}, {Level: 2, Name: "silentgear:flexible"}]}, Rendering: {Model: 3, ModelKey: "pickaxe:pickaxe_head{diamond,diamond,diamond},rod{wood},"}}})]]);



//Testing recipes using Cyclic Solidifier
var solidifier = <recipetype:cyclic:solidifier>;

solidifier.addRecipe("megaman1", [<item:minecraft:sand>,<item:minecraft:birch_trapdoor>,<item:minecraft:sand>], <fluid:cyclic:honey>*100, <item:minecraft:stone_hoe>, 200, 8);




//Recipes made for player convenience
craftingTable.addShaped("hopper_logs", <item:minecraft:hopper>, [
    [<item:minecraft:iron_ingot>, <tag:items:minecraft:logs>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <tag:items:minecraft:logs>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

craftingTable.addShaped("chest_logs", <item:minecraft:chest> * 4, [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:air>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]]);

//craftingTable.addShapeless("chop_ingot", <item:minecraft:gold_nugget> * 10, [<item:minecraft:gold_ingot>, <item:minecraft:flint>]);
/*
craftingTable.addShapeless("cfb_test", <item:minecraft:iron_pickaxe>, [
    <item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]);
*/



/*
////
//Converts all recipes in-game to be shapeless recipes
////
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
*/


//Stage helper for staging loot tables
//Examples for how to give player's stages on events
/*
import mods.gamestages.StageHelper;

StageHelper.grantStageWhenCrafting(<item:minecraft:stick>, "craft_example_one");
StageHelper.grantStageOnKill(<entitytype:minecraft:creeper>, "kill_example_one");
StageHelper.grantStageOnAdvancement("minecraft:story/enter_the_nether", "advancement_example_one");

//OnAdvancement, OnCraft, OnDimension, OnJoin, OnKill, and OnLevel
*/