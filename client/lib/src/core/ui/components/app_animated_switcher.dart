import 'dart:ui';
import 'package:flutter/material.dart';

class AppAnimatedSwitcher extends StatelessWidget {
  const AppAnimatedSwitcher({
    required this.child,
    required this.visible,
    this.onlyFade = false,
    super.key,
  });

  final Widget child;
  final bool visible;
  final bool onlyFade;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Durations.medium1,
      transitionBuilder: (child, animation) {
        // 1) Fade first:
        final transition = FadeTransition(opacity: animation, child: child);

        if (onlyFade) {
          return AnimatedBuilder(
            animation: animation,
            builder: (context, _) {
              // as animation goes 0→1, blur goes from 2→0
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

        // 3) Finally size‐transition the blurred+faded child:
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
