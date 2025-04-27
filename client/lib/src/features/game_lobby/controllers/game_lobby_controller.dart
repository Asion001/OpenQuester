import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:openquester/openquester.dart';
import 'package:socket_io_client/socket_io_client.dart';

@singleton
class GameLobbyController {
  Socket? socket;
  String? gameId;

  final gameData = ValueNotifier<SocketIOGameJoinEventPayload?>(null);
  final gameListData = ValueNotifier<GameListItem?>(null);
  final showDesktopChat = ValueNotifier<bool>(false);

  Future<void> join({required String gameId}) async {
    // Check if already joined
    if (this.gameId == gameId) return;

    clear();

    try {
      this.gameId = gameId;

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

      gameListData.value =
          await Api.I.api.games.getV1GamesGameId(gameId: gameId!);
      final iAmHost =
          gameListData.value!.createdBy.id == getIt<AuthController>().user?.id;

      final ioGameJoinInput = SocketIOGameJoinInput(
        gameId: gameId!,
        role: iAmHost
            ? SocketIOGameJoinInputRole.showman
            : SocketIOGameJoinInputRole.spectator,
      );

      socket?.emit(
        SocketIOGameEvents.join.json!,
        ioGameJoinInput.toJson(),
      );

      // Init chat controller
      await getIt<SocketChatController>().init(socket: socket!);
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

  /// Clear all fields for new game to use
  void clear() {
    try {
      gameId = null;
      socket?.dispose();
      socket = null;
      gameData.value = null;
      gameListData.value = null;
    } catch (_) {}
  }

  Future<void> leave() async {
    socket?.emit(SocketIOGameEvents.userLeave.json!);
    socket?.disconnect();
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

  //SocketIOGameStartEventPayload
  Future<void> _onGameStart(dynamic data) async {
    final startData =
        SocketIOGameStartEventPayload.fromJson(data as Map<String, dynamic>);
    gameData.value = gameData.value?.copyWith
        .gameState(currentRound: startData.currentRound);
  }

  void startRound() {
    socket?.emit(SocketIOGameEvents.start.json!);
  }

  void _onError(dynamic data) {
    getIt<ToastController>().show(data);
  }
}
