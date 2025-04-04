import { BaseError } from "domain/errors/BaseError";

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
