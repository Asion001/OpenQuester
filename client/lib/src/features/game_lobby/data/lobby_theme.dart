import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openquester/src/features/game_lobby/data/lobby_question.dart';

part 'lobby_theme.freezed.dart';

@freezed
abstract class LobbyTheme with _$LobbyTheme {
  const factory LobbyTheme({
    required String name,
    required List<LobbyQuestion> questions,
  }) = _LobbyTheme;
}
