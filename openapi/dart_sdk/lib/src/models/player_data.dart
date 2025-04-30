// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'player_data_status.dart';
import 'player_meta.dart';
import 'player_role.dart';
import 'restrictions_event_data.dart';

part 'player_data.freezed.dart';
part 'player_data.g.dart';

/// Player DTO. This is also sent to everyone when player joins game
@Freezed()
abstract class PlayerData with _$PlayerData {
  const factory PlayerData({
    required PlayerMeta meta,
    required PlayerRole role,
    required RestrictionsEventData restrictionData,
    required int score,

    /// Slot null has only showman and spectators
    required int? slot,
    required PlayerDataStatus status,
  }) = _PlayerData;
  
  factory PlayerData.fromJson(Map<String, Object?> json) => _$PlayerDataFromJson(json);
}
