import glob from "glob-promise";
import path from "path";
import { GatewaysToEternityGatewayV2 } from "schemas/minecraft/gateways/gateways-v2";
import { createStandardTitanGateway } from "scripts/generator/minecraft-gateway/titan-gateway";
import { getDyeFromColor } from "scripts/generator/minecraft-gateway/utils";
import { readJSONFile, writeJSONFile } from "scripts/utils/file";
import { ColorName, mapHexToColorName } from "scripts/utils/minecraft-colors";

const gatewaysBasePath = path.resolve(
  "./src/minecraft/global_packs/required_data/skyfactory_5/data/gateways/gateways",
);

async function main() {
  const gatewayDatapackFiles = await glob(
    `${gatewaysBasePath}/titan/**/*.json`,
    {
      ignore: [],
    },
  );

  await Promise.all(
    gatewayDatapackFiles.map(async (filePath) => {
      const data = await readJSONFile<GatewaysToEternityGatewayV2>(filePath);

      switch (data.__typename) {
        case "InvalidGateway":
          return;
        case "EndlessGateway": {
          const gatewayColor = mapHexToColorName(data.color);

          if (gatewayColor === ColorName.None || gatewayColor === null) {
            throw new Error(`unsupported gateway color ${data.color}`);
          }

          const dye = getDyeFromColor(gatewayColor);
          if (dye === null) {
            throw new Error(
              `failed to determine dye for gateway color ${data.color}`,
            );
          }

          return await writeJSONFile(
            filePath,
            createStandardTitanGateway(
              data.base_wave.entities[0],
              data.color,
              dye,
            ),
            "json",
          );
        }
        default:
          // eslint-disable-next-line @typescript-eslint/ban-ts-comment
          // @ts-ignore
          throw new Error(`Unsupported gateway type ${data.__typename}`);
      }
    }),
  );
}

main();
