import { readFile, writeFile } from "fs/promises";
import { NodePlopAPI } from "node-plop";
import path from "path";
import { readActionState } from "./action-state-manager";

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

export async function updateStagedMobsGlobal(plop: NodePlopAPI) {
  const template = await readFile(stagedMobsGlobalTemplatePath, "utf-8");

  const file = await readFile(stagedMobsGlobalFilePath, "utf-8");

  const state = await readActionState();
  if (!state.mobStageMapping) {
    throw new Error("Mob Stages missing from Action State");
  }

  await writeFile(
    stagedMobsGlobalFilePath,
    file.replace(
      /\/\/ stagedMobs GENERATOR START(?:.|\n)*\/\/ stagedMobs GENERATOR END/,
      plop.renderString(template, {
        mobs: Object.entries(state.mobStageMapping)
          .map<{ mob: string; stageEnum: string }>(([mob, stage]) => ({
            mob,
            stageEnum: stage.toUpperCase(),
          }))
          .sort((a, b) => a.mob.localeCompare(b.mob)),
      }),
    ),
  );
}

export async function updateMobStageEnum(plop: NodePlopAPI) {
  const template = await readFile(mobStageEnumTemplatePath, "utf-8");

  const file = await readFile(mobStageEnumFilePath, "utf-8");

  const state = await readActionState();
  if (!state.mobStageMapping) {
    throw new Error("Mob Stages missing from Action State");
  }

  await writeFile(
    mobStageEnumFilePath,
    file.replace(
      /\/\/ MobStage GENERATOR START(?:.|\n)*\/\/ MobStage GENERATOR END/,
      plop.renderString(template, {
        mobStages: Object.values(state.mobStageMapping)
          .map<{ stage: string; stageEnum: string }>((stage) => ({
            stage,
            stageEnum: stage.toUpperCase(),
          }))
          .sort((a, b) => a.stageEnum.localeCompare(b.stageEnum)),
      }),
    ),
  );
}
