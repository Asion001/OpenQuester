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
  String? _gameId;

  final gameData = ValueNotifier<SocketIOGameJoinEventPayload?>(null);
  final gameListData = ValueNotifier<GameListItem?>(null);

  final showChat = ValueNotifier<bool>(false);
  StreamSubscription<ChatOperation>? _chatMessagesSub;

  Future<void> join({required String gameId}) async {
    // Check if already joined
    if (_gameId == gameId) return;

    clear();

    try {
      _gameId = gameId;

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
        ..on(SocketIOEvents.error.json!, _onError)
        ..on(SocketIOGameReceiveEvents.gameData.json!, _onGameData)
        ..on(SocketIOGameReceiveEvents.start.json!, _onGameStart)
        ..on(SocketIOGameReceiveEvents.userLeave.json!, _onUserLeave)
        ..on(SocketIOGameReceiveEvents.join.json!, _onUserJoin)
        ..on(SocketIOGameReceiveEvents.questionData.json!, _onQuestionPick)
        ..on(SocketIOGameReceiveEvents.questionAnswer.json!, _onQuestionAnswer)
        ..on(SocketIOGameReceiveEvents.answerResult.json!, _onAnswerResult)
        ..on(SocketIOGameReceiveEvents.questionFinish.json!, _onQuestionFinish)
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
        gameId: _gameId!,
        role: iAmHost
            ? SocketIOGameJoinInputRole.showman
            : SocketIOGameJoinInputRole.player,
      );

      socket?.emit(
        SocketIOGameSendEvents.join.json!,
        ioGameJoinInput.toJson(),
      );
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

    final author = gameData.value?.players.firstWhereOrNull(
      (e) => e.meta.id.toString() == message?.authorId,
    );
    await getIt<ToastController>().show(
      [author?.meta.username, text?.trim()].nonNulls.join(': '),
    );
  }

  /// Clear all fields for new game to use
  void clear() {
    try {
      _gameId = null;
      socket?.dispose();
      socket = null;
      gameData.value = null;
      gameListData.value = null;
      _chatMessagesSub?.cancel();
      _chatMessagesSub = null;
      showChat.value = false;
      getIt<SocketChatController>().clear();
      getIt<GameQuestionController>().clear();
    } catch (_) {}
  }

  Future<void> leave() async {
    socket?.emit(SocketIOGameSendEvents.userLeave.json!);
  }

  void toggleDesktopChat() {
    showChat.value = !showChat.value;
  }

  Future<void> _onGameData(dynamic data) async {
    // Set global game data
    gameData.value =
        SocketIOGameJoinEventPayload.fromJson(data as Map<String, dynamic>);

    await _initChat();
  }

  Future<void> _initChat() async {
    // Get chat messages history
    final messages = gameData.value!.chatMessages
        .map((e) => e.toChatMessage())
        .toList()
        .reversed
        .toList();

    // Init chat controller
    await getIt<SocketChatController>()
        .init(socket: socket!, messages: messages);

    _updateChatUsers();

    // Listen new messages in chat
    _chatMessagesSub = getIt<SocketChatController>()
        .chatController
        ?.operationsStream
        .listen(_onChatMessage);
  }

  void _updateChatUsers() {
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
    socket?.emit(SocketIOGameSendEvents.start.json!);
  }

  void _onError(dynamic data) {
    String? errorText = data.toString();
    if (data is Map) {
      errorText = data['message']?.toString() ?? errorText;
    }

    getIt<ToastController>().show(errorText);
  }

  void _onUserLeave(dynamic data) {
    if (data is! Map) return;
    final userId = int.tryParse(data['user']?.toString() ?? '');
    final user = gameData.value?.players.firstWhereOrNull(
      (e) => e.meta.id == userId,
    );
    if (user == null) return;

    // If i am leaving - close game
    if (user.meta.id == gameData.value?.me.meta.id) {
      socket?.dispose();

      // Close only game page
      if (AppRouter.I.current.name == GameLobbyRoute.page.name) {
        AppRouter.I.maybePop();
      }
      clear();
      return;
    }

    // Update player list
    final players = List<PlayerData>.from(gameData.value?.players ?? []);
    final playerIndex = players.indexWhere((e) => e.meta.id == user.meta.id);
    players[playerIndex] =
        players[playerIndex].copyWith(status: PlayerDataStatus.disconnected);
    gameData.value = gameData.value?.copyWith(players: players);

    getIt<ToastController>().show(
      LocaleKeys.user_leave_the_game.tr(args: [user.meta.username]),
    );
  }

  void _onUserJoin(dynamic data) {
    if (data is! Map) return;

    final user = PlayerData.fromJson(data as Map<String, dynamic>);

    gameData.value = gameData.value?.copyWith(
      players: [
        ...?gameData.value?.players.whereNot((p) => p.meta.id == user.meta.id),
        user,
      ],
    );
    _updateChatUsers();

    getIt<ToastController>().show(
      LocaleKeys.user_joined_the_game.tr(args: [user.meta.username]),
    );
  }

  void onQuestionPick(int questionId) {
    socket?.emit(
      SocketIOGameSendEvents.questionPick.json!,
      SocketIOQuestionPickEventInput(questionId: questionId).toJson(),
    );
  }

  void _onQuestionPick(dynamic data) {
    if (data is! Map) return;

    final questionData =
        SocketIOQuestionDataEventPayload.fromJson(data as Map<String, dynamic>);
    gameData.value = gameData.value?.copyWith.gameState(
      questionState: GameStateQuestionState.showing,
      timer: questionData.timer,
    );

    // Pass the question to controller to handle the rest
    getIt<GameQuestionController>().question.value = questionData.data;
  }

  void _onQuestionAnswer(dynamic data) {
    if (data is! Map) return;

    final questionData = SocketIOQuestionAnswerEventPayload.fromJson(
      data as Map<String, dynamic>,
    );

    gameData.value = gameData.value?.copyWith
        .gameState(answeringPlayer: questionData.userId);
  }

  void _onAnswerResult(dynamic data) {
    if (data is! Map) return;

    final questionData = SocketIOAnswerResultEventPayload.fromJson(
      data as Map<String, dynamic>,
    );

    gameData.value = gameData.value?.copyWith.gameState(
      answeringPlayer: null,
      answeredPlayers: [
        ...?gameData.value?.gameState.answeredPlayers,
        questionData.answerResult,
      ],
    );

    // Question answered, hide question screen and show answer
    if (questionData.answerFiles != null || questionData.answerText != null) {
      getIt<GameQuestionController>().clear();
      // TODO: Show correct answer
    }
  }

  void _onQuestionFinish(dynamic data) {}
}
