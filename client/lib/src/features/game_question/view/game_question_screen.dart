import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:openquester/openquester.dart';

class GameQuestionScreen extends WatchingWidget {
  const GameQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fileData = watchValue((GameQuestionController e) => e.questionData);
    final file = fileData?.file;
    final text = fileData?.text;
    final questionMediaOnLeft = GameLobbyStyles.questionMediaOnLeft(context);

    final questionTextWidget = _questionTextAndButtons(
      file: file,
      text: text,
      context: context,
    );

    final column = Column(
      spacing: 16,
      children: [
        const GameQuestionTimer(),
        Flex(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          direction: questionMediaOnLeft ? Axis.horizontal : Axis.vertical,
          children: [
            if (!questionMediaOnLeft) questionTextWidget,
            if (file != null) GameQuestionMediaWidget(file: file).flexible(),
            if (questionMediaOnLeft) questionTextWidget.expand(),
            if (questionMediaOnLeft) const _QuestionBottom().withWidth(250),
          ],
        ).expand(),
        if (!questionMediaOnLeft) const _QuestionBottom(),
      ],
    );

    return SafeArea(
      // Mouse and keyboard shortcuts to press answer
      child: Shortcuts(
        shortcuts: shortcuts(),
        child: Actions(
          actions: actions(),
          child: Focus(
            autofocus: true,
            child: GestureDetector(
              onSecondaryTapDown: (_) =>
                  getIt<GameLobbyController>().onAnswer(),
              supportedDevices: const {PointerDeviceKind.mouse},
              child: column.paddingAll(16),
            ),
          ),
        ),
      ),
    );
  }

  Map<ShortcutActivator, Intent> shortcuts() {
    return {
      LogicalKeySet(LogicalKeyboardKey.space): const AnswerIntent(),
      LogicalKeySet(LogicalKeyboardKey.control): const AnswerIntent(),
    };
  }

  Map<Type, Action<Intent>> actions() {
    return {
      AnswerIntent: CallbackAction(
        onInvoke: (_) => getIt<GameLobbyController>().onAnswer(),
      ),
    };
  }

  Widget _questionTextAndButtons({
    required BuildContext context,
    required PackageQuestionFile? file,
    required String? text,
  }) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: file == null ? double.infinity : 150,
      ),
      child: SingleChildScrollView(
        child: Text(
          text ?? '',
          style: file != null
              ? context.textTheme.bodyLarge
              : context.textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _QuestionBottom extends WatchingWidget {
  const _QuestionBottom();

  @override
  Widget build(BuildContext context) {
    final gameData = watchValue((GameLobbyController e) => e.gameData);
    final me = gameData?.me;
    final imShowman = me?.role == PlayerRole.showman;
    final answeringPlayer = gameData?.gameState.answeringPlayer;
    final iAlreadyAnswered =
        gameData?.gameState.answeredPlayers?.any(
          (e) => e.player == me?.meta.id,
        ) ??
        false;
    final showingQuestion = gameData?.gameState.currentQuestion != null;

    Widget child = const SizedBox();

    if (showingQuestion) {
      if (!imShowman && answeringPlayer == null && !iAlreadyAnswered) {
        child = const _AnswerButtons();
      } else if (answeringPlayer != null) {
        child = const _AnsweringWidget();
      } else if (imShowman) {
        child = const _SkipQustionBtn().center();
      }
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
    final question = gameData?.gameState.currentQuestion;
    final answerText = question?.answerText;
    final answerHint = question?.answerHint;
    final answeringPlayerId = gameData?.gameState.answeringPlayer;
    final answeringPlayer = gameData?.players.getById(answeringPlayerId);

    final answer = [
      if (!answerText.isEmptyOrNull)
        LocaleKeys.question_correct_answer_is.tr(args: [answerText!]),
      if (!answerHint.isEmptyOrNull)
        LocaleKeys.question_hint.tr(args: [answerHint!]),
    ].join('\n');

    return Container(
      decoration: BoxDecoration(
        borderRadius: 16.circular,
        color: context.theme.colorScheme.surfaceContainer,
      ),
      padding: 24.all,
      child: OverflowBar(
        spacing: 16,
        overflowSpacing: 16,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Column(
              spacing: 16,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  LocaleKeys.question_user_is_answering.tr(
                    args: [answeringPlayer?.meta.username ?? ''],
                  ),
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyLarge,
                ),
                if (!answer.isEmptyOrNull)
                  Text(
                    answer,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
              ],
            ),
          ),
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
    final extraColors = Theme.of(context).extension<ExtraColors>();

    ButtonStyle buttonStyle({required bool correctAnswer}) => ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(
        correctAnswer ? extraColors?.success : context.theme.colorScheme.error,
      ),
    );

    List<Widget> multiplierBtns({required bool playerAnswerIsRight}) {
      return [0.5, 2.0].map((e) {
        return FilledButton(
          onPressed: () => getIt<GameLobbyController>().answerResult(
            playerAnswerIsRight: playerAnswerIsRight,
            multiplier: e,
          ),
          style: buttonStyle(correctAnswer: playerAnswerIsRight),
          child: Text('${e >= 1 ? e.toInt() : e}X'),
        );
      }).toList();
    }

    Widget buttons({required bool playerAnswerIsRight}) {
      return Wrap(
        spacing: 8,
        runSpacing: 8,
        alignment: WrapAlignment.center,
        children: [
          FilledButton.icon(
            onPressed: () => getIt<GameLobbyController>().answerResult(
              playerAnswerIsRight: playerAnswerIsRight,
            ),
            style: buttonStyle(correctAnswer: playerAnswerIsRight),
            icon: Icon(playerAnswerIsRight ? Icons.check : Icons.close),
            label: Text(
              playerAnswerIsRight
                  ? LocaleKeys.question_answer_is_correct.tr()
                  : LocaleKeys.question_answer_is_wrong.tr(),
            ),
          ),
          ...multiplierBtns(playerAnswerIsRight: playerAnswerIsRight),
        ],
      );
    }

    Widget zeroSkipButton() {
      return FilledButton.tonal(
        onPressed: () => getIt<GameLobbyController>().answerResult(
          playerAnswerIsRight: true,
          multiplier: 0,
        ),
        child: const Text('0X'),
      );
    }

    return OverflowBar(
      overflowAlignment: OverflowBarAlignment.center,
      spacing: 8,
      overflowSpacing: 8,
      children: [
        Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buttons(playerAnswerIsRight: true),
            buttons(playerAnswerIsRight: false),
          ],
        ),
        zeroSkipButton(),
      ],
    );
  }
}

class AnswerIntent extends Intent {
  const AnswerIntent();
}

class _SkipQustionBtn extends StatelessWidget {
  const _SkipQustionBtn();

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: getIt<GameLobbyController>().skipQuestion,
      child: Text(LocaleKeys.skip_question.tr()),
    );
  }
}
