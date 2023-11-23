import type { Answers } from "inquirer";
import type { ActionType, DynamicActionsFunction } from "node-plop";
import { genEnsureConfirmedAction } from "scripts/generator/common";
import { RegisterGeneratorFn } from "scripts/generator/models";
import { getActionsForBlockAndItem } from "./action-getters/block-and-item";
import { getActionsForCompressedBlockAndItem } from "./action-getters/compressed-block-and-item";
import { getActionsForFood } from "./action-getters/food";
import { getActionsForItem } from "./action-getters/item";
import { getActionsForStick } from "./action-getters/stick";
import { packNamespace, PromptName, Thing } from "./constants";
import { ActionData } from "./models";
import { formatResourceLocation } from "./utils/resource-location";

export const registerGenerator: RegisterGeneratorFn = (plop) => {
  plop.setGenerator("Minecraft JsonThings", {
    description: "Generates JsonThings datapack files",
    prompts: [
      {
        type: "list",
        name: PromptName.Thing,
        message: "What is it you want to generate?",
        choices: Object.values(Thing).sort(),
      },
      {
        type: "input",
        name: PromptName.Name,
        message: (answers) =>
          shouldBeBaseAnswer(answers)
            ? `What is the base name of your ${answers[PromptName.Thing]}?`
            : `What is the name of your ${answers[PromptName.Thing]}?`,
      },
      {
        type: "input",
        name: PromptName.Namespace,
        default: packNamespace,
        message: (answers) =>
          `What is the namespace for the ${answers[PromptName.Thing]}?`,
        validate: (input) => {
          if (/^[a-z0-9_]+$/.test(input)) {
            return true;
          }

          return "Invalid ResourceLocation Namespace";
        },
      },
      {
        type: "input",
        name: PromptName.Path,
        default: (answers: Answers) =>
          `${answers[PromptName.Name].toLowerCase().replaceAll(" ", "_")}`,
        message: (answers) =>
          shouldBeBaseAnswer(answers)
            ? `What is the base path of your ${answers[PromptName.Thing]}?`
            : `What is the path for the ${answers[PromptName.Thing]}?`,
        validate: (input) => {
          if (/^[a-z0-9_]+$/.test(input)) {
            return true;
          }

          return "Invalid ResourceLocation Path";
        },
      },
      {
        type: "number",
        name: PromptName.Count,
        message: "How many compressed blocks?",
        default: 8,
        validate: (input) => (input > 1 ? true : "Invalid compression value"),
        when: (answers) =>
          answers[PromptName.Thing] === Thing.CompressedBlockAndItem,
      },
      {
        type: "confirm",
        name: PromptName.Confirmed,
        message: (answers) =>
          `Create a ${answers[PromptName.Thing]} named ${
            answers[PromptName.Name]
          } with a ResourceLocation of ${answers[PromptName.Namespace]}:${
            answers[PromptName.Path]
          }?`,
        default: true,
      },
    ],
    actions: getActionsForThing,
  });
};

const getActionsForThing: DynamicActionsFunction = (answers) => {
  const actions: ActionType[] = [
    genEnsureConfirmedAction(PromptName.Confirmed),
  ];

  if (!answers) {
    return actions;
  }

  const actionData: ActionData = {
    resourceLocation: formatResourceLocation(
      answers[PromptName.Namespace],
      answers[PromptName.Path],
    ),
    count: answers[PromptName.Count],
  };

  switch (answers?.thing as Thing) {
    case Thing.BlockAndItem:
      actions.push(...getActionsForBlockAndItem(actionData));
      break;
    case Thing.CompressedBlockAndItem:
      actions.push(...getActionsForCompressedBlockAndItem(actionData));
      break;
    case Thing.Food:
      actions.push(...getActionsForFood(actionData));
      break;
    case Thing.Item:
      actions.push(...getActionsForItem(actionData));
      break;
    case Thing.Stick:
      actions.push(...getActionsForStick(actionData));
      break;

    default:
      break;
  }

  return actions;
};

function shouldBeBaseAnswer(answers: Answers): boolean {
  switch (answers[PromptName.Thing] as Thing) {
    case Thing.Stick:
      return true;
    default:
      return false;
  }
}
