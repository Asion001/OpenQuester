import Joi from "joi";

import { PlayerRole } from "domain/types/game/PlayerRole";
import {
  ChatMessageData,
  GameJoinData,
} from "presentation/controllers/io/game/SocketIOGameController";
import { RequestDataValidator } from "presentation/schemes/RequestDataValidator";

export class GameValidator {
  public async validateJoinInput(data: GameJoinData) {
    const schema = Joi.object({
      gameId: Joi.string().min(4).max(4).required(),
      role: Joi.valid(...Object.values(PlayerRole)).required(),
    });

    return this._validate<GameJoinData>(data, schema);
  }

  public async validateChatMessage(data: ChatMessageData) {
    const schema = Joi.object<ChatMessageData>({
      message: Joi.string().required().min(1).max(255),
    });

    return this._validate<ChatMessageData>(data, schema);
  }

  private async _validate<T>(data: T, schema: Joi.ObjectSchema<T>) {
    return new RequestDataValidator<T>(data, schema).validate();
  }
}
