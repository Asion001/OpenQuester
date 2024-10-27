import 'package:flutter/material.dart';

import 'src/core/app_init.dart';
import 'src/core/application.dart';
import 'src/core/localization.dart';

void main() async {
  await AppInit.init();
  runApp(localizationWrapper(const App()));
}
