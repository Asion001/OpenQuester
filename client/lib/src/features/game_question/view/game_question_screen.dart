import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class GameQuestionScreen extends WatchingWidget {
  const GameQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final question = watchValue((GameQuestionController e) => e.question);
    final file = watchValue((GameQuestionController e) => e.questionFile);

    return Column(
      children: [
        Text(question?.text ?? '-'),
        if (file != null) GameQuestionFile(file: file).flexible(),
        const _QuestionBottom(),
      ],
    );
  }
}

class _QuestionBottom extends WatchingWidget {
  const _QuestionBottom();

  @override
  Widget build(BuildContext context) {
    final answeringPlayer = watchValue((GameLobbyController e) => e.gameData)
        ?.gameState
        .answeringPlayer;

    Widget child = const SizedBox();

    if (answeringPlayer == null) {
      child = const _AnswerButtons();
    } else {
      child = const _AnsweringWidget();
    }

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 150,
        minWidth: double.infinity,
      ),
      child: child,
    );
  }
}

class _AnswerButtons extends StatelessWidget {
  const _AnswerButtons();

  @override
  Widget build(BuildContext context) {
    final borderRadius = 8.circular;
    final foregroundColor = context.theme.colorScheme.onSurfaceVariant;

    return InkWell(
      onTap: getIt<GameQuestionController>().onAnswer,
      borderRadius: borderRadius,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: foregroundColor),
          borderRadius: borderRadius,
        ),
        child: Text(
          [
            LocaleKeys.question_pressToAnswer.tr(),
            LocaleKeys.question_holdToSkip.tr(),
          ].join('\n'),
          textAlign: TextAlign.center,
          style: context.textTheme.bodyLarge?.copyWith(color: foregroundColor),
        ).center(),
      ),
    ).paddingAll(24);
  }
}

class _AnsweringWidget extends StatelessWidget {
  const _AnsweringWidget();

  @override
  Widget build(BuildContext context) {
    final answeringPlayerId = watchValue((GameLobbyController e) => e.gameData)
        ?.gameState
        .answeringPlayer;
    final answeringPlayer = watchValue((GameLobbyController e) => e.gameData)
        ?.players
        .firstWhereOrNull((e) => e.meta.id == answeringPlayerId);

    return Container(
      decoration: BoxDecoration(
        borderRadius: 16.circular,
        color: context.theme.colorScheme.surfaceContainer,
      ),
      padding: 24.all,
      child: Row(
        spacing: 16,
        children: [
          if (answeringPlayer != null) GameLobbyPlayer(player: answeringPlayer),
          const Text('...').expand(),
        ],
      ),
    );
  }
}
