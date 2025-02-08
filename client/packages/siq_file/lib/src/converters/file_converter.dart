import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi/openapi.dart';

class ImageFileConverter
    implements JsonConverter<OQFileContentStructure, String> {
  const ImageFileConverter();

  @override
  OQFileContentStructure fromJson(String value) {
    return OQFileContentStructure(sha256: value, type: FileType.image);
  }

  @override
  String toJson(OQFileContentStructure object) => object.sha256;
}
