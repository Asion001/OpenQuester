import 'dart:async';

import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

@singleton
class GamePreviewController {
  final animationDuration = Durations.short2;
  GameListItem? _game;

  Future<void> init(GameListItem item) async {
    _game = item;
    // Warmup cache during animation
    unawaited(getIt<PackageController>().getPackage(item.package.id));
  }

  void clear() {
    _game = null;
  }

  Future<void> onPressPlay() async {
    if (_game == null) throw Exception('_game == null');

    await getIt<GameLobbyController>().join(gameId: _game!.id);

    await getIt<AppRouter>().popAndPush(GameLobbyRoute(gameId: _game!.id));
  }
}
