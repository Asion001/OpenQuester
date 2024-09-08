import 'package:freezed_annotation/freezed_annotation.dart';

import 'siq_file_file_object.dart';

part 'siq_file_question.freezed.dart';
part 'siq_file_question.g.dart';

@freezed
class SiqFileQuestion with _$SiqFileQuestion {
  const factory SiqFileQuestion({
    required int price,
    @Default(QuestionType.regular) QuestionType type,

    /// Question text
    String? text,

    /// Hint for host asnwer validation.
    /// For example "Right answer: only Jojo. Not gay guys"
    String? hostHint,

    /// Hint for players.
    String? playersHint,
    SiqFileFileObject? questionFile,

    /// Question text
    String? answerText,
    SiqFileFileObject? answerFile,
  }) = _SiqFileQuestion;

  factory SiqFileQuestion.fromJson(Map<String, dynamic> json) =>
      _$SiqFileQuestionFromJson(json);

  const SiqFileQuestion._();

  List<SiqFileFileObject?> get files => [answerFile, questionFile].toList();
  SiqFileQuestion withFiles(List<SiqFileFileObject?> files) =>
      copyWith(answerFile: files[0], questionFile: files[1]);
}

enum QuestionType {
  /// Just a question
  regular,

  /// Question with a stake
  stake,
  noRisk,
}
