import { createWriteStream } from "fs";
import { mkdir, rename } from "fs/promises";
import * as https from "https";
import * as path from "path";
import { checkFileExists } from "./file";

const downloadPath = "./.tmp";

export async function downloadFile(
  url: string,
  dir: string,
  filename: string = path.basename(url),
): Promise<void> {
  const tmpPath = path.join(downloadPath, filename);
  if (!checkFileExists(downloadPath)) {
    await mkdir(downloadPath);
  }

  return new Promise((resolve, reject) => {
    https.get(url, (res) => {
      const fileStream = createWriteStream(tmpPath);

      fileStream.on("finish", async () => {
        fileStream.close();

        try {
          await rename(tmpPath, path.join(dir, filename));
        } catch (err) {
          reject(err);
        }

        resolve();
      });

      fileStream.on("error", reject);

      res.pipe(fileStream);
    });
  });
}
