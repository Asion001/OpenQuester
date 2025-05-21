import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class GameLobbyPlayers extends WatchingWidget {
  const GameLobbyPlayers({required this.axis, super.key});
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    final gameData = watchValue((GameLobbyController e) => e.gameData);
    final answeredPlayers = gameData?.gameState.answeredPlayers;
    final answeringPlayer = gameData?.gameState.answeringPlayer;
    const roleToShow = {PlayerRole.player, PlayerRole.showman};
    const inGame = PlayerDataStatus.inGame;
    final players =
        gameData?.players
            .where((p) => roleToShow.contains(p.role) && p.status == inGame)
            .sorted((a, b) => a.role == PlayerRole.showman ? 0 : 1)
            .toList() ??
        [];

    return ListView.separated(
      itemCount: players.length,
      scrollDirection: axis,
      padding: axis == Axis.horizontal ? 16.horizontal : null,
      separatorBuilder: (context, index) => const SizedBox.square(dimension: 8),
      itemBuilder: (context, index) {
        final player = players[index];
        final answeredPlayer = answeredPlayers?.firstWhereOrNull(
          (e) => e.player == player.meta.id,
        );
        final result = answeredPlayer?.result;
        final showUserAnsweredCorrect = _getPlayerAnswerState(result);

        return GameLobbyPlayer(
          player: player,
          answering: answeringPlayer == player.meta.id,
          playerAnswerState: showUserAnsweredCorrect,
        );
      },
    );
  }

  PlayerAnswerState _getPlayerAnswerState(int? result) {
    if (result == null) return PlayerAnswerState.none;
    if (result > 0) return PlayerAnswerState.correct;
    if (result == 0) return PlayerAnswerState.skip;
    return PlayerAnswerState.wrong;
  }
}

class GameLobbyPlayer extends WatchingWidget {
  const GameLobbyPlayer({
    required this.player,
    required this.playerAnswerState,
    this.answering = false,
    super.key,
  });

  final PlayerData player;
  final bool answering;
  final PlayerAnswerState playerAnswerState;

  @override
  Widget build(BuildContext context) {
    final extraColors = Theme.of(context).extension<ExtraColors>()!;
    final foregroundColor = Colors.black.withValues(alpha: .4);
    final borderColor = playerAnswerState == PlayerAnswerState.wrong
        ? Colors.red
        : playerAnswerState == PlayerAnswerState.correct
        ? extraColors.success
        : null;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor ?? context.theme.colorScheme.surfaceContainerHigh,
        ),
        borderRadius: 12.circular,
        color: context.theme.colorScheme.surface,
      ),
      padding: 4.all,
      constraints: BoxConstraints.loose(
        Size(
          GameLobbyStyles.playersMobile.width,
          GameLobbyStyles.players.height,
        ),
      ),
      child: IconTheme(
        data: const IconThemeData(size: 16, color: Colors.white),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Container(
                foregroundDecoration: BoxDecoration(
                  color: foregroundColor,
                  borderRadius: 8.circular,
                ),
                decoration: BoxDecoration(borderRadius: 8.circular),
                clipBehavior: Clip.antiAlias,
                child: ImageWidget(url: player.meta.avatar),
              ),
            ),
            Stack(
              alignment: Alignment.topRight,
              fit: StackFit.expand,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      player.meta.username,
                      style: GameLobbyStyles.playerTextStyle(context),
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (player.role != PlayerRole.showman)
                      _PlayerScoreText(score: player.score),
                  ],
                ),
              ],
            ),
            if (player.role == PlayerRole.showman)
              Align(
                alignment: Alignment.topRight,
                child: Assets.icons.crown
                    .svg(
                      width: 16,
                      height: 16,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    )
                    .withTooltip(msg: LocaleKeys.showman.tr())
                    .paddingAll(2),
              ),
            if (player.status == PlayerDataStatus.disconnected)
              Align(
                alignment: Alignment.topLeft,
                child: const Icon(Icons.signal_wifi_off).paddingAll(2),
              ),
            if (answering)
              Align(
                alignment: Alignment.bottomRight,
                child: const Icon(Icons.more_horiz).paddingAll(2),
              ),
            if (!{
              PlayerAnswerState.skip,
              PlayerAnswerState.none,
            }.contains(playerAnswerState))
              Align(
                alignment: Alignment.bottomLeft,
                child: Icon(
                  playerAnswerState == PlayerAnswerState.correct
                      ? Icons.check
                      : Icons.close,
                ).paddingAll(2),
              ),
          ],
        ).center(),
      ),
    );
  }
}

class _PlayerScoreText extends StatelessWidget {
  const _PlayerScoreText({required this.score});

  final int score;

  @override
  Widget build(BuildContext context) {
    final compactFormat = score >= 1_000_000;
    final decimalFormater = NumberFormat.decimalPattern();
    final formater = compactFormat ? NumberFormat.compact() : decimalFormater;

    final text = Text(
      formater.format(score),
      style: GameLobbyStyles.playerTextStyle(context),
    );

    if (!compactFormat) return text;

    return Tooltip(message: decimalFormater.format(score), child: text);
  }
}
