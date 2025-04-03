// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'age_restriction.dart';

part 'game_create_data.freezed.dart';
part 'game_create_data.g.dart';

@Freezed()
class GameCreateData with _$GameCreateData {
  const factory GameCreateData({
    required String title,
    required int packageId,
    required bool isPrivate,
    required AgeRestriction ageRestriction,
    required int maxPlayers,
  }) = _GameCreateData;
  
  factory GameCreateData.fromJson(Map<String, Object?> json) => _$GameCreateDataFromJson(json);
}
