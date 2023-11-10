ContentBuilder.factory
  .addRecipeGenerator("_dye_from_processing_items", (baseName, args) => {
    val dye = args.items[ColoredItem.Dye];
    val coloredProcessingItemTag = args.itemTags[ColoredItemTag.ColoredProcessingItem];

    if dye == null || coloredProcessingItemTag == null {
      return;
    }

    EnderIOSagMill.addRecipe(
      args.color.getResourceName() + baseName,
      coloredProcessingItemTag,
      [
        dye,
        dye % 50,
        dye % 15,
      ],
      500
    );
  });
