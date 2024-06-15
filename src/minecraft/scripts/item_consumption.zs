import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import stdlib.List;
import crafttweaker.api.world.ServerLevel;

public class OnEat {
    public static var EATS = new List<OnEat>();
    public var toEat as IIngredient;
    public var onEaten as function(player as Player) as void;

    public this(toEat as IIngredient, onEaten as function(player as Player) as void) {
        this.toEat = toEat;
        this.onEaten = onEaten;
    }

    public static register(toEat as IIngredient, itemToGive as IItemStack) as void {
        OnEat.EATS.add(new OnEat(toEat, player => player.give(itemToGive)));
    }

    public static register(toEat as IIngredient, onEaten as function(player as Player) as void) as void {
        OnEat.EATS.add(new OnEat(toEat, onEaten));
    }

    public apply(player as Player) as void {
        var on as function(player as Player) as void = this.onEaten;
        on(player);
    }

    public static listen() as void {
        events.register<crafttweaker.forge.api.event.entity.use.LivingEntityUseItemFinishEvent>(event => {
            val entity = event.entity;
            val level = entity.level;
            if level.isClientSide || !(entity is Player) {
                return;
            }
            val player = entity as Player;
            for eat in OnEat.EATS {
                if eat.toEat.matches(event.item) {
                    // A bug requires this
                    var onEat as function(player as Player) as void = eat.onEaten;
                    onEat(player);
                }
            }
        });
    }
}

OnEat.listen();
OnEat.register(<item:minecraft:potion>.withTag({Potion: "minecraft:water"}), <item:minecraft:blue_dye>);
OnEat.register(<item:minecraft:carrot>, (player) => {
    var effect = new crafttweaker.api.entity.effect.MobEffectInstance(<mobeffect:minecraft:night_vision>, 200, 2);
    player.addEffect(effect);
});

val COLOR_MAP = {
  <item:minecraft:white_dye>: "f9ffff",
  <item:minecraft:light_gray_dye>: "9c9d97",
  <item:minecraft:gray_dye>: "474f52",
  <item:minecraft:black_dye>: "1d1c21",
  <item:minecraft:yellow_dye>: "ffd83d",
  <item:minecraft:orange_dye>: "f9801d",
  <item:minecraft:red_dye>: "b02e26",
  <item:minecraft:brown_dye>: "825432",
  <item:minecraft:lime_dye>: "80c71f",
  <item:minecraft:green_dye>: "5d7c15",
  <item:minecraft:light_blue_dye>: "3ab3da",
  <item:minecraft:cyan_dye>: "169c9d",
  <item:minecraft:blue_dye>: "3c44a9",
  <item:minecraft:pink_dye>: "f38caa",
  <item:minecraft:magenta_dye>: "c64fbd",
  <item:minecraft:purple_dye>: "8932b7"
} as string[IItemStack];

for stack, color in COLOR_MAP {

    OnEat.register(stack, (player) => {
        val level = player.level;

        if level is ServerLevel {
            val sl = level as ServerLevel;
            sl.server.executeCommand("colorfulskies color @s sun " + color, player, true);
            sl.server.executeCommand("colorfulskies color @s moon " + color, player, true);
            sl.server.executeCommand("colorfulskies color @s sunrise " + color, player, true);
            sl.server.executeCommand("colorfulskies color @s sky " + color, player, true);
            sl.server.executeCommand("colorfulskies color @s cloud " + color, player, true);
        }
});
}
