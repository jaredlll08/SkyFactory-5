import * as fs from "fs";
import { access, readdir, readFile, rm, writeFile } from "fs/promises";
import JSON5 from "json5";
import * as path from "path";
import * as prettier from "prettier";

export async function checkFileExists(filePath: string): Promise<boolean> {
  try {
    await access(filePath, fs.constants.F_OK);
  } catch {
    return false;
  }

  return true;
}

export async function emptyDirectory(directory: string): Promise<void> {
  const files = await readdir(directory);

  await Promise.all(
    files.map((file) => rm(path.join(directory, file), { recursive: true })),
  );
}

export function createDirectories(targetPath: string) {
  fs.mkdirSync(targetPath, { recursive: true });
}

export async function readJSONFile<T extends object>(
  filePath: string,
): Promise<T> {
  const file = await readFile(filePath, "utf-8");
  const parsedFile = JSON5.parse(file);

  return parsedFile;
}

export async function writeJSONFile<T extends object>(
  filePath: string,
  jsonData: T,
  parser: "json" | "json5",
): Promise<void> {
  const stringifiedData = JSON5.stringify(jsonData, undefined, 2);

  const prettierConfig = await prettier.resolveConfig(filePath);

  const formattedData = await prettier.format(stringifiedData, {
    ...prettierConfig,
    parser,
  });

  await writeFile(filePath, formattedData);
}
