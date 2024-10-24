//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oq_file_content_structure.g.dart';

/// OQFileContentStructure
///
/// Properties:
/// * [sha256]
/// * [type]
@BuiltValue()
abstract class OQFileContentStructure
    implements Built<OQFileContentStructure, OQFileContentStructureBuilder> {
  @BuiltValueField(wireName: r'sha256')
  String? get sha256;

  @BuiltValueField(wireName: r'type')
  String? get type;

  OQFileContentStructure._();

  factory OQFileContentStructure(
          [void updates(OQFileContentStructureBuilder b)]) =
      _$OQFileContentStructure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OQFileContentStructureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OQFileContentStructure> get serializer =>
      _$OQFileContentStructureSerializer();
}

class _$OQFileContentStructureSerializer
    implements PrimitiveSerializer<OQFileContentStructure> {
  @override
  final Iterable<Type> types = const [
    OQFileContentStructure,
    _$OQFileContentStructure
  ];

  @override
  final String wireName = r'OQFileContentStructure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OQFileContentStructure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sha256 != null) {
      yield r'sha256';
      yield serializers.serialize(
        object.sha256,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OQFileContentStructure object, {
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
    required OQFileContentStructureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sha256':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sha256 = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OQFileContentStructure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OQFileContentStructureBuilder();
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
