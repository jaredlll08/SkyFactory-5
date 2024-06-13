import crafttweaker.forge.api.event.interact.RightClickBlockEvent;
import crafttweaker.api.block.entity.BlockEntity;

events.register<RightClickBlockEvent>((event) => {
    val player = event.entity;
    val pos = event.blockPos;
    val level = player.level;
    val heldItem = event.itemStack;
    if level.isClientSide {
        return;
    }
    val mbe = level.getBlockEntity(pos);
    if mbe is BlockEntity {
        val be = mbe as BlockEntity;
        if be.registryName == <resource:minecraft:mob_spawner> {

            var toSpawn = "";
            // Add stuff here
            if <item:minecraft:stick>.matches(heldItem) {
                toSpawn = "minecraft:sheep";
            } else if <item:minecraft:diamond>.matches(heldItem) {
                toSpawn = "minecraft:chicken";
            }

            if !toSpawn.blank {
                val data = be.data;
                if !("SpawnData" in data) {
                    data["SpawnData"] = {};
                }
                if !("entity" in data["SpawnData"]) {
                    data["SpawnData"]["entity"] = {};
                }
                data["SpawnData"]["entity"]["id"] = toSpawn;
                be.updateData(data);
            }
        }
    }
});
