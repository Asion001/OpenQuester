import { ChatMessageDTO } from "domain/types/dto/game/chat/ChatMessageDTO";

export class ChatMapper {
  public static serializeChatMessages(messageData: string[]): ChatMessageDTO[] {
    const messages: ChatMessageDTO[] = messageData.map((message: string) => {
      return this.serializeChatMessage(message);
    });
    return messages;
  }

  public static serializeChatMessage(messageData: string): ChatMessageDTO {
    const msg = JSON.parse(messageData);

    return {
      gameId: msg.gameId,
      message: msg.message,
      timestamp: new Date(msg.timestamp),
      user: parseInt(msg.user),
      uuid: msg.uuid,
    };
  }
}
