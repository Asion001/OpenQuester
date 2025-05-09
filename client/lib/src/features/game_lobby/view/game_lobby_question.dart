import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class GameQuestion extends StatelessWidget {
  const GameQuestion({
    required this.question,
    super.key,
  });
  final SocketIOGameStateQuestionData question;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: 12.circular),
        ),
        backgroundColor: WidgetStatePropertyAll(
          context.theme.colorScheme.surfaceContainerHighest,
        ),
        foregroundColor:
            WidgetStatePropertyAll(context.theme.colorScheme.onSurface),
        minimumSize:
            WidgetStatePropertyAll(GameLobbyStyles.questionSize(context)),
        textStyle: WidgetStatePropertyAll(context.textTheme.titleLarge),
        padding: WidgetStatePropertyAll(0.all),
      ),
      child: Text('${question.price}'),
    );
  }
}
