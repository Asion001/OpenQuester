import { BaseError } from "domain/errors/OQError";

export class ClientError extends BaseError {
  constructor(
    message?: string,
    code?: number,
    textArgs?: { [key: string]: any },
    options?: ErrorOptions
  ) {
    super(message, code ?? 400, textArgs, options);
  }
}
