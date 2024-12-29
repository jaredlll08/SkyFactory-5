import archiver from "archiver";
import chalk from "chalk";
import { randomBytes } from "crypto";
import fs from "fs";
import glob from "glob-promise";
import { globifyGitIgnore } from "globify-gitignore";
import path from "path";
import mcPackage from "mc-package.json";
import { createDirectories, emptyDirectory } from "scripts/utils/file";
import {
  clientReleaseIgnorePath,
  directories,
  releaseDirPath,
  serverReleaseIgnorePath,
  sharedReleaseIgnorePath,
} from "./constants";

async function main() {
  // Ensure release directory exists
  createDirectories(releaseDirPath);

  // Delete any existing files
  emptyDirectory(releaseDirPath);

  let clientFileName = `SkyFactory 5 v${mcPackage.version}`;
  let serverFileName = `SkyFactory 5 Server v${mcPackage.version}`;
  if (process.env.NODE_ENV !== "production") {
    const appendedText = `-${new Date()
      .toISOString()
      .slice(0, 10)}-${randomBytes(8).toString("hex")}`;

    clientFileName += appendedText;
    serverFileName += appendedText;
  }

  const { clientIgnore, serverIgnore } = await loadIgnoreFiles();

  await createZip(
    directories,
    path.join(releaseDirPath, `${clientFileName}.zip`),
    "client",
    clientIgnore,
  );

  await createZip(
    directories,
    path.join(releaseDirPath, `${serverFileName}.zip`),
    "server",
    serverIgnore,
  );
}

interface SourceFilePath {
  zipPath: string;
  cwdRelativePath: string;
  zipBasePath: string;
}

async function createZip(
  sources: Map<string, string>,
  target: string,
  type: "client" | "server",
  denylist: string[] = [],
): Promise<void> {
  const sourceFiles = (
    await Promise.all(
      Array.from(sources).map(async ([dir, rootPath]) => {
        const source = path
          .relative(process.cwd(), path.join(rootPath, dir))
          .replace(/\\/g, "/");

        const result = await glob(`${source}/**/*`, {
          cwd: process.cwd(),
          ignore: denylist,
          nocase: true,
        });

        const pattern = new RegExp(
          `^${path.relative(process.cwd(), source).replace(/\\/g, "/")}`,
        );

        return result.map<SourceFilePath>((file) => ({
          zipPath: file.replace(pattern, dir),
          cwdRelativePath: file,
          zipBasePath: dir,
        }));
      }),
    )
  ).flat();

  return new Promise((resolve, reject) => {
    const output = fs.createWriteStream(target);
    const archive = archiver("zip", {
      zlib: { level: 9 },
    });

    output.on("close", () => {
      console.log(chalk.green(`Successfully created zip: ${target}`));
      resolve();
    });

    archive.on("error", (err: unknown) => {
      console.log(chalk.red(`An error occurred while creating zip: ${target}`));
      reject(err);
    });

    archive.pipe(output);

    sourceFiles.forEach((file) => {
      archive.file(path.join(process.cwd(), file.cwdRelativePath), {
        name: file.zipPath,
      });
    });

    archive.finalize();
  });
}

async function loadIgnoreFiles(): Promise<{
  clientIgnore: string[];
  serverIgnore: string[];
}> {
  const clientIgnoreData = fs.readFileSync(clientReleaseIgnorePath, "utf-8");
  const serverIgnoreData = fs.readFileSync(serverReleaseIgnorePath, "utf-8");
  const sharedIgnoreData = fs.readFileSync(sharedReleaseIgnorePath, "utf-8");

  return {
    clientIgnore: (
      await globifyGitIgnore(
        sharedIgnoreData + "\n" + clientIgnoreData,
        process.cwd(),
      )
    ).map((entry) => entry.glob),
    serverIgnore: (
      await globifyGitIgnore(
        sharedIgnoreData + "\n" + serverIgnoreData,
        process.cwd(),
      )
    ).map((entry) => entry.glob),
  };
}

main();
