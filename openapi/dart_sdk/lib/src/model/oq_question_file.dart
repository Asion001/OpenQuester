//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/oq_file_content_structure.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oq_question_file.g.dart';

/// OQQuestionFile
///
/// Properties:
/// * [file]
/// * [displayTime]
/// * [answerDelay]
@BuiltValue()
abstract class OQQuestionFile
    implements Built<OQQuestionFile, OQQuestionFileBuilder> {
  @BuiltValueField(wireName: r'file')
  OQFileContentStructure? get file;

  @BuiltValueField(wireName: r'displayTime')
  num? get displayTime;

  @BuiltValueField(wireName: r'answerDelay')
  num? get answerDelay;

  OQQuestionFile._();

  factory OQQuestionFile([void updates(OQQuestionFileBuilder b)]) =
      _$OQQuestionFile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OQQuestionFileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OQQuestionFile> get serializer =>
      _$OQQuestionFileSerializer();
}

class _$OQQuestionFileSerializer
    implements PrimitiveSerializer<OQQuestionFile> {
  @override
  final Iterable<Type> types = const [OQQuestionFile, _$OQQuestionFile];

  @override
  final String wireName = r'OQQuestionFile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OQQuestionFile object, {
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
    if (object.answerDelay != null) {
      yield r'answerDelay';
      yield serializers.serialize(
        object.answerDelay,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OQQuestionFile object, {
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
    required OQQuestionFileBuilder result,
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
        case r'answerDelay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.answerDelay = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OQQuestionFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OQQuestionFileBuilder();
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
