import { GameListItemDTO } from "types/dto/game/GameListItemDTO";

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

export interface GameDTO extends Pick<GameListItemDTO, pickFields> {
  createdBy: number;
  package: number;
}
