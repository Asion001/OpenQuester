import Joi from "joi";

import { IInputUserData } from "interfaces/user/IInputUserData";
import { ValueUtils } from "utils/ValueUtils";
import { ClientResponse } from "enums/ClientResponse";
import { ServerResponse } from "enums/ServerResponse";
import { ClientError } from "error/ClientError";
import { ServerError } from "error/ServerError";
import { ISchema } from "interfaces/ISchema";
import { FileRepository } from "database/repositories/FileRepository";
import { Database } from "database/Database";

export class UserDataManager implements ISchema {
  protected _userData?: IInputUserData;
  protected _schema: Joi.ObjectSchema<any>;
  protected _required?: string[];
  protected _db: Database;

  constructor(db: Database) {
    this._schema = Joi.object({
      id: Joi.number(),
      login: Joi.alternatives().try(
        Joi.string().min(3).max(30),
        Joi.string().email()
      ),
      name: Joi.string().min(3).max(30),
      email: Joi.string().email(),
      password: Joi.string().min(6).max(40),
      birthday: Joi.alternatives().try(Joi.date(), Joi.string()),
      avatar: Joi.string(),
      permissions: Joi.array(),
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
    for (const entry of Object.entries(this._userData!)) {
      if (this._required.includes(entry[0])) {
        const value = this._userData![entry[0] as keyof IInputUserData];
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
   * Validates manager user data using validation schema
   */
  public async validate() {
    if (!this._userData || !ValueUtils.isValidObject(this._userData)) {
      throw new ClientError(ClientResponse.NO_USER_DATA);
    }

    this.validateFields();

    if (!this._schema) {
      throw new ServerError(ServerResponse.NO_SCHEMA);
    }

    const { value, error } = this._schema.validate(this._userData, {
      allowUnknown: false,
      stripUnknown: true,
    });

    if (this._userData.avatar) {
      const fileRepository = FileRepository.getRepository(this._db);
      const file = await fileRepository.getFileByFilename(
        this._userData.avatar
      );
      if (!file || ValueUtils.isEmpty(file)) {
        throw new ClientError(ClientResponse.NO_AVATAR);
      }

      value.avatar = file;
    }

    if (error) {
      throw new ClientError(ClientResponse.VALIDATION_ERROR, undefined, {
        error,
      });
    }

    return value;
  }

  public get data() {
    return this._userData;
  }
}
