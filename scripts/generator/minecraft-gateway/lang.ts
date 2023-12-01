import { mkdir } from "fs/promises";
import glob from "glob-promise";
import { snakeCase } from "lodash";
import path from "path";
import {
  checkFileExists,
  readJSONFile,
  writeJSONFile,
} from "scripts/utils/file";
import { gatewaysBasePath } from "./constants";

const langFilePath = path.resolve(
  "./src/minecraft/global_packs/required_resources/sf5_resources/assets/skyfactory_5/lang/en_us.json",
);

type LangData = Record<string, string>;

interface Args {
  mobName: string;
  normalGateway: boolean;
  titanGateway: boolean;
}

export async function upsertLangFile({
  mobName,
  normalGateway,
  titanGateway,
}: Args) {
  let data: LangData = {};

  if (await checkFileExists(langFilePath)) {
    data = await readJSONFile<LangData>(langFilePath);
  } else {
    await mkdir(path.parse(langFilePath).dir, { recursive: true });
  }

  if (normalGateway) {
    data[`gateways.normal/${snakeCase(mobName)}`] = `${mobName} Gateway`;
  }
  if (titanGateway) {
    data[`gateways.titan/${snakeCase(mobName)}`] = `Titan ${mobName} Gateway`;
  }

  await writeJSONFile(langFilePath, data, "json");
}

export async function validateLangFile(): Promise<string[]> {
  const data = await readJSONFile<LangData>(langFilePath);

  const gatewayDatapackFilePaths = await glob(
    `${gatewaysBasePath}/{normal,titan}/**/*.json`,
    {
      ignore: [],
    },
  );

  const langFormattedGatewayPaths = gatewayDatapackFilePaths.map((filePath) =>
    path
      .relative(gatewaysBasePath, filePath)
      .replace(/\\/g, "/")
      .replace(/.json/i, ""),
  );

  return langFormattedGatewayPaths.filter((path) => {
    return !data[`gateways.${path}`];
  });
}

export async function cleanLangFile(): Promise<string[]> {
  const data = await readJSONFile<LangData>(langFilePath);

  const gatewayDatapackFilePaths = await glob(
    `${gatewaysBasePath}/{normal,titan}/**/*.json`,
    {
      ignore: [],
    },
  );

  const gatewayKeys = Object.keys(data).filter((key) =>
    key.startsWith("gateways."),
  );

  const langFormattedGatewayPaths = new Set(
    gatewayDatapackFilePaths.map((filePath) =>
      path
        .relative(gatewaysBasePath, filePath)
        .replace(/\\/g, "/")
        .replace(/.json/i, ""),
    ),
  );

  const keysToRemove = gatewayKeys.filter(
    (key) => !langFormattedGatewayPaths.has(key.replace("gateways.", "")),
  );

  keysToRemove.forEach((key) => {
    delete data[key];
  });

  await writeJSONFile(langFilePath, data, "json");

  return keysToRemove;
}
