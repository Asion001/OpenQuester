//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_private_user_permissions_inner.g.dart';

/// ResponsePrivateUserPermissionsInner
///
/// Properties:
/// * [id]
/// * [name]
@BuiltValue()
abstract class ResponsePrivateUserPermissionsInner
    implements
        Built<ResponsePrivateUserPermissionsInner,
            ResponsePrivateUserPermissionsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  num get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  ResponsePrivateUserPermissionsInner._();

  factory ResponsePrivateUserPermissionsInner(
          [void updates(ResponsePrivateUserPermissionsInnerBuilder b)]) =
      _$ResponsePrivateUserPermissionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResponsePrivateUserPermissionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResponsePrivateUserPermissionsInner> get serializer =>
      _$ResponsePrivateUserPermissionsInnerSerializer();
}

class _$ResponsePrivateUserPermissionsInnerSerializer
    implements PrimitiveSerializer<ResponsePrivateUserPermissionsInner> {
  @override
  final Iterable<Type> types = const [
    ResponsePrivateUserPermissionsInner,
    _$ResponsePrivateUserPermissionsInner
  ];

  @override
  final String wireName = r'ResponsePrivateUserPermissionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResponsePrivateUserPermissionsInner object, {
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
    ResponsePrivateUserPermissionsInner object, {
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
    required ResponsePrivateUserPermissionsInnerBuilder result,
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
  ResponsePrivateUserPermissionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResponsePrivateUserPermissionsInnerBuilder();
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
