import { readFile, writeFile } from "fs/promises";
import { NodePlopAPI } from "node-plop";
import path from "path";
import type { MobData as MobDataEntry } from "./data";

export type MobData = (typeof import("./data"))["mobData"];

export async function loadData() {
  return (await import("./data")).mobData;
}

const absDataPath = path.join(__dirname, "data.json");

const templatePath = path.join(__dirname, "data-entry.tpl");
const placeholderText = "//! DATA MANAGER ENTRY MARKER - DON'T TOUCH";

export async function appendToData(plop: NodePlopAPI, data: MobDataEntry) {
  const template = await readFile(templatePath, "utf-8");

  const file = await readFile(absDataPath, "utf-8");

  file.replace(
    placeholderText,
    plop.renderString(template, { ...data, placeholderText }),
  );

  await writeFile(absDataPath, file);
}
