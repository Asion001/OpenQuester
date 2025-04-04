import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

@RoutePage(
  deferredLoading: false, // Removes loader on first game opening
)
class GamePreviewScreen extends StatelessWidget {
  const GamePreviewScreen({
    required this.item,
    super.key,
  });
  final GameListItem item;

  @override
  Widget build(BuildContext context) {
    final future = getIt<PackageController>().getPackage(item.package.id);
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
              bottom: _GamePreviewBottom(future: future),
            ).flexible(),
          ],
        ),
      ),
    );
  }
}

class _GamePreviewBottom extends StatelessWidget {
  const _GamePreviewBottom({
    required this.future,
  });
  final Future<PackageResponse> future;

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
