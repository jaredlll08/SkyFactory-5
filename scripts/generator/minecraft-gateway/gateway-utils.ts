import { unlink } from "fs/promises";
import glob from "glob-promise";
import { defaultsDeep, snakeCase } from "lodash";
import { stringify as stringifyNBT, TagObject } from "nbt-ts";
import path from "path";
import { writeJSONFile } from "scripts/utils/file";
import { mapColorNameToHex } from "scripts/utils/minecraft-colors";
import { MobData } from "./data-manager";
import { BaseEntity, getDyeFromColor } from "./utils";

type CreateGatewayFn = (
  baseEntity: BaseEntity,
  color: string,
  dye: string,
) => object;

export function generateGatewayGenerator<T extends CreateGatewayFn>(
  gatewayBasePath: string,
  createGatewayFn: T,
  defaultEntityNBT: TagObject,
  filter: (mobEntry: MobData[0]) => boolean,
) {
  return async function generateGateways(data: MobData) {
    const files = await glob(`${gatewayBasePath}/**/*.json`);

    await Promise.all(files.map((filePath) => unlink(filePath)));

    await Promise.all(
      data.filter(filter).map((entry) => {
        if (entry.spawnOnly) {
          return;
        }

        const colorHex = mapColorNameToHex(entry.color);
        if (colorHex === null) {
          throw new Error(`Unsupported color for mobID ${entry.mobID}`);
        }

        const dye = getDyeFromColor(entry.color);
        if (dye === null) {
          throw new Error(
            `Unsupported color for dye ${entry.color} for mobID ${entry.mobID}`,
          );
        }

        const json = createGatewayFn(
          {
            entity: entry.mobID,
            nbt: stringifyNBT(
              defaultsDeep(entry.additionalGatewayMobNBT, defaultEntityNBT),
            ),
          },
          colorHex,
          dye,
        );

        return writeJSONFile(
          path.join(gatewayBasePath, `${snakeCase(entry.mobName)}.json`),
          json,
          "json",
        );
      }),
    );
  };
}
