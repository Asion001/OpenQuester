import { Socket } from "socket.io";

import { ApiContext } from "application/context/ApiContext";

export interface SocketContextDTO {
  socket: Socket;
  apiContext: ApiContext;
}
