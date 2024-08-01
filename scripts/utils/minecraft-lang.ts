import { mkdir } from "fs/promises";
import path from "path";
import { checkFileExists, readJSONFile, writeJSONFile } from "./file";

type LangData = Record<string, string>;

export async function readLangFile(langFilePath: string): Promise<LangData> {
  if (await checkFileExists(langFilePath)) {
    return readJSONFile<LangData>(langFilePath);
  }

  return {};
}

export async function writeLangFile(
  langFilePath: string,
  data: LangData,
): Promise<void> {
  if (!(await checkFileExists(langFilePath))) {
    await mkdir(path.parse(langFilePath).dir, { recursive: true });
  }

  const sorted = Object.keys(data)
    .sort((a, b) => a.localeCompare(b))
    .reduce((obj, key) => {
      obj[key] = data[key];
      return obj;
    }, {} as LangData);

  return writeJSONFile(langFilePath, sorted, "json");
}
