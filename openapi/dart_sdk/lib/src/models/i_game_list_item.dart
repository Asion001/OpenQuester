// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'i_game_list_item_age_restriction.dart';
import 'i_package_item.dart';
import 'i_short_user_info.dart';

part 'i_game_list_item.freezed.dart';
part 'i_game_list_item.g.dart';

@Freezed()
class IGameListItem with _$IGameListItem {
  const factory IGameListItem({
    required String id,
    required IShortUserInfo createdBy,
    required String title,
    required DateTime createdAt,
    required IGameListItemAgeRestriction ageRestriction,
    required int currentRound,
    required int players,
    required int maxPlayers,
    required IPackageItem package,
    DateTime? startedAt,
  }) = _IGameListItem;
  
  factory IGameListItem.fromJson(Map<String, Object?> json) => _$IGameListItemFromJson(json);
}
