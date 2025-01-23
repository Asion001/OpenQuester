import { ApiContext } from "services/context/ApiContext";
import { Socket } from "socket.io";

export interface ISocketContext {
  socket: Socket;
  apiContext: ApiContext;
}
