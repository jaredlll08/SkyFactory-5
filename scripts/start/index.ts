import { mkdir } from "fs/promises";
import { Client, ILauncherOptions, IUser } from "minecraft-launcher-core";
import { Auth, Minecraft } from "msmc";
import { MinecraftPackage } from "schemas/mc-package";
import { readMinecraftPackage } from "scripts/utils/mc-package";
import { ForgeManager } from "./forge";

const mcDirectory = "./minecraft";

(async function main() {
  const mcPackage = await readMinecraftPackage();

  const main = new Main(mcPackage);
  main.start();
})();

class Main {
  private mcPackage: MinecraftPackage;
  private forgeManager: ForgeManager;

  constructor(mcPackage: MinecraftPackage) {
    this.mcPackage = mcPackage;
    this.forgeManager = new ForgeManager(this.mcPackage, mcDirectory);
  }

  async start() {
    await this.prepareDirectories();

    const forgeFilePath = await this.forgeManager.ensureDownloaded();
    await this.launchMinecraft(forgeFilePath);
  }

  private async prepareDirectories() {
    await mkdir(mcDirectory, { recursive: true });
    await mkdir(this.forgeManager.rootDirectory, { recursive: true });
  }

  private async authenticateUser(): Promise<Minecraft> {
    const authManager = new Auth("select_account");
    const xboxManager = await authManager.launch("raw");

    return xboxManager.getMinecraft();
  }

  private async launchMinecraft(forgeFilePath: string) {
    const token = await this.authenticateUser();

    const launcher = new Client();

    const opts: ILauncherOptions = {
      authorization: token.mclc() as unknown as Promise<IUser>,
      root: "./minecraft",
      version: {
        number: this.mcPackage.minecraftVersion,
        type: "release",
      },
      memory: {
        max: "8G",
        min: "4G",
      },
      forge: forgeFilePath,
    };

    launcher.launch(opts);

    launcher.on("debug", (e) => console.log(e));
    launcher.on("data", (e) => console.log(e));
  }
}
