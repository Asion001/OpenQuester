import { OQError } from "./OQError";

export class ClientError extends OQError {
  constructor(message?: string, code?: number, options?: ErrorOptions) {
    super(message, code ?? 400, options);
  }
}
