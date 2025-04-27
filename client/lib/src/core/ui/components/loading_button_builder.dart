import 'dart:async';

import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class LoadingButtonBuilder extends StatefulWidget {
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
  State<LoadingButtonBuilder> createState() => _LoadingButtonBuilderState();
}

class _LoadingButtonBuilderState extends State<LoadingButtonBuilder> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    const loader = CircularProgressIndicator.adaptive();

    Future<void> onPressed(
      void Function(void Function()) setState,
      Future<void> Function() onPressed,
    ) async {
      setState(() => loading = true);
      try {
        await onPressed();
      } catch (e) {
        if (context.mounted) {
          await getIt<ToastController>().show(e, context: context);
        }
      } finally {
        if (context.mounted) setState(() => loading = false);
      }
    }

    return widget.builder(
      context,
      loading ? loader : widget.child,
      () async => onPressed(setState, widget.onPressed),
    );
  }
}
