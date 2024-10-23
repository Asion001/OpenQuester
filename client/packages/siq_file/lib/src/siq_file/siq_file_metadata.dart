import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_object.dart';

part 'siq_file_metadata.freezed.dart';
part 'siq_file_metadata.g.dart';

@freezed
class SiqFileMetadata with _$SiqFileMetadata {
  factory SiqFileMetadata({
    String? id,
    String? title,
    DateTime? date,
    String? publisher,
    FileObject? logo,
    @Default([]) List<String> tags,
    @Default([]) List<String> authors,
    String? language,
    String? restriction,
    String? comment,
  }) = _SiqFileMetadata;

  factory SiqFileMetadata.fromJson(Map<String, dynamic> json) =>
      _$SiqFileMetadataFromJson(json);
}
