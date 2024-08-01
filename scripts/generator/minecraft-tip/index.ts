import { readdir } from "fs/promises";
import { snakeCase } from "lodash";
import { CustomActionFunction } from "node-plop";
import path from "path";
import { genEnsureConfirmedAction } from "scripts/generator/common";
import { RegisterGeneratorFn } from "scripts/generator/models";
import { writeJSONFile } from "scripts/utils/file";
import { ColorName } from "scripts/utils/minecraft-colors";
import { readLangFile, writeLangFile } from "scripts/utils/minecraft-lang";

const rootTipDirectory = path.resolve(
  "./src/minecraft/global_packs/required_resources/sf5_resources/assets/skyfactory_5/tips",
);
const langFilePath = path.resolve(
  "./src/minecraft/global_packs/required_resources/sf5_resources/assets/skyfactory_5/lang/en_us.json",
);

enum PromptName {
  TipText = "tip_text",
  Color = "color",
  Bold = "bold",
  Confirmed = "confirmed",
}

export const registerGenerator: RegisterGeneratorFn = (plop) => {
  plop.setGenerator("Minecraft Tip", {
    description: "Generates a new tip to be displayed in the game.",
    prompts: [
      {
        type: "input",
        name: PromptName.TipText,
        message: "What is the tip you want to add?",
      },
      {
        type: "list",
        name: PromptName.Color,
        message: "What color text should the tip display in?",
        choices: Object.values(ColorName).sort((a, b) => a.localeCompare(b)),
      },
      {
        type: "confirm",
        message: "Should the tip be bold?",
        name: PromptName.Bold,
        default: false,
      },
      {
        type: "confirm",
        name: PromptName.Confirmed,
      },
    ],
    actions: [genEnsureConfirmedAction(PromptName.Confirmed), generateTip],
  });
};

const generateTip: CustomActionFunction = async (
  answers,
  // _config,
  // _plop,
) => {
  const nextTipNumber = (await getNextTipNumber()) + 1;

  const results = await Promise.allSettled([
    appendLangFile(answers[PromptName.TipText], nextTipNumber),
    generateTipFile(
      nextTipNumber,
      answers[PromptName.Bold],
      answers[PromptName.Color],
    ),
  ]);

  const failures = results
    .filter((result) => result.status === "rejected")
    .map((result) => result.status === "rejected" && result.reason);

  if (failures.length > 0) {
    throw failures.join(", ");
  }

  return "Generated new tip";
};

async function getNextTipNumber(): Promise<number> {
  const items = await readdir(rootTipDirectory, { withFileTypes: true });

  let highestNumber = 0;
  items.forEach((item) => {
    if (!item.isFile()) {
      return;
    }

    const result = /tip_(\d+)\.json/.exec(item.name);
    if (!result || result.length < 2) {
      return;
    }

    const parsedNum = parseInt(result[1]);
    if (parsedNum > highestNumber) {
      highestNumber = parsedNum;
    }
  });

  return highestNumber;
}

function generateLangKey(tipNumber: number): string {
  return `skyfactory_5.tipsmod.tip.${tipNumber}`;
}

async function appendLangFile(tipText: string, tipNumber: number) {
  const langData = await readLangFile(langFilePath);

  langData[generateLangKey(tipNumber)] = tipText;

  await writeLangFile(langFilePath, langData);
}

async function generateTipFile(
  tipNumber: number,
  isBold: boolean,
  colorName: ColorName,
) {
  writeJSONFile(
    path.join(rootTipDirectory, `tip_${tipNumber}.json`),
    {
      tip: {
        translate: generateLangKey(tipNumber),
        bold: isBold,
        color: snakeCase(colorName),
      },
    },
    "json",
  );
}
