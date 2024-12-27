import crafttweaker.forge.api.event.interact.RightClickBlockEvent;
import crafttweaker.api.block.entity.BlockEntity;
import crafttweaker.api.data.IData;

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

        val spawnData = {
          entity: {
            id: toSpawn
          }
        } as IData;
        data["SpawnData"] = spawnData;
        data["SpawnPotentials"] = [];
        data["SpawnPotentials"].add({data: spawnData});
        blockEntity.updateData(data);

        event.cancel();
      }
    }
});
