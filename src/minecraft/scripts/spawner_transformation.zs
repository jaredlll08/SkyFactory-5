import crafttweaker.forge.api.event.interact.RightClickBlockEvent;
import crafttweaker.api.block.entity.BlockEntity;

events.register<RightClickBlockEvent>((event) => {
    val level = event.entity.level;
    val heldItem = event.itemStack;

    val potentialBlockEntity = level.getBlockEntity(event.blockPos);
    if potentialBlockEntity is BlockEntity {
      val blockEntity = potentialBlockEntity as BlockEntity;

      if blockEntity.registryName == <resource:minecraft:mob_spawner> {
        if !<item:obtrophies:trophy>.matches(heldItem) || !("BlockEntityTag" in heldItem.tag) || !("entity" in heldItem.tag["BlockEntityTag"]) {
          return;
        }

        val toSpawn = heldItem.tag["BlockEntityTag"]["entity"];

        val data = blockEntity.data;
        if !("SpawnData" in data) {
          data["SpawnData"] = {};
        }
        if !("entity" in data["SpawnData"]) {
          data["SpawnData"]["entity"] = {};
        }
        data["SpawnData"]["entity"]["id"] = toSpawn;
        blockEntity.updateData(data);

        event.cancel();
      }
    }
});
