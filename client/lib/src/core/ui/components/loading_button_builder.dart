import 'dart:async';

import 'package:flutter/material.dart';

class LoadingButtonBuilder extends StatelessWidget {
  const LoadingButtonBuilder({
    required this.onPressed,
    required this.child,
    required this.builder,
    super.key,
  });
  final Future<void> Function() onPressed;
  final Widget child;
  final Widget Function(
    BuildContext context,
    Widget child,
    Future<void> Function() onPressed,
  ) builder;

  @override
  Widget build(BuildContext context) {
    var loading = false;
    const loader = CircularProgressIndicator.adaptive();
    Future<void> onPressed(
      void Function(void Function()) setState,
      Future<void> Function() onPressed,
    ) async {
      setState(() => loading = true);
      try {
        await onPressed();
      } finally {
        if (context.mounted) setState(() => loading = false);
      }
    }

    return StatefulBuilder(
      builder: (context, setState) {
        return builder(
          context,
          loading ? loader : child,
          () async => onPressed(setState, this.onPressed),
        );
      },
    );
  }
}
