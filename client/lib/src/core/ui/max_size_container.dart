import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class MaxSizeContainer extends StatelessWidget {
  const MaxSizeContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: UiModeUtils.maximumWidth),
          child: child,
        ).flexible(),
      ],
    );
  }
}
