import mods.initialinventory.InvHandler;

InvHandler.addStartingItem("one", <item:sf5_things:darktoasto> * 4, 0);
InvHandler.addStartingItem("two", <item:additionallanterns:white_smooth_stone_lantern> * 4, 1);
InvHandler.addStartingItem("three", <item:exdeorum:golden_watering_can>.withTag({Fluid: {FluidName: "minecraft:water", Amount: 4000}}), 2);
InvHandler.addStartingItem("four", <item:silentgear:axe_template>, 3);
InvHandler.addStartingItem("five", <item:silentgear:sickle_template>, 4);
