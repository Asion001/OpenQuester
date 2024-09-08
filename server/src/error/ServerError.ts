import { OQError } from "./OQError";

export class ServerError extends OQError {
  constructor(message?: string, code?: number, options?: ErrorOptions) {
    super(message, code ?? 500, options);
  }
}
