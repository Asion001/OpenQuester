import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show PersistentBottomSheetController;
import 'package:openquester/openquester.dart';
import 'package:socket_io_client/socket_io_client.dart';

@singleton
class GameLobbyController {
  Socket? socket;
  String? gameId;

  final round = ValueNotifier<LobbyRound?>(null);
  final gameData = ValueNotifier<SocketIOGameJoinEventPayload?>(null);

  PersistentBottomSheetController? bottomSheetController;
  final showDesktopChat = ValueNotifier<bool>(true);

  Future<void> join({required String gameId}) async {
    if (this.gameId == gameId) return; // Check if already joined
    clear();
    try {
      this.gameId = gameId;
      socket = await getIt<SocketController>().createConnection(path: '/games');
      socket!
        ..onConnect((_) => _onConnect())
        ..onDisconnect((_) => clear())
        ..on(SocketIOGameEvents.gameData.json!, _onGameData)
        ..connect();

      round.value = testRound;
    } catch (e, s) {
      logger.e(e, stackTrace: s);
      clear();
      rethrow;
    }
  }

  Future<void> _onConnect() async {
    try {
      await getIt<Api>()
          .api
          .auth
          .postV1AuthSocket(body: InputSocketIOAuth(socketId: socket!.id!));
      final ioGameJoinInput = SocketIOGameJoinInput(
        gameId: gameId!,
        role: SocketIOGameJoinInputRole.spectator,
      );
      socket?.emit(
        SocketIOGameEvents.join.json!,
        ioGameJoinInput.toJson(),
      );

      // Init chat controller
      await getIt<SocketChatController>().init(socket: socket!);
    } catch (e, s) {
      logger.e(e, stackTrace: s);
    }
  }

  void clear() {
    try {
      gameId = null;
      socket?.dispose();
      socket = null;
      bottomSheetController?.close();
      bottomSheetController = null;
      round.value = null;
      gameData.value = null;
    } catch (_) {}
  }

  Future<void> leave() async {
    socket?.emit(SocketIOGameEvents.userLeave.json!);
    socket?.disconnect();
  }

  void closeChatSheet() {
    bottomSheetController?.close();
    bottomSheetController = null;
  }

  void toggleDesktopChat() {
    showDesktopChat.value = !showDesktopChat.value;
  }

  Future<void> _onGameData(dynamic data) async {
    // Set global game data
    gameData.value =
        SocketIOGameJoinEventPayload.fromJson(data as Map<String, dynamic>);

    // Set chat users
    final users = gameData.value!.players.map(UserX.fromPlayerData).toList();
    getIt<SocketChatController>().setUsers(users);
  }
}

const testRound = LobbyRound(
  name: 'name',
  themes: [
    LobbyTheme(
      name: 'Random',
      questions: [
        LobbyQuestion(price: 100),
        LobbyQuestion(price: 200),
        LobbyQuestion(price: 300),
      ],
    ),
    LobbyTheme(
      name: 'Anime',
      questions: [
        LobbyQuestion(price: 100),
        LobbyQuestion(price: 200),
        LobbyQuestion(price: 300),
        LobbyQuestion(price: 100),
        LobbyQuestion(price: 200),
        LobbyQuestion(price: 200),
        LobbyQuestion(price: 300),
      ],
    ),
    LobbyTheme(
      name: 'Games',
      questions: [
        LobbyQuestion(price: 100),
        LobbyQuestion(price: 200),
        LobbyQuestion(price: 300),
      ],
    ),
    LobbyTheme(
      name: 'Games',
      questions: [
        LobbyQuestion(price: 100),
        LobbyQuestion(price: 200),
        LobbyQuestion(price: 300),
      ],
    ),
  ],
);
