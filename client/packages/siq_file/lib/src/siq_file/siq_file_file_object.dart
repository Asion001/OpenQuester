import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_object.dart';

part 'siq_file_file_object.freezed.dart';
part 'siq_file_file_object.g.dart';

@freezed
class SiqFileFileObject with _$SiqFileFileObject {
  factory SiqFileFileObject({
    required FileObject file,
    Duration? displayTime,
  }) = _SiqFileFileObject;

  factory SiqFileFileObject.fromJson(Map<String, dynamic> json) =>
      _$SiqFileFileObjectFromJson(json);
}
