import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class GameLobbyTheme extends StatelessWidget {
  const GameLobbyTheme({
    required this.theme,
    super.key,
  });
  final LobbyTheme theme;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          theme.name,
          style: context.textTheme.headlineMedium,
        ),
        const Divider(),
        Wrap(
          spacing: 8,
          children: [
            for (final question in theme.questions)
              GameQuestion(question: question),
          ],
        ),
      ],
    ).paddingSymmetric(horizontal: 16);
  }
}
