import { MinecraftRunner } from "scripts/gulp/common/minecraft/runner";
import { readMinecraftPackage } from "scripts/utils/mc-package";

export async function start() {
  const mcPackage = await readMinecraftPackage();

  const mcRunner = new MinecraftRunner(mcPackage);
  return mcRunner.start();
}
