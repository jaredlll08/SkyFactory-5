import sudo from "@vscode/sudo-prompt";
import fs from "fs";
import isElevated from "is-elevated";
import path from "path";
import readline from "readline";

const rl = readline.createInterface(process.stdin, process.stdout);

const buildDir = path.join(process.cwd(), "src", "minecraft");
const minecraftPath = path.join(process.cwd(), "minecraft");

// Maps a symlinked directory to the base target path
const symlinkDirs = new Map([
  [".vscode", process.cwd()],
  ["config", buildDir],
  ["datagen", buildDir],
  ["defaultconfigs", buildDir],
  ["global_packs", buildDir],
  ["journeymap", buildDir],
  ["kubejs", buildDir],
  ["packmenu", buildDir],
  ["scripts", buildDir],
  ["thingpacks", buildDir],
]);

main();

async function main() {
  if (!checkTargetDirsExist()) {
    console.error(
      "Base directories do not exist. Ensure you've built the project before running this command.",
    );
    process.exit(-1);
  }

  if (process.argv[2]) {
    rl.close();
    return createSymlinks(process.argv[2]);
  }

  const existingFiles = checkIfFilesExist(minecraftPath);
  if (existingFiles) {
    console.log(
      `Existing files matching symlinks are present: ${existingFiles.join(
        ", ",
      )}`,
    );
    const confirmReplace = await ask(
      `Should the existing files be replaced? (y/N)`,
    );
    if (confirmReplace.toLowerCase() !== "y") {
      console.log("You did not confirm. Exiting...");
      process.exit();
    }
  }

  createSymlinks(minecraftPath);

  rl.close();
}

function ask(query: string): Promise<string> {
  return new Promise((resolve) => {
    rl.question(query + " ", resolve);
  });
}

/**
 * Checks if the build directory and all expected sub directories exist.
 * @returns false if anything is missing
 */
function checkTargetDirsExist(): boolean {
  const checkedDirs = new Set();

  const missingBaseDirs = [];

  symlinkDirs.forEach((baseDir) => {
    if (checkedDirs.has(baseDir)) {
      return;
    }

    checkedDirs.add(baseDir);

    if (!fs.existsSync(baseDir)) {
      missingBaseDirs.push(baseDir);
    }
  });

  if (missingBaseDirs.length > 0) {
    return false;
  }

  return Array.from(symlinkDirs).every(([dir, baseDir]) =>
    fs.existsSync(path.join(baseDir, dir)),
  );
}

/**
 *
 * @param {string} mcDir The Minecraft instance directory
 * @returns {string[] | null} Any existing files (or null if none)
 */
function checkIfFilesExist(mcDir: string): string[] | null {
  const files = fs.readdirSync(mcDir);
  const existingFiles = files.filter((dir) => symlinkDirs.has(dir));

  return existingFiles.length > 0 ? existingFiles : null;
}

/**
 *
 * @param {string} mcDir The Minecraft instance directory
 */
async function createSymlinks(mcDir: string) {
  if (!(await isElevated())) {
    sudo.exec(
      `npm run symlink -- "${mcDir}"`,
      { name: "MC Pack Symlinker" },
      (error) => {
        if (error) {
          console.error("error in symlink creation:\n" + error);
        }
      },
    );
    return;
  }

  symlinkDirs.forEach((baseDir, dir) => {
    const newSymlinkPath = path.join(mcDir, dir);

    if (fs.existsSync(newSymlinkPath)) {
      const stat = fs.lstatSync(newSymlinkPath);

      if (stat.isSymbolicLink()) {
        fs.unlinkSync(newSymlinkPath);
      } else if (stat.isDirectory()) {
        fs.rmSync(newSymlinkPath, { recursive: true });
      } else {
        fs.rmSync(newSymlinkPath);
      }
    }

    fs.symlinkSync(path.join(baseDir, dir), newSymlinkPath, "junction");
  });
}
