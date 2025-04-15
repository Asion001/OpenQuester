import { SocketIOEvents } from "domain/enums/SocketIOEvents";
import { ErrorController } from "domain/errors/ErrorController";
import { ErrorEventPayload } from "domain/types/socket/events/ErrorEventPayload";
import { SocketIOEventEmitter } from "presentation/controllers/io/SocketIOEventEmitter";

type SyncCallback<T> = (data: T) => void;
type AsyncCallback<T> = (data: T) => Promise<void>;

export class SocketWrapper {
  /**
   * Wraps any (mostly listener) callback with try-catch block and emits an error
   * event with error message back to socket client
   * @param eventEmitter SocketIOEventEmitter that will handle error emitting
   * @param handler The callback that processes data
   */
  public static catchErrors<T>(
    eventEmitter: SocketIOEventEmitter,
    handler: AsyncCallback<T> | SyncCallback<T>
  ): AsyncCallback<T> {
    return async (data: T) => {
      try {
        await handler(data);
      } catch (err: unknown) {
        const { message } = await ErrorController.resolveError(err);
        eventEmitter.emit<ErrorEventPayload>(SocketIOEvents.ERROR, {
          message: message,
        });
      }
    };
  }
}
