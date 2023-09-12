// Adds recipe for Logs to Planks while preserving BlockStateTag
// allowing for Log Color to output same color for Planks

// var colors as string[] = [
// "none",
// "red",
// "green",
// "lime",
// "blue",
// "light_blue",
// "gray",
// "light_gray",
// "yellow",
// "purple",
// "magenta",
// "pink",
// "white",
// "black",
// "brown",
// "cyan",
// "orange"
// ];
//
// for color in colors {
//  craftingTable.addShapeless(
//    "colored_planks_" + color,
//    <item:colouredstuff:planks>.withTag({BlockStateTag: {color: color}}) * 4,
//    [<item:colouredstuff:log>.withTag({BlockStateTag: {color: color}})],
//    (usualOut, inputs) => {
//      var defaultOut = usualOut.withTag({BlockStateTag: {color: "none"}}) * 4;
//
//      var input = inputs[0];
//      if input == null || input.tag == null {
//        return defaultOut;
//      }
//
//      var blockStateTag as IData = input.tag.asMap()["BlockStateTag"];
//      if blockStateTag == null {
//        return defaultOut;
//      }
//
//      var colorData as color = blockStateTag.asMap()["color"];
//      if colorData == null {
//        return defaultOut;
//      }
//
//      return usualOut.withTag({BlockStateTag: {color: colorData.asString()}}) * 4;
//    }
//  );
// }
