/* eslint-disable */
/**
 * This file was automatically generated by json-schema-to-typescript.
 * DO NOT MODIFY IT BY HAND. Instead, modify the source JSONSchema file,
 * and run json-schema-to-typescript to regenerate this file.
 */

export type Behaviors =
  | ItemBehavior
  | MobEffectBehavior
  | PlaceBlockBehavior
  | ExplosionBehavior
  | ArrowBehavior
  | GuardianCurseBehavior
  | EnderPearlBehavior
  | LlamaSpitBehavior
  | TotemOfUndyingBehavior
  | LootTableBehavior
  | RightClickItemBehavior
  | SetFire;

/**
 * A OpenBlocks Trophies trophy datapack file
 */
export interface OpenBlocksTrophiesTrophy {
  behavior?: Behaviors;
  drop_chance?: number;
  entity: string;
  offset?: number;
  scale?: number;
  variants?:
    | {
        [k: string]: unknown;
      }[]
    | {
        [k: string]: unknown;
      };
  variant_registry?: {
    key?: string;
    registry?: string;
  };
  default_variant?: {
    [k: string]: unknown;
  };
}
export interface ItemBehavior {
  type: "obtrophies:item";
  /**
   * The namespace of an item that the trophy should give
   */
  item: string;
  /**
   * The time, in ticks, it takes until the trophy can give you another item
   */
  cooldown?: number;
  /**
   * The namespace of a sound that should play when an item is given to the player
   */
  sound?: string;
}
export interface MobEffectBehavior {
  type: "obtrophies:mob_effect";
  effect: string;
  time: number;
  amplifier?: number;
}
export interface PlaceBlockBehavior {
  type: "obtrophies:place_block";
  block: string;
  placement: "above" | "cross" | "around" | "encase";
}
export interface ExplosionBehavior {
  type: "obtrophies:explosion";
  power: number;
  destructive: boolean;
}
export interface ArrowBehavior {
  type: "obtrophies:arrow";
  amount?: number;
  effect?: string;
}
export interface GuardianCurseBehavior {
  type: "obtrophies:guardian_curse";
}
export interface EnderPearlBehavior {
  type: "obtrophies:ender_pearl";
}
export interface LlamaSpitBehavior {
  type: "obtrophies:llama_spit";
}
export interface TotemOfUndyingBehavior {
  type: "obtrophies:totem_of_undying";
}
export interface LootTableBehavior {
  type: "obtrophies:loot_table";
  loot_table: string;
  cooldown?: number;
  rolls?: number;
}
export interface RightClickItemBehavior {
  type: "obtrophies:right_click_item";
  item_to_use: string;
  shrink_item_stack: boolean;
  execute_behavior: Behaviors;
  cooldown?: number;
  sound?: string;
}
export interface SetFire {
  type: "obtrophies:set_fire";
  seconds: number;
}
