import * as fs from "fs/promises";
import { compileFromFile } from "json-schema-to-typescript";
import * as path from "path";
import { schemaPath } from "./constants";
import { schemaFiles } from "./schema-files";

main();

async function main() {
  const files = await fs.readdir(schemaPath, {
    withFileTypes: true,
  });

  Promise.all(
    files.map(async (file) => {
      if (!schemaFiles.has(file.name)) {
        return;
      }

      const compiled = await compileFromFile(path.join(schemaPath, file.name));

      await fs.writeFile(
        path.join(schemaPath, `${path.parse(file.name).name}.d.ts`),
        compiled,
      );
    }),
  );
}
