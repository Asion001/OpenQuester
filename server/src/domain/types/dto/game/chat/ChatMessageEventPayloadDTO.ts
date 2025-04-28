/**
 * Just ignores gameId field since client already knows the game id
 */
export interface ChatMessageGamePayloadDTO {
  uuid: string;
  user: number;
  timestamp: Date;
  message: string;
}
