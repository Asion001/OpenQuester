import {
  SocketIOEvents,
  SocketIOGameEvents,
} from "domain/enums/SocketIOEvents";
import { SocketEventEmitter } from "domain/types/socket/EmitTarget";
import { Namespace, Server, Socket } from "socket.io";

type IOEVent = SocketIOEvents | SocketIOGameEvents;

export class SocketIOEventEmitter {
  constructor(
    private readonly io: Namespace | Server,
    private readonly socket: Socket
  ) {
    //
  }

  /**
   * Generic emitting method
   * @param event Socket io event to emit
   * @param data Data of generic type `T` which will be emitted
   * @param options Optional, target is `socket` by default
   */
  public emit<T>(
    event: IOEVent,
    data: T,
    options?: { emitter: SocketEventEmitter; roomId?: string }
  ) {
    const opts = options ? options : { emitter: SocketEventEmitter.SOCKET };
    const emitter =
      opts.emitter === SocketEventEmitter.IO ? this.io : this.socket;

    if (opts.roomId) {
      emitter.to(opts.roomId).emit(event, data);
    } else {
      emitter.emit(event, data);
    }
  }
}
