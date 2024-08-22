import 'package:freezed_annotation/freezed_annotation.dart';

import 'siq_file_theme.dart';

part 'siq_file_round.freezed.dart';
part 'siq_file_round.g.dart';

@freezed
class SiqFileRound with _$SiqFileRound {
  factory SiqFileRound({
    required String name,
    @Default([]) List<SiqFileTheme> themes,
  }) = _SiqFileRound;

  factory SiqFileRound.fromJson(Map<String, dynamic> json) =>
      _$SiqFileRoundFromJson(json);
}
