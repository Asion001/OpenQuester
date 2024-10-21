import { ServerError } from "../error/ServerError";
import { ServerResponse } from "../enums/ServerResponse";

type Constructor = new (...args: any[]) => any;

/**
 * Stores instances of all server services
 */
export class ServerServices {
  private _services = new Map<Constructor, any>();

  constructor() {
    //
  }

  public register<T>(
    serviceClass: new (...args: any[]) => T,
    ...serviceArgs: any[]
  ): void {
    this._services.set(serviceClass, new serviceClass(...serviceArgs));
  }

  public get<T>(serviceClass: new (...args: any[]) => T): T {
    const service = this._services.get(serviceClass);
    if (!service) {
      throw new ServerError(ServerResponse.SERVICE_NOT_FOUND);
    }
    return service as T;
  }
}
