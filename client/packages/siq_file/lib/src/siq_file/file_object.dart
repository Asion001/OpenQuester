import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_object.freezed.dart';
part 'file_object.g.dart';

enum FileType { image, video, audio }

@freezed
class FileObject with _$FileObject {
  factory FileObject({
    required String path,
    required FileType type,
    String? sha256,
  }) = _FileObject;

  factory FileObject.fromJson(Map<String, dynamic> json) =>
      _$FileObjectFromJson(json);
}
