import Joi from "joi";

import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import { ServerResponse } from "enums/ServerResponse";
import { ClientError } from "error/ClientError";
import { ServerError } from "error/ServerError";

export class RequestDataValidator<T> {
  private _schema: Joi.ObjectSchema<T>;
  private _data: T;

  constructor(data: T, schema: Joi.ObjectSchema<T>) {
    this._schema = schema;
    this._data = data;
  }

  public async validate() {
    if (!this._schema) {
      throw new ServerError(ServerResponse.NO_SCHEMA);
    }

    const { value, error } = this._schema.validate(this._data, {
      allowUnknown: false,
      stripUnknown: true,
    });

    if (error) {
      throw new ClientError(
        ClientResponse.VALIDATION_ERROR,
        HttpStatus.BAD_REQUEST,
        {
          error,
        }
      );
    }

    return value;
  }
}
