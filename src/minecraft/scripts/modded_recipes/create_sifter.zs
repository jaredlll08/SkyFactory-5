import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.random.Percentaged;
import stdlib.List;

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
    CreateSifterRecipeManager.addRecipe(
      color.getResourceName() + "_" + i,
      <item:createsifter:string_mesh>,
      gateway.getData(),
      gatewaysForColor,
      CreateSifterRecipeManager.DEFAULT_PROCESSING_TIME
    );
  }
}
