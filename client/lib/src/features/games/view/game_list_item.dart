import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class GameListItemWidget extends StatelessWidget {
  const GameListItemWidget({super.key, required this.item});
  final GameListItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.title),
      subtitle: Text(
        _subtitle(),
        overflow: TextOverflow.ellipsis,
      ).paddingTop(4),
      trailing: Icon(Icons.play_arrow_outlined),
      titleAlignment: ListTileTitleAlignment.titleHeight,
      contentPadding: EdgeInsets.symmetric(horizontal: 8),
    );
  }

  String _subtitle() {
    return [
      item.package.title,
      [
        DateFormat.yMd().format(item.package.createdAt),
        LocaleKeys.rounds.plural(item.package.rounds),
        LocaleKeys.created_by.tr(args: [item.package.author.name]),
      ].join(' • ')
    ].join('\n');
  }
}
