import crafttweaker.api.ingredient.IIngredient;
// This script handles Ore Unification and Cleanup


function removeAll(ingredient as IIngredient) as void {
    for recipeType in game.recipeTypes {
        if !("immersiveengineering" in recipeType.commandString) && !("sushigocrafting" in recipeType.commandString) {
            recipeType.remove(ingredient);
        }
    }
}

val blocklist = [
  <item:exnihilosequentia:aluminum_ingot>,
  <item:exnihilosequentia:aluminum_nugget>,
  <item:exnihilosequentia:aluminum_pieces>,
  <item:exnihilosequentia:copper_nugget>,
  <item:exnihilosequentia:copper_pieces>,
  <item:exnihilosequentia:gold_pieces>,
  <item:exnihilosequentia:iron_pieces>,
  <item:exnihilosequentia:lead_ingot>,
  <item:exnihilosequentia:lead_nugget>,
  <item:exnihilosequentia:lead_pieces>,
  <item:exnihilosequentia:nickel_ingot>,
  <item:exnihilosequentia:nickel_nugget>,
  <item:exnihilosequentia:nickel_pieces>,
  <item:exnihilosequentia:platinum_ingot>,
  <item:exnihilosequentia:platinum_nugget>,
  <item:exnihilosequentia:platinum_pieces>,
  <item:exnihilosequentia:raw_aluminum>,
  <item:exnihilosequentia:raw_lead>,
  <item:exnihilosequentia:raw_nickel>,
  <item:exnihilosequentia:raw_platinum>,
  <item:exnihilosequentia:raw_silver>,
  <item:exnihilosequentia:raw_tin>,
  <item:exnihilosequentia:raw_uranium>,
  <item:exnihilosequentia:raw_zinc>,
  <item:exnihilosequentia:silver_ingot>,
  <item:exnihilosequentia:silver_nugget>,
  <item:exnihilosequentia:silver_pieces>,
  <item:exnihilosequentia:tin_ingot>,
  <item:exnihilosequentia:tin_nugget>,
  <item:exnihilosequentia:tin_pieces>,
  <item:exnihilosequentia:uranium_ingot>,
  <item:exnihilosequentia:uranium_nugget>,
  <item:exnihilosequentia:uranium_pieces>,
  <item:exnihilosequentia:zinc_ingot>,
  <item:exnihilosequentia:zinc_nugget>,
  <item:exnihilosequentia:zinc_pieces>,
 <item:occultism:silver_ingot>,
   <item:immersiveengineering:dust_constantan>,
  <item:immersiveengineering:dust_electrum>,
  <item:immersiveengineering:ingot_constantan>,
  <item:immersiveengineering:ingot_constantan>,
  <item:immersiveengineering:ingot_electrum>,
  <item:immersiveengineering:ingot_lead>,
  <item:immersiveengineering:ingot_nickel>,
  <item:immersiveengineering:ingot_silver>,
  <item:immersiveengineering:nugget_constantan>,
  <item:immersiveengineering:plate_constantan>,
  <item:immersiveengineering:storage_constantan>,
  <item:immersiveengineering:ingot_steel>,
  <item:immersiveengineering:nugget_steel>,
  <item:immersiveengineering:plate_steel>,
  <item:immersiveengineering:dust_steel>,
  <item:industrialforegoing:iron_gear>,
  <item:industrialforegoing:tinydryrubber>
] as IIngredient[];


for item in blocklist {
  removeAll(item);
}


