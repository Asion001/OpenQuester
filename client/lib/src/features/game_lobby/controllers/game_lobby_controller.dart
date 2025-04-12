import 'dart:convert';

import 'package:openquester/openquester.dart';
import 'package:socket_io_client/socket_io_client.dart';

@singleton
class GameLobbyController {
  Socket? socket;
  String? gameId;

  Future<void> join({required String gameId}) async {
    clear();
    this.gameId = gameId;
    socket = await getIt<SocketController>().createConnection(path: '/games');
    await getIt<SocketChatController>().init(socket: socket!);
    socket!
      ..onConnect((_) => _onConnect())
      ..connect();
  }

  Future<void> _onConnect() async {
    await getIt<Api>()
        .api
        .auth
        .postV1AuthSocket(body: InputSocketAuth(socketId: socket!.id!));

    final ioGameJoinInput = IOGameJoinInput(
      gameId: gameId!,
      role: IOGameJoinInputRole.spectator,
    );
    socket?.emit('join', jsonEncode(ioGameJoinInput.toJson()));
  }

  void clear() {
    try {
      gameId = null;
      socket?.dispose();
    } catch (_) {}
  }
}
