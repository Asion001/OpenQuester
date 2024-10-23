//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/oq_file_content_structure.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oq_answer_file.g.dart';

/// OQAnswerFile
///
/// Properties:
/// * [file]
/// * [displayTime]
@BuiltValue()
abstract class OQAnswerFile
    implements Built<OQAnswerFile, OQAnswerFileBuilder> {
  @BuiltValueField(wireName: r'file')
  OQFileContentStructure? get file;

  @BuiltValueField(wireName: r'displayTime')
  num? get displayTime;

  OQAnswerFile._();

  factory OQAnswerFile([void updates(OQAnswerFileBuilder b)]) = _$OQAnswerFile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OQAnswerFileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OQAnswerFile> get serializer => _$OQAnswerFileSerializer();
}

class _$OQAnswerFileSerializer implements PrimitiveSerializer<OQAnswerFile> {
  @override
  final Iterable<Type> types = const [OQAnswerFile, _$OQAnswerFile];

  @override
  final String wireName = r'OQAnswerFile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OQAnswerFile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.file != null) {
      yield r'file';
      yield serializers.serialize(
        object.file,
        specifiedType: const FullType(OQFileContentStructure),
      );
    }
    if (object.displayTime != null) {
      yield r'displayTime';
      yield serializers.serialize(
        object.displayTime,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OQAnswerFile object, {
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
    required OQAnswerFileBuilder result,
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
        case r'displayTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.displayTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OQAnswerFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OQAnswerFileBuilder();
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
