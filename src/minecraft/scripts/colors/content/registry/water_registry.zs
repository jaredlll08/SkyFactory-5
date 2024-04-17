import crafttweaker.api.bracket.BracketHandlers;

ContentBuilder.factory.registerWater((color) => {
  if color.getName() == ColorName.None {
    return null;
  }

  return BracketHandlers.getFluidStack("colouredstuff:" + "water_" + color.getResourceName());
});


