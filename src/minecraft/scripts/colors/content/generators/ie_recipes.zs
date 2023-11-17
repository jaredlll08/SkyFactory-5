ContentBuilder.factory
  .addRecipeGenerator("_dye_water_ie_bottling", (baseName, args) => {
    val dyeBlockItem = args.items[ColoredItem.DyeBlock];
    val coloredWaterFluidTag = args.fluidTags[ColoredFluidTag.Water];

    if dyeBlockItem == null || coloredWaterFluidTag == null {
      return;
    }

    <recipetype:immersiveengineering:bottling_machine>.addRecipe(
      args.color.getResourceName() + baseName,
      [<tag:items:forge:sand>],
      coloredWaterFluidTag * 1000,
      [dyeBlockItem]
    );
  })
  .addRecipeGenerator("_dye_ie_crusher", (baseName, args) => {
    val dye = args.items[ColoredItem.Dye];
    val coloredProcessingItemTag = args.itemTags[ColoredItemTag.ColoredProcessingItem];

    if dye == null || coloredProcessingItemTag == null {
      return;
    }

    <recipetype:immersiveengineering:crusher>.addRecipe(
      args.color.getResourceName() + baseName,
      coloredProcessingItemTag.asIIngredient(),
      500,
      dye,
      dye % 50,
      dye % 15
    );
  })
  .addRecipeGenerator("_dye_ie_mixer", (baseName, args) => {
    val dye = args.items[ColoredItem.Dye];
    val coloredProcessingItemTag = args.itemTags[ColoredItemTag.ColoredProcessingItem];
    val water = args.water;

    if dye == null || coloredProcessingItemTag == null || water == null {
      return;
    }

    <recipetype:immersiveengineering:mixer>.addRecipe(
      args.color.getResourceName() + baseName,
      <tag:fluids:skyfactory_5:water>,
      [coloredProcessingItemTag.asIIngredient()],
      500,
      water,
      1000
    );
  });

// I have no clue why this doesn't work
/*
// Template Boards to Saw Dust
<recipetype:immersiveengineering:sawmill>.addRecipe("sawdust_from_templates", <item:immersiveengineering:dust_wood>, 1000, <item:silentgear:template_board> * 1, [<item:minecraft:air>]);
*/
