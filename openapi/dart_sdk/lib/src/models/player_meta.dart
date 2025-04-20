// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_meta.freezed.dart';
part 'player_meta.g.dart';

@Freezed()
class PlayerMeta with _$PlayerMeta {
  const factory PlayerMeta({
    required num id,
    required String username,
    required String? avatar,
  }) = _PlayerMeta;
  
  factory PlayerMeta.fromJson(Map<String, Object?> json) => _$PlayerMetaFromJson(json);
}
