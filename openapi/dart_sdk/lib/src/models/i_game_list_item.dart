// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'i_package_item.dart';

part 'i_game_list_item.freezed.dart';
part 'i_game_list_item.g.dart';

@Freezed()
class IGameListItem with _$IGameListItem {
  const factory IGameListItem({
    required String id,
    required int createdBy,
    required String title,
    required DateTime createdAt,
    required int currentRound,
    required int players,
    required int maxPlayers,
    required DateTime startedAt,
    required IPackageItem package,
  }) = _IGameListItem;
  
  factory IGameListItem.fromJson(Map<String, Object?> json) => _$IGameListItemFromJson(json);
}
