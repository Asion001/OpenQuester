import { OQError } from "error/OQError";

export class ServerError extends OQError {
  constructor(
    message?: string,
    code?: number,
    textArgs?: { [key: string]: any },
    options?: ErrorOptions
  ) {
    super(message, code ?? 500, textArgs, options);
  }
}
