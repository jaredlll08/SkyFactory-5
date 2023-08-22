import { MinecraftPackage } from "schemas/mc-package";
import { readJSONFile } from "./file";

const packageFilePath = "./mc-package.json";

export async function readMinecraftPackage(): Promise<MinecraftPackage> {
  return readJSONFile(packageFilePath);
}
