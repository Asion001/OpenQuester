import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siq_file/src/extensions.dart';

import 'siq_file_file_object.dart';
import 'siq_file_metadata.dart';
import 'siq_file_question.dart';
import 'siq_file_round.dart';
import 'siq_file_theme.dart';

export 'siq_file_metadata.dart';
export 'siq_file_round.dart';

part 'siq_file.freezed.dart';
part 'siq_file.g.dart';

@freezed
class SiqFile with _$SiqFile {
  const factory SiqFile({
    required SiqFileMetadata metadata,
    @Default([]) List<SiqFileRound> rounds,
  }) = _SiqFile;

  factory SiqFile.fromJson(Map<String, dynamic> json) =>
      _$SiqFileFromJson(json);
  const SiqFile._();

  SiqFile copyWithFiles(
      SiqFileFileObject? Function(SiqFileFileObject? file) setSiqFiles) {
    setFiles<T>(List<T> list, T Function(T) handler) {
      for (var i = 0; i < list.length; i++) {
        list[i] = handler(list[i]);
      }
    }

    setQuestions(SiqFileQuestion question) {
      final files = question.files.modifiable;
      setFiles(files, setSiqFiles);
      return question.withFiles(files);
    }

    setThemes(SiqFileTheme theme) {
      final questions = theme.questions.modifiable;
      setFiles(questions, setQuestions);
      return theme.copyWith(questions: questions);
    }

    setRounds(SiqFileRound round) {
      final themes = round.themes.modifiable;
      setFiles(themes, setThemes);
      return round.copyWith(themes: themes);
    }

    final rounds = this.rounds.modifiable;
    setFiles(rounds, setRounds);

    return copyWith(rounds: rounds);
  }
}
