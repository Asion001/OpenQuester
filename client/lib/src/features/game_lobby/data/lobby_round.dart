import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openquester/src/features/game_lobby/data/lobby_theme.dart';

part 'lobby_round.freezed.dart';

@freezed
abstract class LobbyRound with _$LobbyRound {
  const factory LobbyRound({
    required String name,
    required List<LobbyTheme> themes,
  }) = _LobbyRound;
}
