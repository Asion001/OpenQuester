import 'package:freezed_annotation/freezed_annotation.dart';

import 'siq_file_question.dart';

part 'siq_file_theme.freezed.dart';
part 'siq_file_theme.g.dart';

@freezed
class SiqFileTheme with _$SiqFileTheme {
  factory SiqFileTheme({
    required String name,
    String? comment,
    @Default([]) List<SiqFileQuestion> questions,
  }) = _SiqFileTheme;

  factory SiqFileTheme.fromJson(Map<String, dynamic> json) =>
      _$SiqFileThemeFromJson(json);
}
