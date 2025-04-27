import 'dart:math';

import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class GameListItemWidget extends StatelessWidget {
  const GameListItemWidget({
    required this.item,
    required this.onTap,
    super.key,
    this.expanded = false,
    this.bottom,
    this.trailing,
  });
  final GameListItem item;
  final VoidCallback? onTap;
  final bool expanded;
  final Widget? bottom;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final children = [
      _GameListItemBadges(item),
      ListTile(
        title: Text(
          item.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        )
            .withTooltip(msg: LocaleKeys.game_tile_tooltips_game_title.tr())
            .shrink(),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.package.title,
              overflow: TextOverflow.ellipsis,
            ).withTooltip(msg: LocaleKeys.game_tile_tooltips_game_title.tr()),
            Text(_packInfo(), overflow: TextOverflow.ellipsis),
            Text(_gameInfo(), overflow: TextOverflow.ellipsis),
          ],
        ).paddingTop(4).shrink(),
        titleAlignment: ListTileTitleAlignment.bottom,
        contentPadding: const EdgeInsets.only(right: 16, left: 4),
        mouseCursor: MouseCursor.defer,
      ).expand(),
      if (trailing != null)
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [trailing!],
        ).paddingRight(16),
    ];

    return Hero(
      tag: item,
      child: Material(
        color: context.theme.colorScheme.surface,
        borderRadius: 16.circular,
        child: InkWell(
          onTap: onTap,
          borderRadius: 16.circular,
          child: Card(
            color: context.theme.colorScheme.secondaryContainer
                .withValues(alpha: .33),
            child: Column(
              mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
              children: [
                Row(
                  spacing: 8,
                  children: children,
                ).paddingSymmetric(horizontal: 2).withHeight(110),
                if (bottom != null) bottom!.flexible(),
              ],
            ),
          ),
        ),
      ).paddingSymmetric(horizontal: 6),
    );
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
    final dividerColor =
        context.theme.colorScheme.outline.withValues(alpha: .15);
    final divider = Divider(
      height: 1,
      color: dividerColor,
    );
    return Container(
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: dividerColor)),
      ),
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _Badge(
            icon: Icons.person_outline,
            tooltip: LocaleKeys.game_tile_tooltips_players.tr(),
            label: [item.players, item.maxPlayers].join('/'),
          ),
          divider,
          _Badge(
            icon: Icons.check,
            tooltip: LocaleKeys.game_tile_tooltips_rounds.tr(),
            label: [item.currentRound, item.package.roundsCount].join('/'),
          ),
        ],
      ).paddingSymmetric(vertical: 4).withWidth(80),
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
    return Row(
      spacing: 8,
      children: [
        Icon(icon, size: 24),
        Text(label, style: context.textTheme.labelSmall),
      ],
    )
        .paddingSymmetric(horizontal: 4, vertical: 2)
        .withTooltip(msg: LocaleKeys.game_tile_tooltips_game_title.tr());
  }
}
