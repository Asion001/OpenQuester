import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class GamePreviewBottom extends StatelessWidget {
  const GamePreviewBottom({
    required this.packageId,
    super.key,
  });
  final int packageId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getIt<PackageController>().getPackage(packageId),
      builder: (context, snapshot) {
        final pack = snapshot.data;
        return AnimatedCrossFade(
          duration: getIt<GamePreviewController>().animationDuration,
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
                  subtitle:
                      Text(round.themes.map((e) => ' • ${e.name}').join('\n')),
                ),
            ],
          ),
        );
      },
    );
  }
}
