import 'package:freezed_annotation/freezed_annotation.dart';

part 'siq_file_metadata.freezed.dart';
part 'siq_file_metadata.g.dart';

@freezed
class SiqFileMetadata with _$SiqFileMetadata {
  factory SiqFileMetadata({
    @JsonKey(name: 'name') required String title,
    required String version,
    required String id,
    @_DateTimeConverter() required DateTime date,
    required String publisher,
    @JsonKey(name: 'logo') String? logoPath,
    @Default([]) List<String> tags,
    @Default([]) List<String> authors,
  }) = _SiqFileMetadata;

  factory SiqFileMetadata.fromJson(Map<String, dynamic> json) =>
      _$SiqFileMetadataFromJson(json);
}

class _DateTimeConverter implements JsonConverter<DateTime, String> {
  const _DateTimeConverter();

  @override
  DateTime fromJson(String value) {
    final parts = value.split('.').map(int.parse).toList();
    return DateTime(parts[2], parts[1], parts[0]);
  }

  @override
  String toJson(DateTime object) => object.toIso8601String();
}
