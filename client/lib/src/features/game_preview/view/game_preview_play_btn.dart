import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class GamePreviewPlayButton extends StatelessWidget {
  const GamePreviewPlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInAnimationWidget(
      child: LoadingButtonBuilder(
        onPressed: () => getIt<GamePreviewController>().onPressPlay(context),
        child: const Icon(Icons.play_arrow),
        builder: (context, child, onPressed) => FilledButton(
          onPressed: onPressed,
          child: child,
        ).withTooltip(msg: LocaleKeys.join_game.tr()),
      ),
    );
  }
}
