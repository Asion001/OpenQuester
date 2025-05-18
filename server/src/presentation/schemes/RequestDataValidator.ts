import Joi from "joi";

import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { ServerResponse } from "domain/enums/ServerResponse";
import { ClientError } from "domain/errors/ClientError";
import { ServerError } from "domain/errors/ServerError";

export class RequestDataValidator<T> {
  private _schema: Joi.ObjectSchema<T>;
  private _data: T;

  constructor(data: T, schema: Joi.ObjectSchema<T>) {
    this._schema = schema;
    this._data = data;
  }

  public validate() {
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
