export interface ChatMessageDTO {
  uuid: string;
  gameId: string;
  user: number;
  timestamp: Date;
  message: string;
}
