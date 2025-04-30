// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'age_restriction.dart';
import 'package_item.dart';
import 'short_user_info.dart';

part 'game_list_item.freezed.dart';
part 'game_list_item.g.dart';

@Freezed()
abstract class GameListItem with _$GameListItem {
  const factory GameListItem({
    required String id,
    required ShortUserInfo createdBy,
    required String title,
    required DateTime createdAt,
    required AgeRestriction ageRestriction,
    required bool isPrivate,
    required int? currentRound,
    required int? currentQuestion,
    required int players,
    required int maxPlayers,
    required DateTime? startedAt,
    required DateTime? finishedAt,
    required PackageItem package,
  }) = _GameListItem;
  
  factory GameListItem.fromJson(Map<String, Object?> json) => _$GameListItemFromJson(json);
}
