import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.random.Percentaged;
import stdlib.List;

val DEFAULT_PROCESSING_TIME as int = 200;
val DEFAULT_WATERLOGGED as bool = false;
val DEFAULT_MIN_SPEED as int = 1;

val TOTAL_CHANCE_FOR_OUTPUTS as int = 25;

for colorName, color in Globals.colors {
  val gatewayIDsForColor = getGatewaysForColor(color);
  if gatewayIDsForColor.length == 0 {
    continue;
  }

  val chancePerGateway = (TOTAL_CHANCE_FOR_OUTPUTS as float) / (gatewayIDsForColor.length as float);

  val sifterOutputList = new List<Percentaged<IItemStack>>();
  for gatewayID in gatewayIDsForColor {
    if !("frog_kill" in gatewayID) {
      sifterOutputList.add(<item:gateways:gate_pearl>.withTag({gateway: gatewayID}) % chancePerGateway);
    }
  }

  val sifterOutput = sifterOutputList as Percentaged<IItemStack>[];

  for i, gatewayID in gatewayIDsForColor {
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
  }
}
