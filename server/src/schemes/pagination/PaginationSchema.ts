import Joi from "joi";

import {
  EPaginationOrder,
  IPaginationOpts,
} from "types/pagination/IPaginationOpts";
import { ServerError } from "error/ServerError";
import { ClientError } from "error/ClientError";
import { ServerResponse } from "enums/ServerResponse";
import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import { IPaginationSchemaOpts } from "types/pagination/IPaginationSchemaOpts";
import { LIMIT_MAX, LIMIT_MIN, OFFSET_MIN } from "constants/pagination";

export class PaginationSchema<T> {
  protected _schema: Joi.ObjectSchema<IPaginationOpts<T>>;
  protected _paginationData: IPaginationOpts<T>;

  constructor(schemaOpts: IPaginationSchemaOpts<T>) {
    this._schema = Joi.object<IPaginationOpts<T>>({
      limit: Joi.number().required().min(LIMIT_MIN).max(LIMIT_MAX).required(),
      offset: Joi.number().required().min(OFFSET_MIN).required(),
      order: Joi.valid(...Object.values(EPaginationOrder)),
      sortBy: Joi.valid(...schemaOpts.possibleSortByFields),
    });

    const data = schemaOpts.data;
    this._paginationData = {
      limit: data.limit,
      offset: data.offset,
      order: data.order,
      sortBy: data.sortBy,
    };
  }

  public async validate() {
    if (!this._schema) {
      throw new ServerError(ServerResponse.NO_SCHEMA);
    }

    const { value, error } = this._schema.validate(this._paginationData, {
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
