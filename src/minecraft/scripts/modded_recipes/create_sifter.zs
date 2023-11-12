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

  val gatewaysForColorList = new List<Percentaged<IItemStack>>();
  for gateway in gatewayIDsForColor {
    gatewaysForColorList.add(<item:gateways:gate_pearl>.withTag({gateway: gateway}) % chancePerGateway);
  }

  val gatewaysForColor = gatewaysForColorList as Percentaged<IItemStack>[];

  for i, gateway in gatewaysForColor {
    <recipetype:createsifter:sifting>.addRecipe(
      color.getResourceName() + "_" + i,
      gatewaysForColor,
      [gateway.getData(), <item:createsifter:string_mesh>],
      DEFAULT_PROCESSING_TIME,
      false,
      DEFAULT_MIN_SPEED
    );
  }
}
