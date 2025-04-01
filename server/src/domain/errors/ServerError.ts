import { BaseError } from "domain/errors/OQError";

export class ServerError extends BaseError {
  constructor(
    message?: string,
    code?: number,
    textArgs?: { [key: string]: any },
    options?: ErrorOptions
  ) {
    super(message, code ?? 500, textArgs, options);
  }
}
