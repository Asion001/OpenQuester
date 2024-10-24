//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/oq_question_file.dart';
import 'package:openapi/src/model/oq_answer_file.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oq_questions_structure.g.dart';

/// OQQuestionsStructure
///
/// Properties:
/// * [price]
/// * [type]
/// * [text]
/// * [hostHint]
/// * [playersHint]
/// * [answerText]
/// * [questionFile]
/// * [answerFile]
@BuiltValue()
abstract class OQQuestionsStructure
    implements Built<OQQuestionsStructure, OQQuestionsStructureBuilder> {
  @BuiltValueField(wireName: r'price')
  num? get price;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'hostHint')
  String? get hostHint;

  @BuiltValueField(wireName: r'playersHint')
  String? get playersHint;

  @BuiltValueField(wireName: r'answerText')
  String? get answerText;

  @BuiltValueField(wireName: r'questionFile')
  OQQuestionFile? get questionFile;

  @BuiltValueField(wireName: r'answerFile')
  OQAnswerFile? get answerFile;

  OQQuestionsStructure._();

  factory OQQuestionsStructure([void updates(OQQuestionsStructureBuilder b)]) =
      _$OQQuestionsStructure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OQQuestionsStructureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OQQuestionsStructure> get serializer =>
      _$OQQuestionsStructureSerializer();
}

class _$OQQuestionsStructureSerializer
    implements PrimitiveSerializer<OQQuestionsStructure> {
  @override
  final Iterable<Type> types = const [
    OQQuestionsStructure,
    _$OQQuestionsStructure
  ];

  @override
  final String wireName = r'OQQuestionsStructure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OQQuestionsStructure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(num),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.hostHint != null) {
      yield r'hostHint';
      yield serializers.serialize(
        object.hostHint,
        specifiedType: const FullType(String),
      );
    }
    if (object.playersHint != null) {
      yield r'playersHint';
      yield serializers.serialize(
        object.playersHint,
        specifiedType: const FullType(String),
      );
    }
    if (object.answerText != null) {
      yield r'answerText';
      yield serializers.serialize(
        object.answerText,
        specifiedType: const FullType(String),
      );
    }
    if (object.questionFile != null) {
      yield r'questionFile';
      yield serializers.serialize(
        object.questionFile,
        specifiedType: const FullType(OQQuestionFile),
      );
    }
    if (object.answerFile != null) {
      yield r'answerFile';
      yield serializers.serialize(
        object.answerFile,
        specifiedType: const FullType(OQAnswerFile),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OQQuestionsStructure object, {
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
    required OQQuestionsStructureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.price = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'hostHint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hostHint = valueDes;
          break;
        case r'playersHint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.playersHint = valueDes;
          break;
        case r'answerText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.answerText = valueDes;
          break;
        case r'questionFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OQQuestionFile),
          ) as OQQuestionFile;
          result.questionFile.replace(valueDes);
          break;
        case r'answerFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OQAnswerFile),
          ) as OQAnswerFile;
          result.answerFile.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OQQuestionsStructure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OQQuestionsStructureBuilder();
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
