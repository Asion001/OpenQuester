import 'dart:async';

import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

@singleton
class GamePreviewController {
  final animationDuration = Durations.short2;
  GameListItem? game;

  Future<void> initWithId(String gameId) async {
    final item = await getIt<Api>().api.games.getV1GamesGameId(gameId: gameId);
    await init(item);
  }

  Future<void> init(GameListItem item) async {
    game = item;
    // Warmup cache during animation
    unawaited(getIt<PackageController>().getPackage(item.package.id));
  }

  void clear() {
    game = null;
  }

  Future<void> onPressPlay() async {
    if (game == null) throw Exception('game == null');
    await getIt<AppRouter>().popAndPush(GameLobbyRoute(gameId: game!.id));
  }
}
