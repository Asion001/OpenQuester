import { GameListItemDTO } from "types/dto/game/GameListItemDTO";

export enum GameEvent {
  CREATED = "created",
  CHANGED = "changed",
  DELETED = "deleted",
  STARTED = "started",
}

export interface GameEventDTO {
  event: GameEvent;
  data: Partial<GameListItemDTO>;
}
