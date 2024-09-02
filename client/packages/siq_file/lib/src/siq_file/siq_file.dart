import 'package:freezed_annotation/freezed_annotation.dart';

import 'siq_file_metadata.dart';
import 'siq_file_round.dart';

export 'siq_file_metadata.dart';
export 'siq_file_round.dart';

part 'siq_file.freezed.dart';
part 'siq_file.g.dart';

@freezed
class SiqFile with _$SiqFile {
  factory SiqFile({
    required SiqFileMetadata metadata,
    @Default([]) List<SiqFileRound> rounds,
  }) = _SiqFile;

  factory SiqFile.fromJson(Map<String, dynamic> json) =>
      _$SiqFileFromJson(json);
}
