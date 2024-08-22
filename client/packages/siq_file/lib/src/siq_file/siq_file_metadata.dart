import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_object.dart';

part 'siq_file_metadata.freezed.dart';
part 'siq_file_metadata.g.dart';

@freezed
class SiqFileMetadata with _$SiqFileMetadata {
  factory SiqFileMetadata({
    required String id,
    required String title,
    required DateTime date,
    required String publisher,
    FileObject? logo,
    @Default([]) List<String> tags,
    @Default([]) List<String> authors,
    String? language,
    String? restriction,
  }) = _SiqFileMetadata;

  factory SiqFileMetadata.fromJson(Map<String, dynamic> json) =>
      _$SiqFileMetadataFromJson(json);
}
