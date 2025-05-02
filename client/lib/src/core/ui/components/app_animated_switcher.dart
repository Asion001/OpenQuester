import 'dart:ui';
import 'package:flutter/material.dart';

class AppAnimatedSwitcher extends StatelessWidget {
  const AppAnimatedSwitcher({
    required this.child,
    required this.visible,
    this.blurFadeTransition = false,
    super.key,
  });

  final Widget child;
  final bool visible;

  /// Disables size transition
  final bool blurFadeTransition;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Durations.medium1,
      transitionBuilder: (child, animation) {
        final transition = FadeTransition(opacity: animation, child: child);

        if (blurFadeTransition) {
          return AnimatedBuilder(
            animation: animation,
            builder: (context, _) {
              final sigma = lerpDouble(0, 2, animation.value)!;
              return ClipRect(
                // ClipRect is required to prevent blur bleeding
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
                  child: transition,
                ),
              );
            },
          );
        }

        return SizeTransition(
          sizeFactor: animation,
          axis: Axis.horizontal,
          child: transition,
        );
      },
      // switch between your real child and an empty placeholder
      child: visible
          ? KeyedSubtree(key: const ValueKey('content'), child: child)
          : const SizedBox.shrink(key: ValueKey('empty')),
    );
  }
}
