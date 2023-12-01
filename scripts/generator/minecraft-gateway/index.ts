import chalk from "chalk";
import { isArray, snakeCase } from "lodash";
import {
  ActionType,
  CustomActionFunction,
  DynamicActionsFunction,
} from "node-plop";
import { genEnsureConfirmedAction } from "scripts/generator/common";
import { updateCrafttweakerColorGatewayScript } from "scripts/generator/minecraft-gateway-crafttweaker-list";
import { RegisterGeneratorFn } from "scripts/generator/models";
import { ColorName, mapColorNameToHex } from "scripts/utils/minecraft-colors";
import {
  generateMobStageState,
  generateMobState,
} from "./action-state-manager";
import { appendMobToInControlSpawn } from "./incontrol-spawn";
import { cleanLangFile, upsertLangFile, validateLangFile } from "./lang";
import {
  createStandardNormalGateway,
  defaultNormalBaseEntityNBT,
} from "./normal-gateway";
import { updateMobStageEnum, updateStagedMobsGlobal } from "./staged-mobs-zs";
import {
  createStandardTitanGateway,
  defaultTitanBaseEntityNBT,
} from "./titan-gateway";
import { cleanTrophies, createTrophy } from "./trophy";
import { getDyeFromColor } from "./utils";

enum PromptName {
  GatewayType = "gateway_type",
  Color = "color",
  MobName = "mob_name",
  MobResourceLocation = "mob_resource_location",
  MinLight = "min_light",
  MaxLight = "max_light",
  Confirmed = "confirmed",
}

enum GatewayType {
  Normal = "Normal",
  Titan = "Titan",
}

export const registerGenerator: RegisterGeneratorFn = (plop) => {
  plop.setGenerator("Minecraft Gateway", {
    description: "Generates gateways for a minecraft mob",
    prompts: [
      {
        type: "checkbox",
        name: PromptName.GatewayType,
        message: "What gateway types should be generated?",
        choices: [
          {
            type: "choice",
            value: GatewayType.Normal,
          },
          {
            type: "choice",
            value: GatewayType.Titan,
          },
        ],
        default: [GatewayType.Normal, GatewayType.Titan],
        validate: (input) => isArray(input) && input.length > 0,
      },
      {
        type: "list",
        name: PromptName.Color,
        message: "What color is the gateway?",
        choices: Object.values(ColorName).sort((a, b) => a.localeCompare(b)),
      },
      {
        type: "input",
        name: PromptName.MobName,
        message: "What is the name of the mob? (This should be unique)",
      },
      {
        type: "input",
        name: PromptName.MobResourceLocation,
        message: (answers) =>
          `What is the resource location for the ${
            answers[PromptName.MobName]
          }?`,
      },
      {
        type: "input",
        name: PromptName.MinLight,
        message: (answers) =>
          `What is the min light level for a ${
            answers[PromptName.MobName]
          } to spawn?`,
        validate: (input) => {
          if (typeof input !== "string") {
            return false;
          }

          const parsedVal = parseInt(input, 10);

          return parsedVal >= 0 && parsedVal <= 15;
        },
      },
      {
        type: "input",
        name: PromptName.MaxLight,
        message: (answers) =>
          `What is the max light level for a ${
            answers[PromptName.MobName]
          } to spawn?`,
        validate: (input) => {
          if (typeof input !== "string") {
            return false;
          }

          const parsedVal = parseInt(input, 10);

          return parsedVal >= 0 && parsedVal <= 15;
        },
      },
      {
        type: "confirm",
        name: PromptName.Confirmed,
      },
    ],
    actions: getGatewayAddActions,
  });
};

const getGatewayAddActions: DynamicActionsFunction = (answers) => {
  if (!answers) {
    throw new Error("No answers detected");
  }

  const gatewayColor = mapColorNameToHex(answers[PromptName.Color]);
  if (gatewayColor === null) {
    throw new Error(
      `Unsupported color for gateway color ${answers[PromptName.Color]}`,
    );
  }

  const dye = getDyeFromColor(answers[PromptName.Color]);
  if (dye === null) {
    throw new Error(`Unsupported color for dye ${answers[PromptName.Color]}`);
  }

  const actions: ActionType[] = [
    genEnsureConfirmedAction(PromptName.Confirmed),
  ];

  if (isArray(answers[PromptName.GatewayType])) {
    answers[PromptName.GatewayType].forEach((type: GatewayType) => {
      switch (type) {
        case GatewayType.Normal:
          actions.push({
            type: "add",
            template: JSON.stringify(
              createStandardNormalGateway(
                {
                  entity: answers[PromptName.MobResourceLocation],
                  nbt: defaultNormalBaseEntityNBT,
                },
                gatewayColor,
                dye,
              ),
              undefined,
              2,
            ),
            path: `./src/minecraft/global_packs/required_data/skyfactory_5/data/gateways/gateways/normal/{{snakeCase ${PromptName.MobName}}}.json`,
          });
          return;
        case GatewayType.Titan:
          actions.push({
            type: "add",
            template: JSON.stringify(
              createStandardTitanGateway(
                {
                  entity: answers[PromptName.MobResourceLocation],
                  nbt: defaultTitanBaseEntityNBT,
                },
                gatewayColor,
                dye,
              ),
              undefined,
              2,
            ),
            path: `./src/minecraft/global_packs/required_data/skyfactory_5/data/gateways/gateways/titan/{{snakeCase ${PromptName.MobName}}}.json`,
          });
          return;
      }
    });
  }

  actions.push(updateActionState(ActionState.Mobs));
  actions.push(updateInControlSpawnConfig);
  actions.push(updateActionState(ActionState.MobStageMapping));
  actions.push(updateCrafttweakerColorGatewayScript);
  actions.push(updateStagedMobsAction);
  actions.push(updateMobStageEnumAction);
  actions.push(createTrophyAction);
  actions.push(cleanTrophiesAction);
  actions.push(upsertLangFileAction);
  actions.push(validateLangFileAction);
  actions.push(cleanLangFileAction);

  return actions;
};

enum ActionState {
  Mobs,
  MobStageMapping,
}

const updateActionState: (actionState: ActionState) => CustomActionFunction =
  (actionState) => async () => {
    switch (actionState) {
      case ActionState.Mobs:
        await generateMobState();

        return "Saved Mob Action State";
      case ActionState.MobStageMapping:
        await generateMobStageState();

        return "Saved Mob Stages Action state";
      default:
        throw new Error("unknown action state to update");
    }
  };

const updateInControlSpawnConfig: CustomActionFunction = async (answers) => {
  await appendMobToInControlSpawn({
    entity: answers[PromptName.MobResourceLocation],
    stage: snakeCase(answers[PromptName.MobName]),
    minlight: parseInt(answers[PromptName.MinLight]),
    maxlight: parseInt(answers[PromptName.MaxLight]),
  });

  return "Updated InControl spawn config";
};

const updateStagedMobsAction: CustomActionFunction = async (
  _answers,
  _config,
  plop,
) => {
  await updateStagedMobsGlobal(plop);

  return "Updated stagedMobs global";
};

const updateMobStageEnumAction: CustomActionFunction = async (
  _answers,
  _config,
  plop,
) => {
  await updateMobStageEnum(plop);

  return "Updated MobStage enum";
};

const createTrophyAction: CustomActionFunction = async (answers) => {
  await createTrophy({
    mob: answers[PromptName.MobResourceLocation],
    mobName: snakeCase(answers[PromptName.MobName]),
  });

  return "Created trophy";
};

const cleanTrophiesAction: CustomActionFunction = async () => {
  const undiscoveredMobs = await cleanTrophies();

  let result = "Cleaned trophies";

  if (undiscoveredMobs.length > 0) {
    result += chalk.red(
      `\n        Failed to find trophies for the following mob IDs: ${undiscoveredMobs.join(
        ",",
      )}`,
    );
  }

  return result;
};

const upsertLangFileAction: CustomActionFunction = async (answers) => {
  const gatewayAnswers = new Set<GatewayType>(answers[PromptName.GatewayType]);

  await upsertLangFile({
    mobName: answers[PromptName.MobName],
    normalGateway: gatewayAnswers.has(GatewayType.Normal),
    titanGateway: gatewayAnswers.has(GatewayType.Titan),
  });

  return "Upserted lang file";
};

const validateLangFileAction: CustomActionFunction = async () => {
  const missingEntries = await validateLangFile();

  let result = "Validated lang file";

  if (missingEntries.length > 0) {
    result += chalk.red(
      `\n        Failed to find lang entry for the following gateways: ${missingEntries.join(
        ",",
      )}`,
    );
  }

  return result;
};

const cleanLangFileAction: CustomActionFunction = async () => {
  const removedEntries = await cleanLangFile();

  let result = "Cleaned gateways in lang file";

  if (removedEntries.length > 0) {
    result += chalk.yellow(
      `\n        Removed following gateways lang entries: ${removedEntries.join(
        ",",
      )}`,
    );
  }

  return result;
};
