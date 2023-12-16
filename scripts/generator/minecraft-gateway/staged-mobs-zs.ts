import { readFile, writeFile } from "fs/promises";
import { NodePlopAPI } from "node-plop";
import path from "path";
import { MobData } from "./data-manager";

const stagedMobsGlobalTemplatePath = path.join(
  __dirname,
  "staged-mobs-global.zs.tpl",
);
const stagedMobsGlobalFilePath = path.resolve(
  "./src/minecraft/scripts/globals.zs",
);

const mobStageEnumTemplatePath = path.join(
  __dirname,
  "staged-mobs-enum.zs.tpl",
);
const mobStageEnumFilePath = path.resolve(
  "./src/minecraft/scripts/stages/stages.zs",
);

export async function generateStagedMobsGlobal(
  plop: NodePlopAPI,
  data: MobData,
) {
  const template = await readFile(stagedMobsGlobalTemplatePath, "utf-8");

  const file = await readFile(stagedMobsGlobalFilePath, "utf-8");

  await writeFile(
    stagedMobsGlobalFilePath,
    file.replace(
      /\/\/ stagedMobs GENERATOR START(?:.|\n)*\/\/ stagedMobs GENERATOR END/,
      plop.renderString(template, {
        mobs: data
          .map((entry) => ({
            mob: entry.mobID,
            stageEnum: entry.stage.toUpperCase(),
          }))
          .sort((a, b) => a.mob.localeCompare(b.mob)),
      }),
    ),
  );
}

export async function generateMobStageEnum(plop: NodePlopAPI, data: MobData) {
  const template = await readFile(mobStageEnumTemplatePath, "utf-8");

  const file = await readFile(mobStageEnumFilePath, "utf-8");

  await writeFile(
    mobStageEnumFilePath,
    file.replace(
      /\/\/ MobStage GENERATOR START(?:.|\n)*\/\/ MobStage GENERATOR END/,
      plop.renderString(template, {
        mobStages: data
          .map((entry) => ({
            stage: entry.stage,
            stageEnum: entry.stage.toUpperCase(),
          }))
          .sort((a, b) => a.stageEnum.localeCompare(b.stageEnum)),
      }),
    ),
  );
}
