import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show PersistentBottomSheetController;
import 'package:openquester/openquester.dart';
import 'package:socket_io_client/socket_io_client.dart';

@singleton
class GameLobbyController {
  Socket? socket;
  String? gameId;

  final round = ValueNotifier<LobbyRound?>(null);

  PersistentBottomSheetController? bottomSheetController;
  final showDesktopChat = ValueNotifier<bool>(true);

  Future<void> join({required String gameId}) async {
    if (this.gameId == gameId) return; // Check if already joined
    clear();
    try {
      this.gameId = gameId;
      socket = await getIt<SocketController>().createConnection(path: '/games');
      await getIt<SocketChatController>().init(socket: socket!);
      socket!
        ..onConnect((_) => _onConnect())
        ..onDisconnect((_) => clear())
        ..connect();

      round.value = testRound;
    } catch (e, s) {
      logger.e(e, stackTrace: s);
      clear();
      rethrow;
    }
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
      socket = null;
      bottomSheetController?.close();
      bottomSheetController = null;
      round.value = null;
    } catch (_) {}
  }

  Future<void> leave() async {
    socket?.emit('leave');
    socket?.disconnect();
  }

  void closeChatSheet() {
    bottomSheetController?.close();
    bottomSheetController = null;
  }

  void toggleDesktopChat() {
    showDesktopChat.value = !showDesktopChat.value;
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
