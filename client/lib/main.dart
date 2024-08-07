import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'src/ui/applications/application.dart';

void main() async {
  setUrlStrategy(PathUrlStrategy());

  runApp(const App());
}
