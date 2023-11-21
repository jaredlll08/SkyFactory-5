import archiver from "archiver";
import { randomBytes } from "crypto";
import fs from "fs";
import glob from "glob-promise";
import { globifyGitIgnore } from "globify-gitignore";
import path from "path";
import mcPackage from "mc-package.json";
import { createDirectories } from "scripts/utils/file";
import {
  directories,
  releaseDirPath,
  releaseIgnorePath,
  serverIgnoredMods,
} from "./constants";

async function main() {
  // Ensure release directory exists
  createDirectories(releaseDirPath);

  let clientFileName = `SkyFactory 5 v${mcPackage.version}`;
  let serverFileName = `SkyFactory 5 Server v${mcPackage.version}`;
  if (process.env.NODE_ENV !== "production") {
    const appendedText = `-${new Date()
      .toISOString()
      .slice(0, 10)}-${randomBytes(8).toString("hex")}`;

    clientFileName += appendedText;
    serverFileName += appendedText;
  }

  const denylist = (
    await globifyGitIgnore(
      fs.readFileSync(releaseIgnorePath, "utf-8"),
      process.cwd(),
    )
  ).map((entry) => entry.glob);

  await createZip(
    directories,
    path.join(releaseDirPath, `${clientFileName}.zip`),
    "client",
    denylist,
  );

  await createZip(
    directories,
    path.join(releaseDirPath, `${serverFileName}.zip`),
    "server",
    denylist,
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
      console.log(`${archive.pointer()} total bytes`);
      console.log(
        "Archiver has been finalized and the output file descriptor has closed.",
      );
      resolve();
    });

    archive.on("error", (err: unknown) => {
      reject(err);
    });

    archive.pipe(output);

    sourceFiles.forEach((file) => {
      if (file.zipBasePath === "mods" && type === "server") {
        const pattern = new RegExp(`(${serverIgnoredMods.join("|")})`, "gi");
        if (pattern.test(file.cwdRelativePath)) {
          return;
        }
      }

      archive.file(path.join(process.cwd(), file.cwdRelativePath), {
        name: file.zipPath,
      });
    });

    archive.finalize();
  });
}

main();
