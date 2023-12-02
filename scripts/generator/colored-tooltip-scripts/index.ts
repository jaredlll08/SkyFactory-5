import { readFile, writeFile } from "fs/promises";
import glob from "glob-promise";
import { isEqual, snakeCase, uniqWith } from "lodash";
import { CustomActionFunction, NodePlopAPI } from "node-plop";
import path from "path";
import { ObscureTooltipsStyle } from "schemas/minecraft/obscure_tooltips/style";
import { RegisterGeneratorFn } from "scripts/generator/models";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";
import { ColorName } from "scripts/utils/minecraft-colors";

const tooltipsBasePath = path.resolve(
  "./src/minecraft/global_packs/required_resources/sf5_resources/assets/obscure_tooltips/tooltips/styles",
);
const coloredItemsScriptsBasePath = path.resolve(
  "./src/minecraft/scripts/colors/items",
);
const coloredItemsTagsScriptsBasePath = path.resolve(
  "./src/minecraft/scripts/tags/colors",
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

  await Promise.all(
    tooltipFiles.map(async (filePath) => {
      const fileName = path.parse(filePath).name;

      const data = await readJSONFile<ObscureTooltipsStyle>(filePath);

      data.filter.items = data.filter.items?.sort((a, b) => a.localeCompare(b));
      if (data.filter.items) {
        data.filter.items = uniqWith(data.filter.items, isEqual);
      }

      await writeJSONFile(filePath, data, "json");

      await updateScript(
        plop,
        path.join(
          coloredItemsScriptsBasePath,
          `${fileName.replace("sf5_", "")}.zs`,
        ),
        path.join(__dirname, "item-template.tpl"),
        data.filter.items,
      );

      await updateScript(
        plop,
        path.join(
          coloredItemsTagsScriptsBasePath,
          `${fileName.replace("sf5_", "")}.zs`,
        ),
        path.join(__dirname, "tags-template.tpl"),
        data.filter.items,
      );
    }),
  );

  return "Successfully updated tooltip files";
};

async function updateScript(
  plop: NodePlopAPI,
  filePath: string,
  templatePath: string,
  items: string[] | undefined,
) {
  const scriptFile = await readFile(filePath, "utf-8");
  const template = await readFile(templatePath, "utf-8");

  await writeFile(
    filePath,
    scriptFile.replace(
      /(\/\/ GENERATOR START(\n|.)*\/\/ GENERATOR END)/,
      plop.renderString(template, {
        items,
      }),
    ),
  );
}
