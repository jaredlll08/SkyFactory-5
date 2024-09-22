import crafttweaker.api.world.ServerLevel;
import crafttweaker.api.entity.type.player.Player;
import mods.gateways.events.GateOpenedEvent;

val stages = [
"all_colors",
"red",
"green",
"lime",
"blue",
"lightblue",
"light_blue",
"gray",
"lightgray",
"light_gray",
"yellow",
"purple",
"magenta",
"pink",
"white",
"black",
"brown",
"cyan",
"orange"
];

// listen for gateways being open
events.register<GateOpenedEvent>(event => {

    val entity = event.entity;
    val level = entity.level;

    // we only want to run this on the server
    if !(level is ServerLevel) {
        return;
    }
    // We can't get the id from entity.gateway because entity.gateway returns "Gateway" but "Gateway"
    // is not exposed to scripts, only "NormalGateway", this is an issue for shadows to fix
    val gatewayId = entity.data["gate"].getAsString();
    // We only want to run with challenge gateways
    if !gatewayId.startsWith("gateways:challenge/challenge_") {
        return;
    }
    // $ is a keyword for the end of a string, when in a range
    val color = gatewayId["gateways:challenge/challenge_".length .. $];

    val sl = level as ServerLevel;
    // Should probably get these from the config, or the Gateway itself, but see above note about using the gateway type
    val pos1 = entity.blockPosition.north(32).east(32).above(32);
    val pos2 = entity.blockPosition.south(32).west(32).below(32);
    // This list will be stored for later, as long as the player still exists, it will store them
    val players = level.getEntitiesInArea<Player?>(pos1, pos2);

    sl.sequence().run(level => {
        // Remove all the stages from the player
       for player in players {
            if player !=null {
                player.removeGameStage(stages.filter(stage => stage != color));
            }

       }
    }).sleepUntil(level => {
        // wait until the gate is dead
        return !entity.isAlive;
    }).run(level => {
        // gate is dead, time to return the stages
        for player in players {
            if player != null {
                for tag in player.tags {
                    if tag.endsWith("_stage") {
                        player.addGameStage(tag[0 .. ($ - "_stage".length)]);
                    }
                }
            }
        }
    }).start();

});
