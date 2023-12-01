import { readFile, writeFile } from "fs/promises";
import glob from "glob-promise";
import { isEqual, snakeCase, uniqWith } from "lodash";
import { CustomActionFunction } from "node-plop";
import path from "path";
import { ObscureTooltipsStyle } from "schemas/minecraft/obscure_tooltips/style";
import { RegisterGeneratorFn } from "scripts/generator/models";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";

const tooltipsBasePath = path.resolve(
  "./src/minecraft/global_packs/required_resources/sf5_resources/assets/obscure_tooltips/tooltips/styles",
);
const coloredItemsScriptsBasePath = path.resolve(
  "./src/minecraft/scripts/colors/items",
);

export const registerGenerator: RegisterGeneratorFn = (plop) => {
  plop.setGenerator("Colored Tooltip Scripts", {
    description: "Updates the colored tooltip ZenCode files for all colors",
    prompts: [],
    actions: [updateFiles],
  });
};

const updateFiles: CustomActionFunction = async (_answers, _config, plop) => {
  const tooltipFiles = await glob(
    `${tooltipsBasePath.replace("\\", "/")}/sf5_{${Object.values(ColorName)
      .map(snakeCase)
      .join(",")}}.json`,
    {
      ignore: [],
    },
  );

  const template = await readFile(
    path.join(__dirname, "template.tpl"),
    "utf-8",
  );

  await Promise.all(
    tooltipFiles.map(async (filePath) => {
      const fileName = path.parse(filePath).name;

      const data = await readJSONFile<ObscureTooltipsStyle>(filePath);

      data.filter.items = data.filter.items?.sort((a, b) => a.localeCompare(b));
      if (data.filter.items) {
        data.filter.items = uniqWith(data.filter.items, isEqual);
      }

      await writeJSONFile(filePath, data, "json");

      const scriptFilePath = path.join(
        coloredItemsScriptsBasePath,
        `${fileName.replace("sf5_", "")}.zs`,
      );

      let scriptFile = await readFile(scriptFilePath, "utf-8");
      scriptFile = scriptFile.replace(
        /(\/\/ GENERATOR START(\n|.)*\/\/ GENERATOR END)/,
        plop.renderString(template, {
          items: data.filter.items,
        }),
      );

      await writeFile(scriptFilePath, scriptFile);
    }),
  );

  return "Successfully updated tooltip files";
};

enum ColorName {
  None = "None",
  Red = "Red",
  Green = "Green",
  Lime = "Lime",
  Blue = "Blue",
  LightBlue = "LightBlue",
  Gray = "Gray",
  LightGray = "LightGray",
  Yellow = "Yellow",
  Purple = "Purple",
  Magenta = "Magenta",
  Pink = "Pink",
  White = "White",
  Black = "Black",
  Brown = "Brown",
  Cyan = "Cyan",
  Orange = "Orange",
}
