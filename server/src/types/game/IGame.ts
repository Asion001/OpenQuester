import { IGameListItem } from "types/game/IGameListItem";

type pickFields =
  | "id"
  | "title"
  | "createdAt"
  | "currentRound"
  | "isPrivate"
  | "players"
  | "ageRestriction"
  | "maxPlayers"
  | "startedAt";

export interface IGame extends Pick<IGameListItem, pickFields> {
  createdBy: number;
  package: number;
}
