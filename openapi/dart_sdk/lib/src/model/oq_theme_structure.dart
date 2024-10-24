//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/oq_questions_structure.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oq_theme_structure.g.dart';

/// OQThemeStructure
///
/// Properties:
/// * [name]
/// * [comment]
/// * [questions]
@BuiltValue()
abstract class OQThemeStructure
    implements Built<OQThemeStructure, OQThemeStructureBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  @BuiltValueField(wireName: r'questions')
  BuiltList<OQQuestionsStructure>? get questions;

  OQThemeStructure._();

  factory OQThemeStructure([void updates(OQThemeStructureBuilder b)]) =
      _$OQThemeStructure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OQThemeStructureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OQThemeStructure> get serializer =>
      _$OQThemeStructureSerializer();
}

class _$OQThemeStructureSerializer
    implements PrimitiveSerializer<OQThemeStructure> {
  @override
  final Iterable<Type> types = const [OQThemeStructure, _$OQThemeStructure];

  @override
  final String wireName = r'OQThemeStructure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OQThemeStructure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType(String),
      );
    }
    if (object.questions != null) {
      yield r'questions';
      yield serializers.serialize(
        object.questions,
        specifiedType:
            const FullType(BuiltList, [FullType(OQQuestionsStructure)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OQThemeStructure object, {
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
    required OQThemeStructureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comment = valueDes;
          break;
        case r'questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(OQQuestionsStructure)]),
          ) as BuiltList<OQQuestionsStructure>;
          result.questions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OQThemeStructure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OQThemeStructureBuilder();
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
