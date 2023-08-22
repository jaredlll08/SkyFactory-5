import * as fs from "fs";
import { access, readdir, readFile, unlink } from "fs/promises";
import * as path from "path";

export async function checkFileExists(filePath: string): Promise<boolean> {
  try {
    await access(filePath, fs.constants.F_OK);
  } catch (err) {
    return false;
  }

  return true;
}

export async function emptyDirectory(directory: string): Promise<void> {
  const files = await readdir(directory);

  await Promise.all(files.map((file) => unlink(path.join(directory, file))));
}

export async function readJSONFile<T extends object>(
  filePath: string,
): Promise<T> {
  const file = await readFile(filePath, "utf-8");
  const parsedFile = JSON.parse(file);

  return parsedFile;
}
