import { IGameListItem } from "types/game/IGameListItem";

enum GameEvent {
  CREATED = "created",
  CHANGED = "changed",
  DELETED = "deleted",
  STARTED = "started",
}

export interface IGameEvent {
  event: GameEvent;
  data: Partial<IGameListItem>;
}
