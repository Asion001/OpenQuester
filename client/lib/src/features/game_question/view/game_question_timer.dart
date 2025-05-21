import 'dart:math';

import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class GameQuestionTimer extends WatchingWidget {
  const GameQuestionTimer({super.key});

  @override
  Widget build(BuildContext context) {
    final gameData = watchValue((GameLobbyController e) => e.gameData);
    final timer = gameData?.gameState.timer;

    if (timer == null) return const SizedBox.shrink();

    final elapsedFromNow =
        max(DateTime.now().difference(timer.startedAt).inMilliseconds, 0);
    final timerTimeLeft =
        Duration(milliseconds: timer.durationMs - elapsedFromNow);
    final timerBeginPoint =
        (1 / (timer.durationMs / elapsedFromNow)).clamp(0, 1);

    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: GameLobbyStyles.maxTimerWidth,
      ),
      child: TweenAnimationBuilder(
        tween: Tween(begin: timerBeginPoint, end: 1),
        duration: timerTimeLeft,
        builder: (BuildContext context, num value, Widget? child) {
          return LinearProgressIndicator(
            value: value.toDouble(),
            borderRadius: 16.circular,
            minHeight: 4,
          );
        },
      ),
    ).paddingBottom(14).paddingSymmetric(horizontal: 16);
  }
}
