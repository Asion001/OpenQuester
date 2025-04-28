import { ChatMessageGamePayloadDTO } from "domain/types/dto/game/chat/ChatMessageEventPayloadDTO";

export class ChatMapper {
  public static serializeChatMessages(
    messageData: string[]
  ): ChatMessageGamePayloadDTO[] {
    const messages: ChatMessageGamePayloadDTO[] = messageData.map(
      (message: string) => {
        return this.serializeChatMessage(message);
      }
    );
    return messages;
  }

  public static serializeChatMessage(
    messageData: string
  ): ChatMessageGamePayloadDTO {
    const msg = JSON.parse(messageData);

    return {
      message: msg.message,
      timestamp: new Date(msg.timestamp),
      user: parseInt(msg.user),
      uuid: msg.uuid,
    };
  }
}
