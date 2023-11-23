import {
  getSrcPath,
  getTemplatePath,
  PromptName,
} from "scripts/generator/minecraft-json-things/constants";
import { createUpsertLangAction } from "scripts/generator/minecraft-json-things/custom-actions/upsert-lang";
import { ActionGetter } from "scripts/generator/minecraft-json-things/models";

export const getActionsForCompressedBlockAndItem: ActionGetter = (data) => {
  const actions = [];

  for (let i = 1; i < (data.count || 0) + 1; i++) {
    const handlebarPath = `compressed_{{snakeCase ${PromptName.Path}}}_${i}`;

    actions.push(
      createUpsertLangAction(
        "block",
        (basePath) => `compressed_${basePath}_${i}`,
        (baseName) => `${getTupleName(i)} Compressed ${baseName}`,
      ),
      {
        type: "add",
        path: getSrcPath(
          `./things/{{snakeCase ${PromptName.Namespace}}}/block/${handlebarPath}.json`,
        ),
        templateFile: getTemplatePath("./things/block.json"),
        data,
      },
      {
        type: "add",
        path: getSrcPath(
          `./assets/{{snakeCase ${PromptName.Namespace}}}/blockstates/${handlebarPath}.json`,
        ),
        templateFile: getTemplatePath("./assets/blockstate.block.json"),
        data,
      },
      {
        type: "add",
        path: getSrcPath(
          `./assets/{{snakeCase ${PromptName.Namespace}}}/models/block/${handlebarPath}.json`,
        ),
        templateFile: getTemplatePath("./assets/model.block.json"),
        data,
      },
      {
        type: "add",
        path: getSrcPath(
          `./assets/{{snakeCase ${PromptName.Namespace}}}/models/item/${handlebarPath}.json`,
        ),
        templateFile: getTemplatePath("./assets/item-model.block.json"),
        data,
      },
      {
        type: "add",
        path: getSrcPath(
          `./data/{{snakeCase ${PromptName.Namespace}}}/loot_tables/blocks/${handlebarPath}.json`,
        ),
        templateFile: getTemplatePath("./data/loot_tables/block.json"),
        data,
      },
    );
  }

  return actions;
};

function getTupleName(number: number): string {
  const tupleNames: Record<number, string> = {
    1: "Single",
    2: "Double",
    3: "Triple",
    4: "Quadruple",
    5: "Quintuple",
    6: "Sextuple",
    7: "Septuple",
    8: "Octuple",
    9: "Nonuple",
    10: "Decuple",
    11: "Undecuple",
    12: "Duodecuple",
    // Add more as needed
  };

  if (number < 1 || number > 12) {
    throw new Error(
      "Number out of range. Please provide a number between 1 and 12.",
    );
  }

  return tupleNames[number];
}
