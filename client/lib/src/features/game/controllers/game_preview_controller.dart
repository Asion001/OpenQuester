import 'dart:async';

import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

@singleton
class GamePreviewController {
  final animationDuration = Durations.short2;

  Future<void> init(GameListItem item) async {
    // Warmup cache during animation
    unawaited(getIt<PackageController>().getPackage(item.package.id));
  }

  void clear() {}

  Future<void> onPressPlay() async {}
}
