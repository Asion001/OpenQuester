import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class GamePreviewPlayButton extends StatefulWidget {
  const GamePreviewPlayButton({
    required this.icon,
    super.key,
  });
  final Widget icon;

  @override
  State<GamePreviewPlayButton> createState() => _GamePreviewPlayButtonState();
}

class _GamePreviewPlayButtonState extends State<GamePreviewPlayButton> {
  CrossFadeState crossFadeState = CrossFadeState.showFirst;

  @override
  void initState() {
    // Lazy start of animation
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => Future.microtask(
        () => setState(() => crossFadeState = CrossFadeState.showSecond),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      alignment: Alignment.centerRight,
      crossFadeState: crossFadeState,
      firstChild: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 66, minHeight: 32),
        child: widget.icon,
      ),
      secondChild: FilledButton(
        onPressed: getIt<GamePreviewController>().onPressPlay,
        child: widget.icon,
      ),
      duration: getIt<GamePreviewController>().animationDuration,
    );
  }
}
