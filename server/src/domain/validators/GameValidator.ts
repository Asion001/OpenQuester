import Joi from "joi";

import { GAME_ID_CHARACTERS_LENGTH } from "domain/constants/game";
import { PlayerRole } from "domain/types/game/PlayerRole";
import { ChatMessageInputData } from "domain/types/socket/chat/ChatMessageInputData";
import { GameJoinData } from "domain/types/socket/game/GameJoinData";
import { RequestDataValidator } from "presentation/schemes/RequestDataValidator";

export class GameValidator {
  public static async validateJoinInput(data: GameJoinData) {
    const schema = Joi.object({
      gameId: Joi.string().length(GAME_ID_CHARACTERS_LENGTH).required(),
      role: Joi.valid(...Object.values(PlayerRole)).required(),
    });

    return this._validate<GameJoinData>(data, schema);
  }

  public static async validateChatMessage(data: ChatMessageInputData) {
    const schema = Joi.object<ChatMessageInputData>({
      message: Joi.string().required().min(1).max(255),
    });

    return this._validate<ChatMessageInputData>(data, schema);
  }

  private static async _validate<T>(data: T, schema: Joi.ObjectSchema<T>) {
    return new RequestDataValidator<T>(data, schema).validate();
  }
}
