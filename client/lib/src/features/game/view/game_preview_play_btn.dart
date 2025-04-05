import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class GamePreviewPlayButton extends StatelessWidget {
  const GamePreviewPlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInAnimationWidget(
      child: FilledButton(
        onPressed: getIt<GamePreviewController>().onPressPlay,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
