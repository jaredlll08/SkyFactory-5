import chalk from "chalk";
import { readFile, writeFile } from "fs/promises";
import glob from "glob-promise";
import { CustomActionFunction, NodePlopAPI } from "node-plop";
import path from "path";
import { GatewaysToEternityGatewayV2 } from "schemas/minecraft/gateways/gateways-v2";
import { RegisterGeneratorFn } from "scripts/generator/models";
import { readJSONFile } from "scripts/utils/file";
import { ColorName, mapHexToColorName } from "scripts/utils/minecraft-colors";

const colorScriptFilePath = path.resolve(
  "./src/minecraft/scripts/colors/gateways.zs",
);
const gatewaysBasePath = path.resolve(
  "./src/minecraft/global_packs/required_data/skyfactory_5/data/gateways/gateways",
);

export const registerGenerator: RegisterGeneratorFn = (plop) => {
  plop.setGenerator("Minecraft Gateway CrT List", {
    description:
      "Generates/Updates the list of minecraft gateways in a Crafttweaker script",
    prompts: [],
    actions: [updateCrafttweakerColorGatewayScriptAction],
  });
};

export const updateCrafttweakerColorGatewayScriptAction: CustomActionFunction =
  async (_answers, _config, plop) => updateCrafttweakerColorGatewayScript(plop);

export async function updateCrafttweakerColorGatewayScript(plop: NodePlopAPI) {
  const gatewayDatapackFiles = await glob(`${gatewaysBasePath}/**/*.json`, {
    ignore: [],
  });

  const categorizedMap = new Map<ColorName, Set<string>>();

  const uncategorizedFiles: string[] = [];
  const ignoredFiles: string[] = [];

  await Promise.all(
    gatewayDatapackFiles.map(async (filePath) => {
      const relativePath = path.relative(gatewaysBasePath, filePath);
      const data = await readJSONFile<GatewaysToEternityGatewayV2>(filePath);

      if (data.__typename === "InvalidGateway") {
        ignoredFiles.push(relativePath);
        return;
      }

      const colorName = mapHexToColorName(data.color);
      if (colorName === null) {
        uncategorizedFiles.push(relativePath);
        return;
      }

      if (categorizedMap.has(colorName)) {
        categorizedMap.get(colorName)?.add(relativePath);
      } else {
        categorizedMap.set(colorName, new Set([relativePath]));
      }
    }),
  );

  const template = await readFile(
    path.join(__dirname, "color-template.tpl"),
    "utf-8",
  );
  let script = await readFile(colorScriptFilePath, "utf-8");

  script = script.replace(
    /(\/\/ GENERATOR START(\n|.)*\/\/ GENERATOR END)/,
    plop.renderString(template, {
      colorMappings: Array.from(categorizedMap)
        .map(([key, val]) => ({
          colorName: key,
          gateways: Array.from(val)
            .map(
              (relativePath) =>
                `gateways:${relativePath
                  .replace(path.parse(relativePath).ext, "")
                  .replace("\\", "/")}`,
            )
            .sort((a, b) => a.localeCompare(b)),
        }))
        .sort((a, b) => a.colorName.localeCompare(b.colorName)),
    }),
  );

  await writeFile(colorScriptFilePath, script);

  let baseResult = `Successfully updated Crafttweaker Script ${colorScriptFilePath}`;

  if (ignoredFiles.length > 0) {
    baseResult += chalk.yellow(
      `\n    Ignored files:  ${ignoredFiles.join(", ")}`,
    );
  }
  if (uncategorizedFiles.length > 0) {
    baseResult += chalk.red(
      `\n    Uncategorized files: ${uncategorizedFiles.join(", ")}`,
    );
  }

  return baseResult;
}
