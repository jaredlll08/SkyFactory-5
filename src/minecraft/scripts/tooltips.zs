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


 var tool_belt_tip = Component.literal("Upgrade with a Belt Pouch in an Anvil").setStyle(<constant:formatting:gold>);
 <item:toolbelt:belt>.addTooltip(tool_belt_tip);


// I've been playing this game for like 10 years. I've probably played AE2 over 50 times
// and I still cannot remember what the heck devices use channels.
// I am now going to create a way to let me and other people who also
// do not know whether something uses a channel or not.
// You don't have to thank me, but I do ask that you subscribe to my
// twitch channel and use code darkosto at checkout to get
// negative 10% off your next purchase!

 var uses_channel = Component.literal("**Uses a Channel**").setStyle(<constant:formatting:yellow>);

 <item:ae2:drive>.addTooltip(uses_channel);
 <item:ae2:spatial_io_port>.addTooltip(uses_channel);
 <item:ae2:me_p2p_tunnel>.addTooltip(uses_channel);
 <item:ae2:redstone_p2p_tunnel>.addTooltip(uses_channel);
 <item:ae2:item_p2p_tunnel>.addTooltip(uses_channel);
 <item:ae2:fluid_p2p_tunnel>.addTooltip(uses_channel);
 <item:ae2:fe_p2p_tunnel>.addTooltip(uses_channel);
 <item:ae2:light_p2p_tunnel>.addTooltip(uses_channel);
 <item:ae2:wireless_access_point>.addTooltip(uses_channel);
 <item:ae2:conversion_monitor>.addTooltip(uses_channel);
 <item:ae2:cable_pattern_provider>.addTooltip(uses_channel);
 <item:ae2:cable_interface>.addTooltip(uses_channel);
 <item:ae2:pattern_access_terminal>.addTooltip(uses_channel);
 <item:ae2:terminal>.addTooltip(uses_channel);
 <item:ae2:crafting_terminal>.addTooltip(uses_channel);
 <item:ae2:pattern_encoding_terminal>.addTooltip(uses_channel);
 <item:ae2:formation_plane>.addTooltip(uses_channel);
 <item:ae2:annihilation_plane>.addTooltip(uses_channel);
 <item:ae2:export_bus>.addTooltip(uses_channel);
 <item:ae2:import_bus>.addTooltip(uses_channel);
 <item:ae2:storage_bus>.addTooltip(uses_channel);
 <item:ae2:spatial_anchor>.addTooltip(uses_channel);
 <item:ae2:pattern_provider>.addTooltip(uses_channel);
 <item:ae2:256k_crafting_storage>.addTooltip(uses_channel);
 <item:ae2:64k_crafting_storage>.addTooltip(uses_channel);
 <item:ae2:16k_crafting_storage>.addTooltip(uses_channel);
 <item:ae2:4k_crafting_storage>.addTooltip(uses_channel);
 <item:ae2:1k_crafting_storage>.addTooltip(uses_channel);
 <item:ae2:io_port>.addTooltip(uses_channel);
 <item:ae2:interface>.addTooltip(uses_channel);
 <item:ae2:chest>.addTooltip(uses_channel);

// Create
 var extruder = Component.literal("Creates Cobblestone, Stone, and Basalt").setStyle(<constant:formatting:yellow>);
 <item:create_mechanical_extruder:mechanical_extruder>.addTooltip(extruder);

 // Things I find funny
  var blooming_onion = Component.literal("Legally distinct!").setStyle(<constant:formatting:white>);
  blooming_onion.setStyle(<constant:minecraft:formatting:italic>);
  <item:sf5_things:block_of_blooming_onion>.addTooltip(blooming_onion);

// OB Trophies
 var obtrophies = Component.literal("Click to Toggle Spawning").setStyle(<constant:formatting:yellow>);
 <item:obtrophies:trophy>.addTooltip(obtrophies);
