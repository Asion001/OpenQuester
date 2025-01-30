import Joi from "joi";

import { ValueUtils } from "utils/ValueUtils";
import { ClientResponse } from "enums/ClientResponse";
import { ServerResponse } from "enums/ServerResponse";
import { ClientError } from "error/ClientError";
import { ServerError } from "error/ServerError";
import { ISchema } from "types/ISchema";
import { Database } from "database/Database";
import { IGameCreateData } from "types/game/IGameCreate";
import { EAgeRestriction } from "enums/game/EAgeRestriction";

export class GameDataManager implements ISchema {
  protected _gameData?: IGameCreateData;
  protected _schema: Joi.ObjectSchema<any>;
  protected _required: string[];
  protected _db: Database;

  constructor(db: Database) {
    this._schema = Joi.object({
      title: Joi.string().min(3).max(50),
      packageId: Joi.number().min(0),
      isPrivate: Joi.boolean(),
      maxPlayers: Joi.number().min(2).max(15),
      ageRestriction: Joi.valid(...Object.values(EAgeRestriction)),
    });
    this._required = [];
    this._db = db;
  }

  /**
   * Validates if manager instance have all required fields.
   *
   * By default it's called in `validate()`
   */
  public validateFields() {
    if (!this._required?.length) {
      return;
    }

    const r: string[] = [];
    for (const entry of Object.entries(this._gameData!)) {
      if (this._required.includes(entry[0])) {
        const value = this._gameData![entry[0] as keyof IGameCreateData];
        if (ValueUtils.isBad(value) || ValueUtils.isEmpty(value)) {
          r.push(entry[0]);
        }
      }
    }
    if (r.length > 0) {
      throw new ClientError(ClientResponse.FIELDS_REQUIRED, undefined, {
        fields: [...r],
      });
    }
  }

  /**
   * Validates game data using validation schema
   */
  public async validate() {
    if (!this._schema) {
      throw new ServerError(ServerResponse.NO_SCHEMA);
    }

    if (!this._gameData || !ValueUtils.isValidObject(this._gameData)) {
      throw new ClientError(ClientResponse.NO_GAME_DATA);
    }

    this.validateFields();

    const { value, error } = this._schema.validate(this._gameData, {
      allowUnknown: false,
      stripUnknown: true,
    });

    if (error) {
      throw new ClientError(ClientResponse.VALIDATION_ERROR, undefined, {
        error,
      });
    }

    return value;
  }

  public get data() {
    return this._gameData;
  }
}
