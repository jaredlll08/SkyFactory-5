import { isArray, snakeCase } from "lodash";
import cloneDeep from "lodash.clonedeep";
import {
  ActionType,
  CustomActionFunction,
  DynamicActionsFunction,
} from "node-plop";
import path from "path";
import { genEnsureConfirmedAction } from "scripts/generator/common";
import { updateCrafttweakerColorGatewayScriptAction } from "scripts/generator/minecraft-gateway-crafttweaker-list";
import { RegisterGeneratorFn } from "scripts/generator/models";
import { ColorName, mapColorNameToHex } from "scripts/utils/minecraft-colors";
import { GatewayType } from "./constants";
import { appendToData, loadData, MobData } from "./data-manager";
import { generateHostileNeuralNetworkEntries } from "./hostile-neural-networks";
import { generateInControlSpawnConfig } from "./incontrol-spawn";
import { generateItemBordersConfig } from "./itemborders";
import { generateLangFile } from "./lang";
import { generateNormalGateways } from "./normal-gateway";
import {
  generateMobStageEnum,
  generateStagedMobsGlobal,
} from "./staged-mobs-zs";
import { generateTitanGateways } from "./titan-gateway";
import { generateTreasureBagLootTables } from "./treasurebags";
import { generateTrophies } from "./trophy";
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

  plop.setGenerator("Minecraft Gateway Regenerate", {
    description: `Regenerates mob files based on the data in ${path.resolve(
      "./scripts/generator/minecraft-gateway/data.ts",
    )}`,
    prompts: [
      {
        type: "confirm",
        message: "Are you sure you want to regenerate mob files?",
        name: PromptName.Confirmed,
      },
    ],
    actions: [
      genEnsureConfirmedAction(PromptName.Confirmed),
      generateUpdatedFilesAction,
      updateCrafttweakerColorGatewayScriptAction,
    ],
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
    appendToDataAction,
    generateUpdatedFilesAction,
    updateCrafttweakerColorGatewayScriptAction,
  ];

  return actions;
};

const appendToDataAction: CustomActionFunction = async (
  answers,
  _config,
  plop,
) => {
  if (
    isArray(answers[PromptName.GatewayType]) &&
    answers[PromptName.GatewayType].length === 0
  ) {
    await appendToData(plop, {
      spawnOnly: true,
      mobID: answers[PromptName.MobResourceLocation],
      mobName: answers[PromptName.MobName],
      stage: snakeCase(answers[PromptName.MobName]),
      minLightLevel: answers[PromptName.MinLight],
      maxLightLevel: answers[PromptName.MaxLight],
    });
  } else {
    await appendToData(plop, {
      spawnOnly: false,
      mobID: answers[PromptName.MobResourceLocation],
      mobName: answers[PromptName.MobName],
      color: answers[PromptName.Color],
      gatewayTypes: answers[PromptName.GatewayType],
      stage: snakeCase(answers[PromptName.MobName]),
      minLightLevel: answers[PromptName.MinLight],
      maxLightLevel: answers[PromptName.MaxLight],
    });
  }

  return "Updated Data with new mob";
};

const generateUpdatedFilesAction: CustomActionFunction = async (
  _answers,
  _config,
  plop,
) => {
  const data = await loadData();

  type GenerateFn = (data: MobData) => Promise<void>;
  const parallelTasks: GenerateFn[] = [
    generateNormalGateways,
    generateTitanGateways,
    generateInControlSpawnConfig,
    (data) => generateStagedMobsGlobal(plop, data),
    (data) => generateMobStageEnum(plop, data),
    generateTrophies,
    generateLangFile,
    generateItemBordersConfig,
    generateTreasureBagLootTables,
    generateHostileNeuralNetworkEntries,
  ];

  const results = await Promise.allSettled(
    parallelTasks.map((generateFn) => generateFn(cloneDeep(data))),
  );

  const failures = results
    .filter((result) => result.status === "rejected")
    .map((result) => result.status === "rejected" && result.reason);

  if (failures.length > 0) {
    throw failures.join(", ");
  }

  return "Updated all files with the updated Data";
};
