import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class MaxSizeContainer extends StatelessWidget {
  const MaxSizeContainer({
    required this.child,
    super.key,
    this.maxWidth = UiModeUtils.large,
  });
  final Widget child;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: child,
        ).flexible(),
      ],
    );
  }
}
