//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'private_user_permissions_inner.g.dart';

/// PrivateUserPermissionsInner
///
/// Properties:
/// * [id]
/// * [name]
@BuiltValue()
abstract class PrivateUserPermissionsInner
    implements
        Built<PrivateUserPermissionsInner, PrivateUserPermissionsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  num get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  PrivateUserPermissionsInner._();

  factory PrivateUserPermissionsInner(
          [void updates(PrivateUserPermissionsInnerBuilder b)]) =
      _$PrivateUserPermissionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrivateUserPermissionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrivateUserPermissionsInner> get serializer =>
      _$PrivateUserPermissionsInnerSerializer();
}

class _$PrivateUserPermissionsInnerSerializer
    implements PrimitiveSerializer<PrivateUserPermissionsInner> {
  @override
  final Iterable<Type> types = const [
    PrivateUserPermissionsInner,
    _$PrivateUserPermissionsInner
  ];

  @override
  final String wireName = r'PrivateUserPermissionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrivateUserPermissionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(num),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PrivateUserPermissionsInner object, {
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
    required PrivateUserPermissionsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrivateUserPermissionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrivateUserPermissionsInnerBuilder();
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
