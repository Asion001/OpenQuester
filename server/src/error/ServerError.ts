import { OQError } from "./OQError";

export class ServerError extends OQError {
  // TODO: Write server errors to DB
  constructor(message?: string, code?: number, options?: ErrorOptions) {
    super(message, code ?? 500, options);
  }
}
