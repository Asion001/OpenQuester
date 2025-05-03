import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class GameLobbyPlayers extends WatchingWidget {
  const GameLobbyPlayers({
    required this.axis,
    super.key,
  });
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    final gameData = watchValue((GameLobbyController e) => e.gameData);
    const inGame = PlayerDataStatus.inGame;
    const roleToShow = {PlayerRole.player, PlayerRole.showman};
    final players = gameData?.players
            .where((p) => p.status == inGame && roleToShow.contains(p.role))
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
        return GameLobbyPlayer(player: player);
      },
    );
  }
}

class GameLobbyPlayer extends StatelessWidget {
  const GameLobbyPlayer({
    required this.player,
    super.key,
  });

  final PlayerData player;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: context.theme.colorScheme.surfaceContainerHigh,
        ),
        borderRadius: 12.circular,
        color: context.theme.colorScheme.surface,
      ),
      padding: 4.all,
      constraints: BoxConstraints.loose(const Size(100, 80)),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Container(
              foregroundDecoration: BoxDecoration(
                color: Colors.black.withValues(alpha: .4),
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
                    style: context.textTheme.titleSmall
                        ?.copyWith(color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    NumberFormat.compact().format(player.score),
                    style: context.textTheme.labelSmall
                        ?.copyWith(color: Colors.white),
                  ).withTooltip(msg: '${player.score}'),
                ],
              ),
            ],
          ),
          if (player.role == PlayerRole.showman)
            Positioned(
              top: 4,
              right: 4,
              child: Assets.icons.crown
                  .svg(
                    width: 16,
                    height: 16,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  )
                  .withTooltip(msg: LocaleKeys.showman.tr()),
            ),
        ],
      ).center(),
    );
  }
}
