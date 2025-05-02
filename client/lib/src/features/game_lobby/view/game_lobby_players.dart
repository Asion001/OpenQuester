import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';
import 'package:openquester/src/core/ui/components/image_widget.dart';

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
            .toList() ??
        [];

    return ListView.separated(
      itemCount: players.length,
      scrollDirection: axis,
      separatorBuilder: (context, index) => const SizedBox.square(dimension: 8),
      padding: 16.horizontal,
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
        borderRadius: 8.circular,
        color: context.theme.colorScheme.surface,
      ),
      padding: 4.all,
      constraints: BoxConstraints.loose(const Size(100, 80)),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageWidget(url: player.meta.avatar, avatarRadius: 16).flexible(),
              Text(
                player.meta.username,
                style: context.textTheme.titleSmall,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                NumberFormat.compact().format(player.score),
                style: context.textTheme.labelSmall,
              ).withTooltip(msg: '${player.score}'),
            ],
          ),
          if (player.role == PlayerRole.showman)
            Icon(
              Icons.record_voice_over_outlined,
              size: 16,
              color: context.theme.colorScheme.secondary,
            ).withTooltip(msg: LocaleKeys.showman.tr()),
        ],
      ).center(),
    );
  }
}
