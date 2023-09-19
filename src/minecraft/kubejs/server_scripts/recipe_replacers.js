ServerEvents.recipes((event) => {
  // Swap `minecraft:crafting_table` with `forge:workbench` tag
  event.replaceInput(
    { input: "minecraft:crafting_table" },
    "minecraft:crafting_table",
    "#forge:workbench",
  );
});
