// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'i_game_create_data_age_restriction.dart';

part 'i_game_create_data.freezed.dart';
part 'i_game_create_data.g.dart';

@Freezed()
class IGameCreateData with _$IGameCreateData {
  const factory IGameCreateData({
    required String title,
    required int packageId,
    required bool isPrivate,
    required IGameCreateDataAgeRestriction ageRestriction,
    required int maxPlayers,
  }) = _IGameCreateData;
  
  factory IGameCreateData.fromJson(Map<String, Object?> json) => _$IGameCreateDataFromJson(json);
}
