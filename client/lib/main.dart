import 'package:flutter/material.dart';
import 'package:requests_inspector/requests_inspector.dart';

import 'src/core/app_init.dart';
import 'src/core/application.dart';
import 'src/core/localization.dart';

void main() async {
  await AppInit.init();
  runApp(
    localizationWrapper(
      RequestsInspector(
        hideInspectorBanner: true,
        child: const App(),
      ),
    ),
  );
}
