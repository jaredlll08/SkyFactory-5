import crafttweaker.forge.api.event.interact.RightClickBlockEvent;
import crafttweaker.api.block.Block;
import crafttweaker.api.world.ServerLevel;

val COLOR_MAP = {
  <block:minecraft:white_concrete>: "f9ffff",
  <block:minecraft:light_gray_concrete>: "9c9d97",
  <block:minecraft:gray_concrete>: "474f52",
  <block:minecraft:black_concrete>: "1d1c21",
  <block:minecraft:yellow_concrete>: "ffd83d",
  <block:minecraft:orange_concrete>: "f9801d",
  <block:minecraft:red_concrete>: "b02e26",
  <block:minecraft:brown_concrete>: "825432",
  <block:minecraft:lime_concrete>: "80c71f",
  <block:minecraft:green_concrete>: "5d7c15",
  <block:minecraft:light_blue_concrete>: "3ab3da",
  <block:minecraft:cyan_concrete>: "169c9d",
  <block:minecraft:blue_concrete>: "3c44a9",
  <block:minecraft:pink_concrete>: "f38caa",
  <block:minecraft:magenta_concrete>: "c64fbd",
  <block:minecraft:purple_concrete>: "8932b7"
} as string[Block];

events.register<RightClickBlockEvent>(event => {
    val pos = event.blockPos;
    val player = event.entity;
    val level = player.level;
    if level.isClientSide || !(level is ServerLevel) {
        return;
    }
    val sl = level as ServerLevel;
    val state = level.getBlockState(pos);
    if state.block == <block:minecraft:lever> {
        val facing = state.getPropertyValue("facing");
        val face = state.getPropertyValue("face");

        var direction = <constant:minecraft:direction:down>;
        if face == "CEILING" {
            direction = <constant:minecraft:direction:up>;
        } else if face == "FLOOR" {
            direction = <constant:minecraft:direction:down>;
        } else {
            switch facing {
                case "west":
                    direction = <constant:minecraft:direction:east>;
                    break;
                case "east":
                    direction = <constant:minecraft:direction:west>;
                    break;
                case "up":
                    direction = <constant:minecraft:direction:down>;
                    break;
                case "down":
                    direction = <constant:minecraft:direction:up>;
                    break;
                case "north":
                    direction = <constant:minecraft:direction:south>;
                    break;
                case "south":
                    direction = <constant:minecraft:direction:north>;
                    break;
                }
        }

        val onBlock = level.getBlockState(pos.relative(direction)).block;
        if onBlock in COLOR_MAP {
            sl.server.executeCommand("colorfulskies color @s sun " + COLOR_MAP[onBlock], player, true);
            sl.server.executeCommand("colorfulskies color @s moon " + COLOR_MAP[onBlock], player, true);
            sl.server.executeCommand("colorfulskies color @s sunrise " + COLOR_MAP[onBlock], player, true);
            sl.server.executeCommand("colorfulskies color @s sky " + COLOR_MAP[onBlock], player, true);
            sl.server.executeCommand("colorfulskies color @s cloud " + COLOR_MAP[onBlock], player, true);
        }

    }
});
