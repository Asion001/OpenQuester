import 'package:openapi/openapi.dart';

extension MapExtension on Map {
  void renameKey(String from, String to) {
    final value = remove(from);
    this[to] = value;
  }
}

extension ListExtension<T> on List<T> {
  List<T> get modifiable => [...this];
}

extension PackageX on OQContentStructure {
  OQContentStructure copyWithFiles(
      OQFileContentStructure? Function(OQFileContentStructure? file)
          setSiqFiles) {
    setFiles<T>(List<T> list, T Function(T) handler) {
      for (var i = 0; i < list.length; i++) {
        list[i] = handler(list[i]);
      }
    }

    setQuestions(OQFile question) {
      final files = question.files.modifiable;
      setFiles(files, setSiqFiles);
      return question.withFiles(files);
    }

    setThemes(OQThemeStructure theme) {
      final questions = theme.questions.modifiable;
      setFiles(questions, setQuestions);
      return theme.copyWith(questions: questions);
    }

    setRounds(OQRoundStructure round) {
      final themes = round.themes.modifiable;
      setFiles(themes, setThemes);
      return round.copyWith(themes: themes);
    }

    final rounds = this.rounds.modifiable;
    setFiles(rounds, setRounds);

    return copyWith(rounds: rounds);
  }
}
