import { Socket } from "socket.io";

import { ApiContext } from "services/context/ApiContext";

export interface SocketContextDTO {
  socket: Socket;
  apiContext: ApiContext;
}
