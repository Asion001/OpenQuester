import 'package:flutter/material.dart';
import 'src/application/app_init.dart';
import 'src/application/application.dart';

void main() async {
  await AppInit.init();
  runApp(const App());
}
