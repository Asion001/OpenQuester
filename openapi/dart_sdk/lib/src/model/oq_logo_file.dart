//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/oq_file_content_structure.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oq_logo_file.g.dart';

/// OQLogoFile
///
/// Properties:
/// * [file]
@BuiltValue()
abstract class OQLogoFile implements Built<OQLogoFile, OQLogoFileBuilder> {
  @BuiltValueField(wireName: r'file')
  OQFileContentStructure? get file;

  OQLogoFile._();

  factory OQLogoFile([void updates(OQLogoFileBuilder b)]) = _$OQLogoFile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OQLogoFileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OQLogoFile> get serializer => _$OQLogoFileSerializer();
}

class _$OQLogoFileSerializer implements PrimitiveSerializer<OQLogoFile> {
  @override
  final Iterable<Type> types = const [OQLogoFile, _$OQLogoFile];

  @override
  final String wireName = r'OQLogoFile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OQLogoFile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.file != null) {
      yield r'file';
      yield serializers.serialize(
        object.file,
        specifiedType: const FullType(OQFileContentStructure),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OQLogoFile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OQLogoFileBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OQFileContentStructure),
          ) as OQFileContentStructure;
          result.file.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OQLogoFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OQLogoFileBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
