// Milling Recipes
ContentBuilder.factory
  .addRecipeGenerator("_items_to_dye", (baseName, args) => {
    val dye = args.items[ColoredItem.Dye];
    val coloredProcessingItemTag = args.itemTags[ColoredItemTag.ColoredProcessingItem];

    if dye == null || coloredProcessingItemTag == null {
      return;
    }

    <recipetype:create:milling>.addRecipe(
      args.color.getResourceName() + baseName,
      [
        dye,
        dye % 35
      ],
      coloredProcessingItemTag.asIIngredient(),
      100
    );
  })
  .addRecipeGenerator("_wool", (baseName, args) => {
    val dye = args.items[ColoredItem.Dye];
    val woolItem = args.items[ColoredItem.Wool];

    if dye == null || woolItem == null {
      return;
    }

    <recipetype:create:milling>.addRecipe(
      args.color.getResourceName() + baseName,
      [
        <item:minecraft:string>,
        dye % 25
      ],
      woolItem,
      100
    );
  });
