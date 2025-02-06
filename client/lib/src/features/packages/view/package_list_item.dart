import 'dart:math';

import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class PackageListItemWidget extends WatchingWidget {
  const PackageListItemWidget({super.key, required this.item});
  final PackageListItem item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(16),
      child: Card(
        child: ListTile(
          title: Tooltip(
            message: LocaleKeys.game_tile_tooltips_game_title.tr(),
            child: Text(
              item.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ).shrink(),
          subtitle: Tooltip(
            message: LocaleKeys.game_tile_tooltips_packages_title.tr(),
            child: Text(
              _packInfo(),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ).paddingTop(4).shrink(),
          titleAlignment: ListTileTitleAlignment.bottom,
          contentPadding: EdgeInsets.only(right: 16, left: 4),
          mouseCursor: MouseCursor.defer,
        ).paddingSymmetric(horizontal: 2),
      ),
    ).paddingSymmetric(horizontal: 6);
  }

  String _packInfo() {
    var ageRestriction = item.ageRestriction.translate();
    return [
      [
        ageRestriction,
        DateFormat.yMd().format(item.createdAt),
        if (item.tags.isNotEmpty)
          item.tags.sublist(0, min(5, item.tags.length)).join(', '),
        LocaleKeys.rounds.plural(item.rounds),
        LocaleKeys.created_by.tr(args: [item.author.username]),
      ].nonNulls.join(' • ')
    ].join('\n');
  }
}
