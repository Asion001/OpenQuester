import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class MaxSizeContainer extends StatelessWidget {
  const MaxSizeContainer({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: UiModeUtils.maximumWidth),
          child: child,
        ).flexible(),
      ],
    );
  }
}
