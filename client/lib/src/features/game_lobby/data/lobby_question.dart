import 'package:freezed_annotation/freezed_annotation.dart';

part 'lobby_question.freezed.dart';

@freezed
abstract class LobbyQuestion with _$LobbyQuestion {
  const factory LobbyQuestion({
    required int price,
  }) = _LobbyQuestion;
}
