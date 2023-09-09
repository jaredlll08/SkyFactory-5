import type { NodePlopAPI } from "@crutchcorn/plop";
import { loadModules } from "scripts/utils/modules";
import { GeneratorModule } from "./models";

export async function rootGenerator(plop: NodePlopAPI) {
  const modules = await loadModules<GeneratorModule>(
    __dirname + "/**/index.ts",
    {
      ignore: [__filename, __dirname + "/common/**/*"],
    },
  );

  modules.forEach((module) =>
    module.registerGenerator(plop, { rootGeneratorPath: __dirname }),
  );
}
