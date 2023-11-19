/* eslint-disable */
/**
 * This file was automatically generated by json-schema-to-typescript.
 * DO NOT MODIFY IT BY HAND. Instead, modify the source JSONSchema file,
 * and run json-schema-to-typescript to regenerate this file.
 */

/**
 * A V1 gateway datapack file used to define a new Gateway for the Gateways To Eternity mod.
 */
export type GatewaysToEternityGatewayV1 = NormalGateway | InvalidGateway;
export type GatewaySize = "small" | "medium" | "large";
export type GatewayColor =
  | (
      | "black"
      | "dark_blue"
      | "dark_green"
      | "dark_aqua"
      | "dark_red"
      | "dark_purple"
      | "gold"
      | "gray"
      | "dark_gray"
      | "blue"
      | "green"
      | "aqua"
      | "red"
      | "light_purple"
      | "yellow"
      | "white"
      | "minecoin_gold"
      | "material_quartz"
      | "material_iron"
      | "material_netherite"
      | "material_redstone"
      | "material_copper"
      | "material_gold"
      | "material_emerald"
      | "material_diamond"
      | "material_lapis"
      | "material_amethyst"
    )
  | string;
export type GatewayWaveEntity = {
  type?: "gateways:standard";
  /**
   * Registry name of the entity being spawned.
   */
  entity: string;
  /**
   * Lang key used when this wave entity is displayed in a tooltip. If absent, the default lang key of the entity type used.
   */
  desc?: string;
  nbt?: CompoundTag;
  /**
   * A list of wave modifiers for the entity.
   */
  modifiers?: GatewayWaveModifier[];
  /**
   * The number of copies of this entity to spawn.
   */
  count?: number;
};
export type CompoundTag =
  | string
  | {
      [k: string]: unknown;
    };
export type GatewayReward =
  | {
      type: "stack";
      stack: ItemStack;
    }
  | {
      type: "stack_list";
      stacks: ItemStack[];
    }
  | {
      type: "entity_loot";
      entity: string;
      /**
       * NBT data that will be loaded onto the entity before evaluating the loot table.
       */
      nbt?:
        | string
        | {
            [k: string]: unknown;
          };
      /**
       * The number of times the loot table will be rolled. Default value = 1.
       */
      rolls?: number;
    }
  | {
      type: "loot_table";
      loot_table: string;
      /**
       * The number of times the loot table will be rolled. Default value = 1.
       */
      rolls?: number;
      /**
       * Lang key (or english text) which will be used to display the reward in the tooltip.
       */
      desc: string;
    }
  | {
      type: "command";
      /**
       * The command string, without a leading slash.
       */
      command: string;
      /**
       * Lang Key (or english text) which will be used to display the reward in the tooltip.
       */
      desc: string;
    }
  | {
      type: "chanced";
      /**
       * The chance the reward is granted. 1 is 100%
       */
      chance: number;
      reward: GatewayReward;
    };
export type GatewayRewards = GatewayReward[];
export type GatewayWaves = GatewayWave[];
export type GatewayFailure =
  | {
      type: "explosion";
      strength: number;
      /**
       * If the explosion will cause fire to spawn.
       */
      fire: boolean;
      /**
       * If the explosion will damage blocks.
       */
      block_damage: boolean;
    }
  | {
      type: "mob_effect";
      effect: string;
      /**
       * Duration, in ticks, of the effect.
       */
      duration: number;
      /**
       * Effect amplifier. A value of zero corresponds to level 1.
       */
      amplifier: number;
    }
  | {
      type: "summon";
      entity: GatewayWaveEntity;
    }
  | {
      type: "command";
      /**
       * The command string, without a leading slash.
       */
      command: string;
      /**
       * Lang Key (or english text) which will be used to display the failure in the tooltip.
       */
      desc: string;
    }
  | {
      type: "chanced";
      /**
       * The chance the reward is granted. 1 is 100%
       */
      chance: number;
    };
export type GatewayFailures = GatewayFailure[];
export type GatewaySpawnAlgorithm =
  | "gateways:open_field"
  | "gateways:inward_spiral";

export interface NormalGateway {
  __typename: "NormalGateway";
  size: GatewaySize;
  color: GatewayColor;
  waves: GatewayWaves;
  rewards?: GatewayRewards;
  failures?: GatewayFailures;
  spawn_algorithm?: GatewaySpawnAlgorithm;
  completion_xp?: number;
  spawn_range?: number;
  leash_range?: number;
  player_damage_only?: boolean;
  allow_discarding?: boolean;
}
export interface GatewayWave {
  entities: GatewayWaveEntity[];
  /**
   * A list of wave modifiers to be applied to all spawned entities.
   */
  modifiers?: GatewayWaveModifier[];
  rewards?: GatewayRewards;
  /**
   * The maximum time (in ticks) that a player may take to complete this wave.
   */
  max_wave_time: number;
  /**
   * The setup time (in ticks) before this wave begins, after the last wave was completed.
   */
  setup_time: number;
}
export interface GatewayWaveModifier {
  attribute: string;
  operation: "ADDITION" | "MULTIPLY_BASE" | "MULTIPLY_TOTAL";
  value: number;
}
export interface ItemStack {
  /**
   * Registry name of the item to load.
   */
  item: string;
  /**
   * If this stack is optional, and will produce an empty stack instead of throwing an error when the item is not found. Default value = false.
   */
  optional?: boolean;
  count?: number;
  nbt?: CompoundTag;
  cap_nbt?: CompoundTag;
}
/**
 * Allows for invalidating an existing gateway
 */
export interface InvalidGateway {
  __typename: "InvalidGateway";
  /**
   * @minItems 1
   * @maxItems 1
   */
  conditions: [
    {
      type: "forge:false";
    },
  ];
}
