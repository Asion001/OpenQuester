import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';
import 'package:openquester/src/features/packages/controllers/package_controller.dart';

@RoutePage()
class GamePreviewScreen extends StatelessWidget {
  const GamePreviewScreen({
    required this.item,
    super.key,
  });
  final GameListItem item;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: 8.all,
      child: MaxSizeContainer(
        maxWidth: UiModeUtils.maximumDialogWidth,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [CloseButton()],
            ),
            GameListItemWidget(
              item: item,
              onTap: null,
              bottom: _GamePreviewBottom(item: item),
            ).flexible(),
          ],
        ),
      ),
    );
  }
}

class _GamePreviewBottom extends StatefulWidget {
  const _GamePreviewBottom({
    required this.item,
  });
  final GameListItem item;

  @override
  State<_GamePreviewBottom> createState() => _GamePreviewBottomState();
}

class _GamePreviewBottomState extends State<_GamePreviewBottom> {
  late final future =
      getIt<PackageController>().getPackage(widget.item.package.id);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        final pack = snapshot.data;

        return AnimatedCrossFade(
          duration: Durations.medium2,
          crossFadeState: pack == null
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          firstChild: const Row(),
          secondChild: ListView(
            shrinkWrap: true,
            children: [
              for (final round in pack?.rounds ?? <PackageRound>[])
                ListTile(
                  title: Text(round.name),
                  subtitle: Text(round.themes.map((e) => e.name).join('\n')),
                ),
            ],
          ),
        );
      },
    );
  }
}
