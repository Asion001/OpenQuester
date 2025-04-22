/**
 * io - emit to everyone in namespace / socket server.
 *
 * socket - emit only to one specific socket client
 */
export enum SocketEventEmitter {
  IO = "io",
  SOCKET = "socket",
}
