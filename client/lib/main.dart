import 'package:flutter/material.dart';
import 'package:openquester/src/core/app_init.dart';
import 'package:openquester/src/core/application.dart';
import 'package:openquester/src/core/localization.dart';

void main() async {
  await AppInit.init();
  runApp(localizationWrapper(const App()));
}
