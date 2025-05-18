import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class GameQuestionScreen extends WatchingWidget {
  const GameQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fileData = watchValue((GameQuestionController e) => e.questionData);
    final file = fileData?.file;
    final text = fileData?.text;

    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: file != null ? 0 : 1,
          child: Text(
            text ?? '',
            style: file != null
                ? context.textTheme.bodyLarge
                : context.textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ).center(),
        ),
        if (file != null) GameQuestionFile(file: file).flexible(),
        const _QuestionBottom(),
      ],
    ).paddingBottom(16).paddingSymmetric(horizontal: 16);
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
    } else if (answeringPlayer != null) {
      child = const _AnsweringWidget();
    }

    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 150),
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
      onTap: getIt<GameLobbyController>().onAnswer,
      borderRadius: borderRadius,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: foregroundColor),
          borderRadius: borderRadius,
        ),
        child: Text(
          [
            LocaleKeys.question_press_to_answer.tr(),
            // TODO: Add hold to skip
            // LocaleKeys.question_hold_to_skip.tr(),
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
    final answeringPlayer = gameData?.players.getById(answeringPlayerId);

    return Container(
      decoration: BoxDecoration(
        borderRadius: 16.circular,
        color: context.theme.colorScheme.surfaceContainer,
      ),
      padding: 24.all,
      child: Row(
        spacing: 16,
        children: [
          Text(
            LocaleKeys.question_user_is_answering
                .tr(args: [answeringPlayer?.meta.username ?? '']),
            textAlign: TextAlign.center,
            style: context.textTheme.bodyLarge,
          ).expand(),
          if (gameData?.me.role == PlayerRole.showman)
            const _ShowmanControlls(),
        ],
      ),
    );
  }
}

class _ShowmanControlls extends StatelessWidget {
  const _ShowmanControlls();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FilledButton.icon(
          onPressed: () => getIt<GameLobbyController>()
              .answerResult(playerAnswerIsRight: false),
          icon: const Icon(Icons.close),
          label: Text(LocaleKeys.question_answer_is_wrong.tr()),
        ),
        FilledButton.icon(
          onPressed: () => getIt<GameLobbyController>()
              .answerResult(playerAnswerIsRight: true),
          icon: const Icon(Icons.check),
          label: Text(LocaleKeys.question_answer_is_correct.tr()),
        ),
      ],
    );
  }
}
