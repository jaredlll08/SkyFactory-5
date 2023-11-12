import crafttweaker.api.data.IData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.random.Percentaged;
import stdlib.List;

public class CreateSifterRecipeManager {
  public static val DEFAULT_PROCESSING_TIME as int = 200;
  public static val DEFAULT_WATERLOGGED as bool = false;
  public static val DEFAULT_MIN_SPEED as float = 1.0;

  public static addRecipe(recipeName: string, inputs: IItemStack[], outputs: Percentaged<IItemStack>[], processingTime: int): void {
    this.addRecipe(recipeName, inputs, outputs, processingTime, this.DEFAULT_WATERLOGGED, this.DEFAULT_MIN_SPEED);
  }

  public static addRecipe(recipeName: string, inputs: IItemStack[], outputs: Percentaged<IItemStack>[], processingTime: int, waterlogged: bool): void {
    this.addRecipe(recipeName, inputs, outputs, processingTime, waterlogged, this.DEFAULT_MIN_SPEED);
  }

  public static addRecipe(recipeName: string, inputs: IItemStack[], outputs: Percentaged<IItemStack>[], processingTime: int, minimumSpeed: float): void {
    this.addRecipe(recipeName, inputs, outputs, processingTime, this.DEFAULT_WATERLOGGED, minimumSpeed);
  }

  public static addRecipe(recipeName: string, inputs: IItemStack[], outputs: Percentaged<IItemStack>[], processingTime: int, waterlogged: bool, minimumSpeed: float): void {
    val recipe: IData = {
      ingredients: DataConverter.convertItemStackArray(inputs),
      results: DataConverter.convertPercentagedItemStackArray(outputs),
      processingTime: processingTime,
      waterlogged: waterlogged,
      minimumSpeed: minimumSpeed
    };

    <recipetype:createsifter:sifting>.addJsonRecipe(recipeName, recipe);
  }
}
