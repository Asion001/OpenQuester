import 'package:flutter/material.dart';
import 'package:openquester/src/core/app_init.dart';
import 'package:openquester/src/core/application.dart';
import 'package:openquester/src/core/localization.dart';
import 'package:requests_inspector/requests_inspector.dart';

void main() async {
  await AppInit.init();
  runApp(
    localizationWrapper(
      const RequestsInspector(hideInspectorBanner: true, child: App()),
    ),
  );
}
