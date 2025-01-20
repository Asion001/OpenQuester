import { OQError } from "error/OQError";

export class ClientError extends OQError {
  constructor(
    message?: string,
    code?: number,
    textArgs?: { [key: string]: any },
    options?: ErrorOptions
  ) {
    super(message, code ?? 400, textArgs, options);
  }
}
