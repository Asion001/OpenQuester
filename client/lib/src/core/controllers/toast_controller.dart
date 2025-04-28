import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@singleton
class ToastController {
  Future<void> show(
    dynamic message, {
    BuildContext? context,
    Duration showFor = const Duration(seconds: 5),
  }) async {
    final messageText = parseObject(message);
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

  String parseObject(dynamic object) {
    String? error;
    if (object is Map) {
      error = object['error']?.toString();
    } else if (object is DioException) {
      error = parseObject(object.response?.data ?? object.message);
    }
    return error ?? object.toString();
  }
}
