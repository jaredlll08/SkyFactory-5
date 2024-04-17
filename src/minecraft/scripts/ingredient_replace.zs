import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.ingredient.IIngredient;

Replacer.create()
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:industrialforegoing:machine_frame_pity>, <item:thermal:machine_frame>)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:industrialforegoing:machine_frame_simple>, <item:thermal:machine_frame>)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:industrialforegoing:machine_frame_advanced>, <item:thermal:machine_frame>)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:industrialforegoing:machine_frame_supreme>, <item:thermal:machine_frame>)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:thermal:cured_rubber>, <item:industrialforegoing:dryrubber>)
.execute();
