import path from "path";

export const gatewaysBasePath = path.resolve(
  "./src/minecraft/global_packs/required_data/skyfactory_5/data/gateways/gateways",
);

export enum GatewayType {
  Normal = "Normal",
  Titan = "Titan",
}
