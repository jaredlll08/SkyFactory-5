#modloaded enderio

import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.util.random.Percentaged;
import stdlib.List;

public class EnderIOSagMill {
  public static addRecipe(recipeName: string, input: IItemStack, outputs: Percentaged<IItemStack>[], energy: int): void {
    val recipe: IData = {
      energy: energy,
      input: {
        item: input.registryName
      },
      outputs: this.getOutputData(outputs)
    };

    <recipetype:enderio:sag_milling>.addJsonRecipe(recipeName, recipe);
  }

  public static addRecipe(recipeName: string, input: KnownTag<ItemDefinition>, outputs: Percentaged<IItemStack>[], energy: int): void {
    val recipe: IData = {
      energy: energy,
      input: {
        tag: input.id()
      },
      outputs: this.getOutputData(outputs)
    };

    <recipetype:enderio:sag_milling>.addJsonRecipe(recipeName, recipe);
  }

  private static getOutputData(outputs: Percentaged<IItemStack>[]): ListData {
    val outputsData = new List<IData>();

    for output in outputs {
      val outputData: MapData = new MapData();

      outputData.put("item", output.getData().registryName);
      outputData.put("chance", output.getPercentage());

      if output.getData() is IIngredientWithAmount {
        outputData.put("count", (output.getData() as IIngredientWithAmount).amount);
      }

      outputsData.add(outputData);
    }

    return new ListData(outputsData);
  }
}
