import fs from "fs/promises";
import glob from "glob-promise";
import { compileFromFile } from "json-schema-to-typescript";
import path from "path";
import { RegisterGeneratorFn } from "scripts/generator/models";
import { schemaPath } from "./constants";
import { schemaFiles } from "./schema-files";

export const registerGenerator: RegisterGeneratorFn = (plop) => {
  plop.setActionType("generateSchemaTypes", async () => {
    const files = await glob(schemaPath + "/**/*.json");

    let filesGenerated = 0;

    await Promise.all(
      files.map(async (filePath) => {
        const fileSubPath = filePath.replace(`${schemaPath}/`, "");

        if (!schemaFiles.has(fileSubPath)) {
          return;
        }

        const compiled = await compileFromFile(
          path.join(schemaPath, fileSubPath),
        );

        const parsedPath = path.parse(fileSubPath);

        await fs.writeFile(
          path.join(schemaPath, parsedPath.dir, `${parsedPath.name}.d.ts`),
          compiled,
        );

        filesGenerated += 1;
      }),
    );

    return `Successfully generated ${filesGenerated} schema type files`;
  });

  plop.setGenerator("JSON Schema Types", {
    description:
      "Generates JSON schema types for files defined in scripts/generator/json-schema-types/schema-files.ts",
    prompts: [],
    actions: [
      {
        type: "generateSchemaTypes",
      },
    ],
  });
};
