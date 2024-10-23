//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/oq_theme_structure.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oq_round_structure.g.dart';

/// OQRoundStructure
///
/// Properties:
/// * [name]
/// * [themes]
@BuiltValue()
abstract class OQRoundStructure
    implements Built<OQRoundStructure, OQRoundStructureBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'themes')
  BuiltList<OQThemeStructure>? get themes;

  OQRoundStructure._();

  factory OQRoundStructure([void updates(OQRoundStructureBuilder b)]) =
      _$OQRoundStructure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OQRoundStructureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OQRoundStructure> get serializer =>
      _$OQRoundStructureSerializer();
}

class _$OQRoundStructureSerializer
    implements PrimitiveSerializer<OQRoundStructure> {
  @override
  final Iterable<Type> types = const [OQRoundStructure, _$OQRoundStructure];

  @override
  final String wireName = r'OQRoundStructure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OQRoundStructure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.themes != null) {
      yield r'themes';
      yield serializers.serialize(
        object.themes,
        specifiedType: const FullType(BuiltList, [FullType(OQThemeStructure)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OQRoundStructure object, {
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
    required OQRoundStructureBuilder result,
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
        case r'themes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(OQThemeStructure)]),
          ) as BuiltList<OQThemeStructure>;
          result.themes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OQRoundStructure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OQRoundStructureBuilder();
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
