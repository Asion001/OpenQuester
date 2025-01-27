import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class GameListItemWidget extends StatelessWidget {
  const GameListItemWidget({super.key, required this.item});
  final GameListItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        onTap: () {},
        title: Text(item.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              item.package.title,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              _subtitle(),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ).paddingTop(4),
        trailing: Icon(Icons.play_arrow_outlined),
        titleAlignment: ListTileTitleAlignment.titleHeight,
      ),
    );
  }

  String _subtitle() {
    return [
      [
        DateFormat.yMd().format(item.package.createdAt),
        LocaleKeys.rounds.plural(item.package.rounds),
        LocaleKeys.created_by.tr(args: [item.package.author.name]),
      ].join(' • ')
    ].join('\n');
  }
}
