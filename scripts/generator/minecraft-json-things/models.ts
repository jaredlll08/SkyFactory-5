import type { ActionType } from "node-plop";

export type ActionData = {
  resourceLocation: string;
  count?: number;
};

export type ActionGetter = (data: ActionData) => ActionType[];
