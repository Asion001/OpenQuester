import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class GameLobbyThemes extends WatchingWidget {
  const GameLobbyThemes({super.key});

  @override
  Widget build(BuildContext context) {
    final gameData =
        watchValue<GameLobbyController, SocketIOGameJoinEventPayload?>(
      (p0) => p0.gameData,
    );

    final round = gameData?.gameState.currentRound;
    final themes = round
        ?.sortedThemes()
        .map((theme) => GameLobbyTheme(theme: theme).paddingBottom(16))
        .toList();

    if (themes == null) {
      if (gameData?.me.role == PlayerRole.showman) {
        return FilledButton(
          onPressed: getIt<GameLobbyController>().startGame,
          child: Text(LocaleKeys.start_game.tr()),
        ).center();
      }
      return const CircularProgressIndicator().center();
    }

    return ListView.builder(
      padding: 8.vertical + screenBottomInset(context).bottom,
      itemCount: themes.length,
      itemBuilder: (context, index) => themes[index],
    );
  }
}
