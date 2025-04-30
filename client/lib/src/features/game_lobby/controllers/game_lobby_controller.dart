import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart'
    show ChatOperation, ChatOperationType, SystemMessage, TextMessage;
import 'package:openquester/openquester.dart';
import 'package:socket_io_client/socket_io_client.dart';

@singleton
class GameLobbyController {
  Socket? socket;
  String? gameId;

  final gameData = ValueNotifier<SocketIOGameJoinEventPayload?>(null);
  final gameListData = ValueNotifier<GameListItem?>(null);

  final showChat = ValueNotifier<bool>(false);
  StreamSubscription<ChatOperation>? _chatMessagesSub;

  Future<void> join({required String gameId}) async {
    // Check if already joined
    if (this.gameId == gameId) return;

    clear();

    try {
      this.gameId = gameId;

      // Get list game data
      unawaited(
        Api.I.api.games
            .getV1GamesGameId(gameId: gameId)
            .then((value) => gameListData.value = value),
      );

      socket = await getIt<SocketController>().createConnection(path: '/games');
      socket!
        ..onConnect((_) => _onConnect())
        ..onDisconnect((_) => clear())
        ..on(SocketIOGameEvents.gameData.json!, _onGameData)
        ..on(SocketIOGameEvents.start.json!, _onGameStart)
        ..on(SocketIOEvents.error.json!, _onError)
        ..connect();
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

      final iAmHost =
          gameListData.value!.createdBy.id == ProfileController.getUser()?.id;

      final ioGameJoinInput = SocketIOGameJoinInput(
        gameId: gameId!,
        role: iAmHost
            ? SocketIOGameJoinInputRole.showman
            : SocketIOGameJoinInputRole.player,
      );

      socket?.emit(
        SocketIOGameEvents.join.json!,
        ioGameJoinInput.toJson(),
      );

      // Init chat controller
      await getIt<SocketChatController>().init(socket: socket!);
      _chatMessagesSub = getIt<SocketChatController>()
          .chatController
          .operationsStream
          .listen(_onChatMessage);
    } catch (e, s) {
      logger.e(e, stackTrace: s);
      clear();

      // Show error toast
      await getIt<ToastController>().show(
        e is DioException && e.response?.statusCode == 401
            ? LocaleKeys.user_unauthorized.tr()
            : e,
      );

      // Close game
      await AppRouter.I.replace(const HomeTabsRoute());
    }
  }

  Future<void> _onChatMessage(ChatOperation chatOperation) async {
    // Dont show toast if chat is open
    if (showChat.value) return;

    if (chatOperation.type != ChatOperationType.insert) return;
    final message = chatOperation.message;
    final text = switch (message) {
      TextMessage() => message.text,
      SystemMessage() => message.text,
      _ => null
    };
    if (text.isEmptyOrNull) return;
    await getIt<ToastController>().show(text);
  }

  /// Clear all fields for new game to use
  void clear() {
    try {
      gameId = null;
      socket?.dispose();
      socket = null;
      gameData.value = null;
      gameListData.value = null;
      _chatMessagesSub?.cancel();
      _chatMessagesSub = null;
      getIt<SocketChatController>().clear();
    } catch (_) {}
  }

  Future<void> leave() async {
    await socket?.emitWithAckAsync(SocketIOGameEvents.userLeave.json!, null);
    socket?.disconnect();
  }

  void toggleDesktopChat() {
    showChat.value = !showChat.value;
  }

  Future<void> _onGameData(dynamic data) async {
    // Set global game data
    gameData.value =
        SocketIOGameJoinEventPayload.fromJson(data as Map<String, dynamic>);

    // Set chat users
    final users = gameData.value!.players.map(UserX.fromPlayerData).toList();
    getIt<SocketChatController>().setUsers(users);
  }

  Future<void> _onGameStart(dynamic data) async {
    final startData =
        SocketIOGameStartEventPayload.fromJson(data as Map<String, dynamic>);
    gameData.value = gameData.value?.copyWith
        .gameState(currentRound: startData.currentRound);
  }

  void startGame() {
    socket?.emit(SocketIOGameEvents.start.json!);
  }

  void _onError(dynamic data) {
    String? errorText = data.toString();
    if (data is Map) {
      errorText = data['message']?.toString() ?? errorText;
    }

    getIt<ToastController>().show(data);
  }
}
