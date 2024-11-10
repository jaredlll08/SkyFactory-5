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
    <item:enderio:dark_steel_sword>,
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

    // Mystical Agriculture
    <item:mysticalagriculture:inferium_sword>,
    <item:mysticalagriculture:inferium_pickaxe>,
    <item:mysticalagriculture:inferium_shovel>,
    <item:mysticalagriculture:inferium_axe>,
    <item:mysticalagriculture:inferium_hoe>,
    <item:mysticalagriculture:inferium_bow>,
    <item:mysticalagriculture:inferium_crossbow>,
    <item:mysticalagriculture:inferium_shears>,
    <item:mysticalagriculture:inferium_fishing_rod>,
    <item:mysticalagriculture:inferium_sickle>,
    <item:mysticalagriculture:inferium_scythe>,
    <item:mysticalagriculture:prudentium_sword>,
    <item:mysticalagriculture:prudentium_pickaxe>,
    <item:mysticalagriculture:prudentium_shovel>,
    <item:mysticalagriculture:prudentium_axe>,
    <item:mysticalagriculture:prudentium_hoe>,
    <item:mysticalagriculture:prudentium_bow>,
    <item:mysticalagriculture:prudentium_crossbow>,
    <item:mysticalagriculture:prudentium_shears>,
    <item:mysticalagriculture:prudentium_fishing_rod>,
    <item:mysticalagriculture:prudentium_sickle>,
    <item:mysticalagriculture:prudentium_scythe>,
    <item:mysticalagriculture:tertium_sword>,
    <item:mysticalagriculture:tertium_pickaxe>,
    <item:mysticalagriculture:tertium_shovel>,
    <item:mysticalagriculture:tertium_axe>,
    <item:mysticalagriculture:tertium_hoe>,
    <item:mysticalagriculture:tertium_bow>,
    <item:mysticalagriculture:tertium_crossbow>,
    <item:mysticalagriculture:tertium_shears>,
    <item:mysticalagriculture:tertium_fishing_rod>,
    <item:mysticalagriculture:tertium_sickle>,
    <item:mysticalagriculture:tertium_scythe>,
    <item:mysticalagriculture:imperium_sword>,
    <item:mysticalagriculture:imperium_pickaxe>,
    <item:mysticalagriculture:imperium_shovel>,
    <item:mysticalagriculture:imperium_axe>,
    <item:mysticalagriculture:imperium_hoe>,
    <item:mysticalagriculture:imperium_bow>,
    <item:mysticalagriculture:imperium_crossbow>,
    <item:mysticalagriculture:imperium_shears>,
    <item:mysticalagriculture:imperium_fishing_rod>,
    <item:mysticalagriculture:imperium_sickle>,
    <item:mysticalagriculture:imperium_scythe>,
    <item:mysticalagriculture:supremium_sword>,
    <item:mysticalagriculture:supremium_pickaxe>,
    <item:mysticalagriculture:supremium_shovel>,
    <item:mysticalagriculture:supremium_axe>,
    <item:mysticalagriculture:supremium_hoe>,
    <item:mysticalagriculture:supremium_bow>,
    <item:mysticalagriculture:supremium_crossbow>,
    <item:mysticalagriculture:supremium_shears>,
    <item:mysticalagriculture:supremium_fishing_rod>,
    <item:mysticalagriculture:supremium_sickle>,
    <item:mysticalagriculture:supremium_scythe>,
    <item:mysticalagriculture:awakened_supremium_sword>,
    <item:mysticalagriculture:awakened_supremium_pickaxe>,
    <item:mysticalagriculture:awakened_supremium_shovel>,
    <item:mysticalagriculture:awakened_supremium_axe>,
    <item:mysticalagriculture:awakened_supremium_hoe>,
    <item:mysticalagriculture:awakened_supremium_bow>,
    <item:mysticalagriculture:awakened_supremium_crossbow>,
    <item:mysticalagriculture:awakened_supremium_shears>,
    <item:mysticalagriculture:awakened_supremium_fishing_rod>,
    <item:mysticalagriculture:awakened_supremium_sickle>,
    <item:mysticalagriculture:awakened_supremium_scythe>,
    <item:mysticalagriculture:inferium_helmet>,
    <item:mysticalagriculture:inferium_chestplate>,
    <item:mysticalagriculture:inferium_leggings>,
    <item:mysticalagriculture:inferium_boots>,
    <item:mysticalagriculture:prudentium_helmet>,
    <item:mysticalagriculture:prudentium_chestplate>,
    <item:mysticalagriculture:prudentium_leggings>,
    <item:mysticalagriculture:prudentium_boots>,
    <item:mysticalagriculture:tertium_helmet>,
    <item:mysticalagriculture:tertium_chestplate>,
    <item:mysticalagriculture:tertium_leggings>,
    <item:mysticalagriculture:tertium_boots>,
    <item:mysticalagriculture:imperium_helmet>,
    <item:mysticalagriculture:imperium_chestplate>,
    <item:mysticalagriculture:imperium_leggings>,
    <item:mysticalagriculture:imperium_boots>,
    <item:mysticalagriculture:supremium_helmet>,
    <item:mysticalagriculture:supremium_chestplate>,
    <item:mysticalagriculture:supremium_leggings>,
    <item:mysticalagriculture:supremium_boots>,
    <item:mysticalagriculture:awakened_supremium_helmet>,
    <item:mysticalagriculture:awakened_supremium_chestplate>,
    <item:mysticalagriculture:awakened_supremium_leggings>,
    <item:mysticalagriculture:awakened_supremium_boots>

  ],
  9999: [
    <item:sophisticatedstorage:packing_tape>
  ],
  2147483647: [
    <item:create:super_glue>,
    <item:create:sand_paper>,
    <item:minecraft:flint_and_steel>
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
