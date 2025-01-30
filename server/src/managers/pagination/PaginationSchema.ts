import {
  EPaginationOrder,
  IPaginationOpts,
} from "types/pagination/IPaginationOpts";
import Joi from "joi";
import { ServerError } from "error/ServerError";
import { ServerResponse } from "enums/ServerResponse";
import { ClientError } from "error/ClientError";
import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import { IPaginationSchemaOpts } from "types/pagination/IPaginationSchemaOpts";

export class PaginationSchema<T> {
  protected _schema: Joi.ObjectSchema<IPaginationOpts<T>>;
  protected _paginationData: IPaginationOpts<T>;

  // TODO: This is better Joi validation usage. After other schemas is refactored, remove this line
  constructor(schemaOpts: IPaginationSchemaOpts<T>) {
    this._schema = Joi.object<IPaginationOpts<T>>({
      limit: Joi.number().required().min(1).max(50).required(),
      offset: Joi.number().required().min(0).required(),
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
