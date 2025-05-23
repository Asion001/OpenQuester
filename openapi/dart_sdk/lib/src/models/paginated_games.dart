// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_list_item.dart';
import 'page_info.dart';

part 'paginated_games.freezed.dart';
part 'paginated_games.g.dart';

@Freezed()
abstract class PaginatedGames with _$PaginatedGames {
  const factory PaginatedGames({
    required List<GameListItem> data,
    required PageInfo pageInfo,
  }) = _PaginatedGames;
  
  factory PaginatedGames.fromJson(Map<String, Object?> json) => _$PaginatedGamesFromJson(json);
}
