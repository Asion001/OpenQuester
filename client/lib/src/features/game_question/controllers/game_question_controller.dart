import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@singleton
class GameQuestionController {
  late final question = ValueNotifier<PackageQuestionData?>(null)
    ..addListener(_onQuestionChange);

  final questionFile = ValueNotifier<PackageQuestionFile?>(null);

  void clear() {
    question.value = null;
    questionFile.value = null;
  }

  void _onQuestionChange() {
    questionFile.value = question.value?.questionFiles?.firstOrNull;

    // TODO: Start slideshow timer
  }

  void onAnswer() {
    getIt<GameLobbyController>()
        .socket
        ?.emit(SocketIOGameSendEvents.questionAnswer.json!);
  }
}
