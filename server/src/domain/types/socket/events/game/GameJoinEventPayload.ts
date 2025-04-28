import { ChatMessageGamePayloadDTO } from "domain/types/dto/game/chat/ChatMessageEventPayloadDTO";
import { PlayerDTO } from "domain/types/dto/game/player/PlayerDTO";
import { GameStateDTO } from "domain/types/dto/game/state/GameStateDTO";
import { GameJoinMeta } from "domain/types/socket/events/game/GameJoinMeta";

export interface GameJoinEventPayload {
  meta: GameJoinMeta;
  players: PlayerDTO[];
  gameState: GameStateDTO;
  chatMessages: ChatMessageGamePayloadDTO[];
}
