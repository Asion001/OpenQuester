import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@singleton
class ToastController {
  Future<void> show(
    Object message, {
    BuildContext? context,
    Duration showFor = const Duration(seconds: 5),
  }) async {
    final messageText = message.toString();
    final snackBar = SnackBar(
      content: Text(messageText),
      behavior: SnackBarBehavior.floating,
      duration: showFor,
    );

    final controller = ScaffoldMessenger.maybeOf(
      context ?? getIt<AppRouter>().navigatorKey.currentContext!,
    )?.showSnackBar(snackBar);

    // Wait to show
    await controller?.closed;
  }
}
