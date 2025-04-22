import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@singleton
class ToastController {
  Future<void> show(Object message, {BuildContext? context}) async {
    final messageText = message.toString();
    final snackBar = SnackBar(
      content: Text(messageText),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.maybeOf(
      context ?? getIt<AppRouter>().navigatorKey.currentContext!,
    )?.showSnackBar(snackBar);
  }
}
