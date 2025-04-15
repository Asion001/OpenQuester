import { Player } from "domain/entities/game/Player";
import { GameListItemDTO } from "domain/types/dto/game/GameListItemDTO";

export interface GameRoomCreateDTO {
  players: Player[];
  scores: Map<number, number>;
  slots: (number | null)[];
  gameData: GameListItemDTO;
}
