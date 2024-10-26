import crafttweaker.forge.api.event.entity.living.BabyEntitySpawnEvent;
import crafttweaker.api.entity.type.misc.AgeableMob;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.util.math.RandomSource;


public class FluidCowUtils {

    public static getColorCombination(rand as RandomSource, first as string, second as string, checkReverse as bool) as string? {
        if first == "white" {
            if second == "gray" {
                return "light_gray";
            } else if second == "black" {
                return "gray";
            } else if second == "green" {
                return "lime";
            } else if second == "red" {
                return "pink";
            } else if second == "blue" {
                return "light_blue";
            }
        } else if first == "red" {
            if second == "yellow" {
                return "orange";
            } else if second == "blue" {
                return "purple";
            }
        } else if first == "blue" {
            if second == "green" {
                return "cyan";
            } else if second == "yellow" {
                return "green";
            }
        } else if first == "purple" {
            if second == "pink" {
                return "magenta";
            }
        }

        if checkReverse {
            return FluidCowUtils.getColorCombination(rand, second, first, false);
        } else {
            // No combination, just choose random
            return rand.nextBoolean() ? first : second;
        }
    }
}


events.register<BabyEntitySpawnEvent>(event => {
    val pA = event.parentA;
    val pB = event.parentB;
    val level = pA.level;

    if level.isClientSide {
        return; // We don't want to run on the client
    }

    // if parentA is a cow, and is the same type as parentB
    if pA.type == <entitytype:minecraft:cow> && pA.type == pB.type {
        val aBlock = level.getBlockState(pA.blockPosiion).block;
        val bBlock = level.getBlockState(pB.blockPosiion).block;
        // Check if the block they are in is from colouredstuff
        if aBlock.registryName.namespace == "colouredstuff" && aBlock.registryName.namespace == bBlock.registryName.namespace {
            val aPath = aBlock.registryName.path;
            val bPath = bBlock.registryName.path;
            // Check if they are both in the water block
            if aPath.startsWith("water_") && bPath.startsWith("water_") {
                // substring start at 6 to skip 'water_' and end at (length - 6) to skip '_block'
                val first = aPath[6 .. $ - 6];
                val second = bPath[6 .. $ - 6];
                val color = FluidCowUtils.getColorCombination(level.random, first, second, true);
                val newChild = <entitytype:moofluids:fluid_cow>.create(level) as Entity as AgeableMob;
                // Set the fluid
                newChild.updateData({FluidRegistryName: "colouredstuff:water_" + color});
                // Set the child
                event.child = newChild;
            }
        }
    }
});
