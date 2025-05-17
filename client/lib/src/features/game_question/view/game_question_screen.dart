import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class GameQuestionScreen extends WatchingWidget {
  const GameQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final question = watchValue((GameQuestionController e) => e.question);
    final file = watchValue((GameQuestionController e) => e.questionFile);

    return Column(
      spacing: 16,
      children: [
        Expanded(
          flex: file != null ? 0 : 1,
          child: Text(
            question?.text ?? '-',
            style: file != null
                ? context.textTheme.bodyLarge
                : context.textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ).center(),
        ),
        if (file != null) GameQuestionFile(file: file).flexible(),
        const _QuestionBottom(),
      ],
    ).paddingBottom(16);
  }
}

class _QuestionBottom extends WatchingWidget {
  const _QuestionBottom();

  @override
  Widget build(BuildContext context) {
    final gameData = watchValue((GameLobbyController e) => e.gameData);
    final imShowman = gameData?.me.role == PlayerRole.showman;
    final answeringPlayer = gameData?.gameState.answeringPlayer;

    Widget child = const SizedBox();

    if (!imShowman && answeringPlayer == null) {
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

class _AnsweringWidget extends WatchingWidget {
  const _AnsweringWidget();

  @override
  Widget build(BuildContext context) {
    final gameData = watchValue((GameLobbyController e) => e.gameData);
    final answeringPlayerId = gameData?.gameState.answeringPlayer;
    final answeringPlayer = gameData?.players
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
