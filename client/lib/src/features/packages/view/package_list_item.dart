import 'dart:math';

import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class PackageListItemWidget extends StatelessWidget {
  const PackageListItemWidget({required this.item, super.key});
  final PackageListItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          item.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        )
            .withTooltip(msg: LocaleKeys.game_tile_tooltips_packages_title.tr())
            .shrink(),
        subtitle: Text(
          _packInfo(context),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ).paddingTop(4).shrink(),
        titleAlignment: ListTileTitleAlignment.bottom,
        contentPadding: const EdgeInsets.only(right: 16, left: 4),
        mouseCursor: MouseCursor.defer,
      ).paddingSymmetric(horizontal: 2),
    ).paddingSymmetric(horizontal: 6);
  }

  String _packInfo(BuildContext context) {
    final ageRestriction = item.ageRestriction.format(context);
    return [
      [
        ageRestriction?.$1,
        DateFormat.yMd().format(item.createdAt),
        if (item.tags?.isNotEmpty ?? false)
          item.tags!.sublist(0, min(5, item.tags!.length)).join(', '),
        // LocaleKeys.rounds.plural(item.rounds.length),
        LocaleKeys.created_by.tr(args: [item.author.username]),
      ].nonNulls.join(' • '),
    ].join('\n');
  }
}
