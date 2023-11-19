import { CustomActionFunction } from "@crutchcorn/plop";
import fs from "fs/promises";
import glob from "glob-promise";
import { compileFromFile } from "json-schema-to-typescript";
import path from "path";
import * as prettier from "prettier";
import { RegisterGeneratorFn } from "scripts/generator/models";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";
import { schemaPath } from "./constants";
import { schemaFiles } from "./schema-files";

export const registerGenerator: RegisterGeneratorFn = (plop) => {
  plop.setGenerator("JSON Schema Types", {
    description:
      "Generates JSON schema types for files defined in scripts/generator/json-schema-types/schema-files.ts",
    prompts: [],
    actions: [
      generateSchemaTypes,
      updateVSCodeSchemas,
      {
        type: "modify",
        path: "./.eslintrc.cjs",
        pattern: /\/\/ GENERATOR START[\W\w]*\/\/ GENERATOR END/g,
        templateFile: path.join(__dirname, "eslintrc.template.txt"),
        data: {
          schemaEntries: Array.from(schemaFiles)
            .filter(([, fileMatches]) => fileMatches.length > 0)
            .map(([schemaPath, fileMatches]) => {
              fileMatches = fileMatches.map((fileMatch) =>
                fileMatch.substring(1),
              );
              return {
                fileMatch: JSON.stringify(fileMatches, undefined, 2),
                schema: `"./schemas/${schemaPath}"`,
              };
            }),
        },
        transform: async (fileContents) => {
          const prettierConfig =
            await prettier.resolveConfig("./.prettierrc.cjs");
          const formatted = await prettier.format(fileContents, {
            ...prettierConfig,
            parser: "babel",
          });

          return formatted;
        },
      },
    ],
  });
};

const generateSchemaTypes: CustomActionFunction = async () => {
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
      const compiledFilePath = path.join(
        schemaPath,
        parsedPath.dir,
        `${parsedPath.name}.d.ts`,
      );

      const prettierConfig = await prettier.resolveConfig(compiledFilePath);
      const formattedCompiled = await prettier.format(compiled, {
        ...prettierConfig,
        parser: "typescript",
      });

      await fs.writeFile(compiledFilePath, formattedCompiled);

      filesGenerated += 1;
    }),
  );

  return `Successfully generated ${filesGenerated} schema type files`;
};

const updateVSCodeSchemas: CustomActionFunction = async () => {
  type PartialSettingsJSON = {
    "json.schemas"?: {
      fileMatch: string[];
      url: string;
    }[];
  };

  const settingsFilePath = "./.vscode/settings.json";

  const file = await readJSONFile<PartialSettingsJSON>(settingsFilePath);

  const unfoundMatches = new Set(schemaFiles.keys());

  const schemasEntry = file["json.schemas"] || [];
  if (schemasEntry.length > 0) {
    schemasEntry.forEach((entry) => {
      const shortenedUrl = entry.url.replace("./schemas/", "");

      const fileMatch = schemaFiles.get(shortenedUrl);
      if (!fileMatch) {
        return;
      }

      if (fileMatch.length > 0) {
        entry.fileMatch = fileMatch;
      }

      unfoundMatches.delete(shortenedUrl);
    });
  }

  unfoundMatches.forEach((entry) => {
    const fileMatch = schemaFiles.get(entry);

    if (!fileMatch) {
      throw new Error(`failed to find fileMatch for key ${entry}`);
    }

    // Don't bother setting an empty
    if (fileMatch.length === 0) {
      return;
    }

    schemasEntry.push({
      fileMatch,
      url: `./schemas/${entry}`,
    });
  });

  await writeJSONFile(
    settingsFilePath,
    {
      ...file,
      "json.schemas": schemasEntry,
    },
    "json",
  );

  return `Successfully updated VSCode 'json.schemas' property with schema files`;
};
