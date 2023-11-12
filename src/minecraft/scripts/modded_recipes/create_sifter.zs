import collections.HashSet;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.random.Percentaged;
import stdlib.List;

val DEFAULT_PROCESSING_TIME as int = 200;
val DEFAULT_WATERLOGGED as bool = false;
val DEFAULT_MIN_SPEED as int = 1;

val TOTAL_CHANCE_FOR_OUTPUTS as int = 25;

// Gateway and Trophy Recycling
for colorName, color in Globals.colors {
  val gatewayIDsForColor = getGatewaysForColor(color);
  if gatewayIDsForColor.length == 0 {
    continue;
  }

  val filteredGatewayIDs = new HashSet<string>();
  for gatewayID in gatewayIDsForColor {
    if !("frog_kill" in gatewayID) {
      filteredGatewayIDs.add(gatewayID);
    }
  }

  for i, gatewayID in gatewayIDsForColor {
    var totalGateways = filteredGatewayIDs.length as float;
    if gatewayID in filteredGatewayIDs {
      totalGateways -= 1;
    }

    val chancePerGateway = (TOTAL_CHANCE_FOR_OUTPUTS as float) / totalGateways;

    val sifterOutputList = new List<Percentaged<IItemStack>>();
    for id in filteredGatewayIDs {
      if id != gatewayID {
        sifterOutputList.add(<item:gateways:gate_pearl>.withTag({gateway: id}) % chancePerGateway);
      }
    }

    val sifterOutput = sifterOutputList as Percentaged<IItemStack>[];

    <recipetype:createsifter:sifting>.addRecipe(
      color.getResourceName() + "_" + i,
      sifterOutput,
      [
        <item:gateways:gate_pearl>.withTag({gateway: gatewayID}),
        <item:createsifter:string_mesh>
      ],
      DEFAULT_PROCESSING_TIME,
      false,
      DEFAULT_MIN_SPEED
    );

    if !("frog_kill" in gatewayID) {
      <recipetype:createsifter:sifting>.addRecipe(
        color.getResourceName() + "_trophy_" + i,
        sifterOutput,
        [
          <item:obtrophies:trophy>.withTag({BlockEntityTag: {VariantID: 0, entity: Globals.gatewayEntityMapping[gatewayID].getRegistryName()}}),
          <item:createsifter:string_mesh>
        ],
        DEFAULT_PROCESSING_TIME,
        false,
        DEFAULT_MIN_SPEED
      );
    }
  }
}
