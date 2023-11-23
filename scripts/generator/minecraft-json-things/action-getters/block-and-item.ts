import {
  getSrcPath,
  getTemplatePath,
  PromptName,
} from "scripts/generator/minecraft-json-things/constants";
import { createUpsertLangAction } from "scripts/generator/minecraft-json-things/custom-actions/upsert-lang";
import { ActionGetter } from "scripts/generator/minecraft-json-things/models";

export const getActionsForBlockAndItem: ActionGetter = (data) => {
  return [
    createUpsertLangAction("block"),
    {
      type: "add",
      path: getSrcPath(
        `./things/{{snakeCase ${PromptName.Namespace}}}/block/{{snakeCase ${PromptName.Path}}}.json`,
      ),
      templateFile: getTemplatePath("./things/block.json"),
      data,
    },
    {
      type: "add",
      path: getSrcPath(
        `./assets/{{snakeCase ${PromptName.Namespace}}}/blockstates/{{snakeCase ${PromptName.Path}}}.json`,
      ),
      templateFile: getTemplatePath("./assets/blockstate.block.json"),
      data,
    },
    {
      type: "add",
      path: getSrcPath(
        `./assets/{{snakeCase ${PromptName.Namespace}}}/models/block/{{snakeCase ${PromptName.Path}}}.json`,
      ),
      templateFile: getTemplatePath("./assets/model.block.json"),
      data,
    },
    {
      type: "add",
      path: getSrcPath(
        `./assets/{{snakeCase ${PromptName.Namespace}}}/models/item/{{snakeCase ${PromptName.Path}}}.json`,
      ),
      templateFile: getTemplatePath("./assets/item-model.block.json"),
      data,
    },
    {
      type: "add",
      path: getSrcPath(
        `./data/{{snakeCase ${PromptName.Namespace}}}/loot_tables/blocks/{{snakeCase ${PromptName.Path}}}.json`,
      ),
      templateFile: getTemplatePath("./data/loot_tables/block.json"),
      data,
    },
  ];
};
