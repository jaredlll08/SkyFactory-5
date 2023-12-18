import mods.exnihilosequentia.MeltingRecipe;
import mods.exnihilosequentia.CrucibleType;


// Sets up Ex Nihilo Crucible Melting recipes
<recipetype:exnihilosequentia:melting>.addRecipe("stone_melting_to_lava_via_tag", <tag:items:forge:stone>, <fluid:minecraft:lava> * 250, CrucibleType.fired());
<recipetype:exnihilosequentia:melting>.addRecipe("cobblestone_melting_to_lava_via_tag", <tag:items:forge:cobblestone>, <fluid:minecraft:lava> * 250, CrucibleType.fired());
