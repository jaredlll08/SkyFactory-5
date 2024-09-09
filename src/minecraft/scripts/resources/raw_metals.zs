// Script for obtaining base items/resources from dyes

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

public class MaterialCraftingRecipe {
  private static val DEFAULT_WEIGHT = 100;

  private val recipeName as string;
  private val output as IItemStack;
  private val ingredients as IIngredient[];
  private val weight as int;

  public this(recipeName: string, output: IItemStack, ingredients: IIngredient[]) {
    this(recipeName, output, ingredients, DEFAULT_WEIGHT);
  }

  public this(recipeName: string, output: IItemStack, ingredients: IIngredient[], weight: int) {
    this.recipeName = recipeName;
    this.output = output;
    this.ingredients = ingredients;
    this.weight = weight;
  }

  public addRecipes(): void {
    craftingTable.addShapeless(
      this.recipeName,
      this.output,
      this.ingredients
    );

    ForbiddenSmoothiesPrinter.addRecipe(
      "printer_" + this.recipeName,
      this.output,
      this.ingredients,
      this.weight
    );
  }
}

// Raw Copper
new MaterialCraftingRecipe(
  "raw_copper_from_dye",
  <item:minecraft:raw_copper>,
  [
    <tag:items:forge:dyes/green>,
    <tag:items:forge:dyes/orange>,
    <tag:items:forge:dyes/orange>,
    <tag:items:forge:dyes/orange>
  ]
).addRecipes();

// Raw Iron
new MaterialCraftingRecipe(
  "raw_iron_from_dye",
  <item:minecraft:raw_iron>,
  [
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>
  ]
).addRecipes();

// Raw Gold
new MaterialCraftingRecipe(
  "raw_gold_from_dye",
  <item:minecraft:raw_gold>,
  [
    <tag:items:forge:dyes/yellow>,
    <tag:items:forge:dyes/yellow>,
    <tag:items:forge:dyes/yellow>,
    <tag:items:forge:dyes/yellow>
  ]
).addRecipes();

// Raw Zinc
new MaterialCraftingRecipe(
  "raw_zinc_from_dye",
  <item:create:raw_zinc>,
  [
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>
  ]
).addRecipes();

// Coal
new MaterialCraftingRecipe(
  "coal_from_dye",
  <item:minecraft:coal>,
  [
    <tag:items:forge:dyes/black>,
    <tag:items:forge:dyes/black>,
    <tag:items:forge:dyes/black>,
    <tag:items:forge:dyes/black>
  ]
).addRecipes();

// Redstone
new MaterialCraftingRecipe(
  "redstone_from_dye",
  <item:minecraft:redstone> * 2,
  [
    <tag:items:forge:dyes/red>,
    <tag:items:forge:dyes/red>,
    <tag:items:forge:dyes/red>
  ]
).addRecipes();

// Lapis
new MaterialCraftingRecipe(
  "lapis_from_dye",
  <item:minecraft:lapis_lazuli> * 2,
  [
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>
  ]
).addRecipes();

// Diamond
new MaterialCraftingRecipe(
  "diamond_from_dye",
  <item:minecraft:diamond>,
  [
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/cyan>
  ]
).addRecipes();

// Emerald
new MaterialCraftingRecipe(
  "emerald_from_dye",
  <item:minecraft:emerald>,
  [
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/green>
  ]
).addRecipes();

// Glowstone
new MaterialCraftingRecipe(
  "glowstone_from_dye",
  <item:minecraft:glowstone>,
  [
    <tag:items:forge:dyes/brown>,
    <tag:items:forge:dyes/brown>,
    <tag:items:forge:dyes/orange>,
    <tag:items:forge:dyes/orange>
  ]
).addRecipes();

// Amethyst
new MaterialCraftingRecipe(
  "amethyst_from_dye",
  <item:minecraft:amethyst_shard> * 2,
  [
    <tag:items:forge:dyes/purple>,
    <tag:items:forge:dyes/magenta>,
    <tag:items:forge:dyes/magenta>
  ]
).addRecipes();

// Quartz
new MaterialCraftingRecipe(
  "quartz_from_dye",
  <item:minecraft:quartz> * 2,
  [
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/light_gray>
  ]
).addRecipes();

// Raw Aluminum
new MaterialCraftingRecipe(
  "raw_aluminum_from_dye",
  <item:immersiveengineering:raw_aluminum>,
  [
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/orange>,
    <tag:items:forge:dyes/orange>,
    <tag:items:forge:dyes/orange>
  ]
).addRecipes();

// Raw Lead
new MaterialCraftingRecipe(
  "raw_lead_from_dye",
  <item:thermal:raw_lead>,
  [
    <tag:items:forge:dyes/purple>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>
  ]
).addRecipes();

// Raw Silver
new MaterialCraftingRecipe(
  "raw_silver_from_dye",
  <item:thermal:raw_silver>,
  [
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>
  ]
).addRecipes();

// Raw Nickel
new MaterialCraftingRecipe(
  "raw_nickel_from_dye",
  <item:thermal:raw_nickel>,
  [
    <tag:items:forge:dyes/yellow>,
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/white>
  ]
).addRecipes();

// Raw Uranium
new MaterialCraftingRecipe(
  "raw_uranium_from_dye",
  <item:immersiveengineering:raw_uranium>,
  [
    <tag:items:forge:dyes/gray>,
    <tag:items:forge:dyes/green>,
    <tag:items:forge:dyes/green>,
    <tag:items:forge:dyes/green>
  ]
).addRecipes();

// Raw Tin
new MaterialCraftingRecipe(
  "raw_tin_from_dye",
  <item:thermal:raw_tin>,
  [
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/light_blue>,
    <tag:items:forge:dyes/light_blue>
  ]
).addRecipes();

// Ender Pearl
new MaterialCraftingRecipe(
  "ender_pearl_from_dye",
  <item:minecraft:ender_pearl>,
  [
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/green>
  ]
).addRecipes();

// Certus Quartz Crystal
new MaterialCraftingRecipe(
  "certus_quartz_from_dye",
  <item:ae2:certus_quartz_crystal>,
  [
    <tag:items:forge:dyes/light_blue>,
    <tag:items:forge:dyes/light_blue>,
    <tag:items:forge:dyes/light_blue>,
    <tag:items:forge:dyes/light_blue>
  ]
).addRecipes();

// SkyStone Dust
new MaterialCraftingRecipe(
  "sky_stone_from_dye",
  <item:ae2:sky_dust> * 2,
  [
    <tag:items:forge:dyes/gray>,
    <tag:items:forge:dyes/gray>,
    <tag:items:forge:dyes/light_blue>
  ]
).addRecipes();

// Draconic Evolution
new MaterialCraftingRecipe(
  "draconium_dust_from_dye",
  <item:draconicevolution:draconium_dust> * 1,
  [
    <tag:items:forge:dyes/purple>,
    <tag:items:forge:dyes/magenta>,
    <tag:items:forge:dyes/magenta>,
    <tag:items:forge:dyes/magenta>
  ]
).addRecipes();
