import 'dart:math';

import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class GameListItemWidget extends StatelessWidget {
  const GameListItemWidget({required this.item, super.key});
  final GameListItem item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(16),
      child: Card(
        child: Row(
          children: [
            _GameListItemBadges(item),
            ListTile(
              title:
                  Tooltip(
                    message: LocaleKeys.game_tile_tooltips_game_title.tr(),
                    child: Text(
                      item.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ).shrink(),
              subtitle:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Tooltip(
                        message:
                            LocaleKeys.game_tile_tooltips_packages_title.tr(),
                        child: Text(
                          item.package.title,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(_packInfo(), overflow: TextOverflow.ellipsis),
                      Text(_gameInfo(), overflow: TextOverflow.ellipsis),
                    ],
                  ).paddingTop(4).shrink(),
              trailing: const Icon(Icons.play_arrow),
              titleAlignment: ListTileTitleAlignment.bottom,
              contentPadding: const EdgeInsets.only(right: 16, left: 4),
              mouseCursor: MouseCursor.defer,
            ).expand(),
          ],
        ).paddingSymmetric(horizontal: 2),
      ),
    ).paddingSymmetric(horizontal: 6);
  }

  String _packInfo() {
    final ageRestriction = item.package.ageRestriction.translate();
    return [
      [
        ageRestriction,
        DateFormat.yMd().format(item.package.createdAt),
        if (item.package.tags.isNotEmpty)
          item.package.tags
              .sublist(0, min(3, item.package.tags.length))
              .join(', '),
        LocaleKeys.created_by.tr(args: [item.package.author.username]),
      ].nonNulls.join(' | '),
    ].join('\n');
  }

  String _gameInfo() {
    final startedAt = item.startedAt;
    return [
      [
        LocaleKeys.game_status_started.tr(),
        if (startedAt != null)
          watchIt<TimeController>().current.difference(startedAt).f(),
        LocaleKeys.hosted_by.tr(args: [item.createdBy.username]),
      ].join(' • '),
    ].join('\n');
  }
}

class _GameListItemBadges extends StatelessWidget {
  const _GameListItemBadges(this.item);
  final GameListItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        spacing: 24,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _Badge(
            icon: Icons.person_outline,
            tooltip: LocaleKeys.game_tile_tooltips_players.tr(),
            label: [item.players, item.maxPlayers].join('/'),
          ),
          _Badge(
            icon: Icons.check,
            tooltip: LocaleKeys.game_tile_tooltips_rounds.tr(),
            label: [item.currentRound, item.package.rounds].join('/'),
          ),
        ],
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({
    required this.icon,
    required this.label,
    required this.tooltip,
  });
  final IconData icon;
  final String label;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip ?? '',
      child: Badge(
        backgroundColor: context.theme.colorScheme.onPrimary,
        textColor: context.theme.colorScheme.onSurface,
        label: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon, size: 24),
              Text(label, style: context.textTheme.labelSmall),
            ],
          ),
        ),
      ),
    );
  }
}
