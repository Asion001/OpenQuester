import { IGameListItem } from "types/game/IGameListItem";

export enum EGameEvent {
  CREATED = "created",
  CHANGED = "changed",
  DELETED = "deleted",
  STARTED = "started",
}

export interface IGameEvent {
  event: EGameEvent;
  data: Partial<IGameListItem>;
}
