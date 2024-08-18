import 'package:freezed_annotation/freezed_annotation.dart';

import 'siq_file_metadata.dart';

part 'siq_file.freezed.dart';
part 'siq_file.g.dart';

@freezed
class SiqFile with _$SiqFile {
  factory SiqFile({
    required SiqFileMetadata metadata,
  }) = _SiqFile;

  factory SiqFile.fromJson(Map<String, dynamic> json) =>
      _$SiqFileFromJson(json);
}
