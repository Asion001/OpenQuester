//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/oq_round_structure.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/oq_metadata_structure.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oq_content_structure.g.dart';

/// OQContentStructure
///
/// Properties:
/// * [metadata]
/// * [rounds]
@BuiltValue()
abstract class OQContentStructure
    implements Built<OQContentStructure, OQContentStructureBuilder> {
  @BuiltValueField(wireName: r'metadata')
  OQMetadataStructure? get metadata;

  @BuiltValueField(wireName: r'rounds')
  BuiltList<OQRoundStructure>? get rounds;

  OQContentStructure._();

  factory OQContentStructure([void updates(OQContentStructureBuilder b)]) =
      _$OQContentStructure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OQContentStructureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OQContentStructure> get serializer =>
      _$OQContentStructureSerializer();
}

class _$OQContentStructureSerializer
    implements PrimitiveSerializer<OQContentStructure> {
  @override
  final Iterable<Type> types = const [OQContentStructure, _$OQContentStructure];

  @override
  final String wireName = r'OQContentStructure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OQContentStructure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(OQMetadataStructure),
      );
    }
    if (object.rounds != null) {
      yield r'rounds';
      yield serializers.serialize(
        object.rounds,
        specifiedType: const FullType(BuiltList, [FullType(OQRoundStructure)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OQContentStructure object, {
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
    required OQContentStructureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OQMetadataStructure),
          ) as OQMetadataStructure;
          result.metadata.replace(valueDes);
          break;
        case r'rounds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(OQRoundStructure)]),
          ) as BuiltList<OQRoundStructure>;
          result.rounds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OQContentStructure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OQContentStructureBuilder();
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
