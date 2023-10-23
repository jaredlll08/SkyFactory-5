import crafttweaker.api.text.Component;

// Script for setting up custom tooltips


/*
 var amazon = Component.literal("Amazon").setStyle(<constant:formatting:gold>);
 var twitch = Component.literal("Twitch").setStyle(<constant:formatting:light_purple>);
 var twitchPrime = Component.literal("Twitch Prime").setStyle(<constant:formatting:light_purple>);
 var message = Component.literal("Hey there! Do you want to know about ")
                + twitchPrime
                + Component.literal(" Oh! You may be asking, \"What's ")
                + twitchPrime
                + Component.literal("\"? Let me tell ya! When you connect your ")
                + amazon
                + Component.literal(" account to your ")
                + twitch
                + Component.literal(" account, you can get 1 free sub to ANY streamer on ")
                + twitch
                + Component.literal(", every month!");

 <item:minecraft:diamond>.addTooltip(message);

 Component.literal("Amazon").withStyle(style => style.withColor(0xFF55FF))

*/


<item:ars_nouveau:source_gem>.addTooltip(Component.literal("Magenta").withStyle(style => style.withColor(0xFF55FF)));
<item:treasurebags:treasure_bag>.withTag({"silentlib.LootContainer": {LootTable: "treasurebags:bags/magenta", BagType: "treasurebags:magenta"}}).addTooltip(Component.literal("Magenta").withStyle(style => style.withColor(0xFF55FF)));

// Purple Items
<item:colouredstuff:brick_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:chiseled_sandstone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:chiseled_stone_bricks_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:cobblestone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:crafting_table_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:cut_sandstone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:dirt_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:farmland_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:fence_planks_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:gate_planks_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:leaves_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:log_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:log_stripped_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:path_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:planks_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:sandstone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:sapling_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:slab_brick_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:slab_cobblestone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:slab_planks_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:slab_sandstone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:slab_stone_bricks_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:slab_stone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:smooth_sandstone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:stairs_brick_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:stairs_cobblestone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:stairs_planks_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:stairs_sandstone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:stairs_stone_bricks_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:stairs_stone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:stone_bricks_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:stone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:wall_brick_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:wall_cobblestone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:wall_planks_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:wall_sandstone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:wall_stone_bricks_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:colouredstuff:wall_stone_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:energeticsheep:purple_energetic_wool>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_banner>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_bed>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_candle>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_carpet>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_concrete>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_concrete_powder>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_dye>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_glazed_terracotta>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_shulker_box>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_stained_glass>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_stained_glass_pane>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_terracotta>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:minecraft:purple_wool>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:sf5_things:block_of_purple_dye>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:sf5_things:purple_apple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:sf5_things:purple_stick>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:sf5stuff:composting_bin_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:sf5stuff:crucible_purple>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:tinted_torches:purple_torch>.addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:vein_creeper_purple"}).addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:bone_spider"}).addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:endermite"}).addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:frog_kill_bone_spider"}).addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:frog_kill_endermite"}).addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:frog_kill_shulker"}).addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:shulker"}).addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:vein_creeper_purple"}).addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:frog_kill_bone_spider"}).addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));
<item:obtrophies:trophy>.withTag({BlockEntityTag: {VariantID: 0, entity: "veincreeper:purple"}}).addTooltip(Component.literal("Purple").withStyle(style => style.withColor(0x7d00dd)));


// Red items

<item:colouredstuff:brick_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:chiseled_sandstone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:chiseled_stone_bricks_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:cobblestone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:crafting_table_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:cut_sandstone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:dirt_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:farmland_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:fence_planks_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:gate_planks_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:leaves_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:log_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:log_stripped_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:path_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:planks_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:sandstone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:sapling_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:slab_brick_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:slab_cobblestone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:slab_planks_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:slab_sandstone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:slab_stone_bricks_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:slab_stone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:smooth_sandstone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:stairs_brick_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:stairs_planks_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:stairs_sandstone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:stairs_stone_bricks_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:stairs_stone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:stone_bricks_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:stone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:wall_brick_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:wall_cobblestone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:wall_planks_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:wall_sandstone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:wall_stone_bricks_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:colouredstuff:wall_stone_red>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:minecraft:red_candle>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:minecraft:red_dye>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:minecraft:red_mushroom>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:minecraft:red_tulip>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:minecraft:redstone>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:minecraft:redstone_block>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:minecraft:redstone_torch>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:sf5_things:red_stick>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:tinted_torches:red_torch>.addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:obtrophies:trophy>.withTag({BlockEntityTag: {VariantID: 0, entity: "supplementaries:red_merchant"}}).addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:obtrophies:trophy>.withTag({BlockEntityTag: {VariantID: 0, entity: "veincreeper:red"}}).addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:cluck_shroom"}).addTooltip(Component.literal("Red").withStyle(style => style.withColor(0x7d00dd)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:frog_kill_cluck_shroom"}).addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:frog_kill_mooshroom"}).addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:frog_kill_parrot"}).addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:frog_kill_salmon"}).addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:frog_kill_strider"}).addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:mooshroom"}).addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:parrot"}).addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
<item:gateways:gate_pearl>.withTag({gateway: "gateways:salmon"}).addTooltip(Component.literal("Red").withStyle(style => style.withColor(0xff0000)));
