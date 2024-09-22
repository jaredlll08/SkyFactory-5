import crafttweaker.api.item.IItemStack;

 // Sets item durability

val modIDsForDurability as string[][int] = {
  -1: [
    "create_sabers",
    "minecraft",
    "monsterplus",
    "simpletomb",
    "sushigocrafting",
    "occultism",
    "pickletweaks",
    "cyclic",
    "monsterplus",
    "ae2",
    "constructionwand",
    "silentgear",
    "exnihilosequentia",
    "forcecraft"
  ],
  9999: [],
  2147483647: [],
  2147483648: [],
  999999999999: []
};

for durability, modIDs in modIDsForDurability {
  for modID in modIDs {
    for item in loadedMods[modID].getItems() {
      item.getDefaultInstance().maxDamage = durability;
    }
  }
}

val itemsForDurability as IItemStack[][int] = {
  -1: [
    <item:pizzacraft:stone_pizza_peel>,
    <item:pizzacraft:iron_pizza_peel>,
    <item:pizzacraft:golden_pizza_peel>,
    <item:pizzacraft:diamond_pizza_peel>,
    <item:pizzacraft:netherite_pizza_peel>,
    <item:vinery:straw_hat>,
    <item:immersiveengineering:wirecutter>,
    <item:immersiveengineering:hammer>,
  // Modular Golems
    <item:modulargolems:roman_guard_helmet>,
    <item:modulargolems:roman_guard_chestplate>,
    <item:modulargolems:roman_guard_shinguard>,
    <item:modulargolems:wind_spirit_helmet>,
    <item:modulargolems:wind_spirit_chestplate>,
    <item:modulargolems:wind_spirit_shinguard>,
    <item:modulargolems:wind_spirit_shinguard>,
    <item:modulargolems:wind_spirit_shinguard>,
    <item:modulargolems:barbaric_vanguard_helmet>,
    <item:modulargolems:barbaric_vanguard_chestplate>,
    <item:modulargolems:barbaric_vanguard_shinguard>,
    <item:modulargolems:iron_golem_spear>,
    <item:modulargolems:diamond_golem_spear>,
    <item:modulargolems:netherite_golem_spear>,
    <item:modulargolems:iron_golem_axe>,
    <item:modulargolems:diamond_golem_axe>,
    <item:modulargolems:netherite_golem_axe>,
    <item:modulargolems:iron_golem_sword>,
    <item:modulargolems:diamond_golem_sword>,
    <item:modulargolems:netherite_golem_sword>,



  ],
  9999: [
    <item:sophisticatedstorage:packing_tape>
  ],
  2147483647: [
    <item:create:super_glue>,
    <item:create:sand_paper>
  ]
};

for durability, items in itemsForDurability{
  for item in items {
      item.maxDamage = durability;
  }
}


// for item in loadedMods["minecraft"].itemStacks {
//  item.maxDamage = -1;
// }
