/* eslint-disable */
/**
 * This file was automatically generated by json-schema-to-typescript.
 * DO NOT MODIFY IT BY HAND. Instead, modify the source JSONSchema file,
 * and run json-schema-to-typescript to regenerate this file.
 */

/**
 * A Obscure Tooltips style datapack file
 */
export interface ObscureTooltipsStyle {
  priority: number;
  panel: string;
  icon: string;
  effects: string[];
  filter: {
    items?: string[];
    enchantments?: {
      [k: string]: unknown;
    };
    tags?: {
      [k: string]: unknown;
    };
  };
}
