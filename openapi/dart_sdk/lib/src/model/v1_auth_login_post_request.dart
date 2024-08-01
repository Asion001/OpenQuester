//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_auth_login_post_request.g.dart';

/// V1AuthLoginPostRequest
///
/// Properties:
/// * [email]
/// * [password]
@BuiltValue()
abstract class V1AuthLoginPostRequest
    implements Built<V1AuthLoginPostRequest, V1AuthLoginPostRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  V1AuthLoginPostRequest._();

  factory V1AuthLoginPostRequest(
          [void updates(V1AuthLoginPostRequestBuilder b)]) =
      _$V1AuthLoginPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AuthLoginPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AuthLoginPostRequest> get serializer =>
      _$V1AuthLoginPostRequestSerializer();
}

class _$V1AuthLoginPostRequestSerializer
    implements PrimitiveSerializer<V1AuthLoginPostRequest> {
  @override
  final Iterable<Type> types = const [
    V1AuthLoginPostRequest,
    _$V1AuthLoginPostRequest
  ];

  @override
  final String wireName = r'V1AuthLoginPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AuthLoginPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AuthLoginPostRequest object, {
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
    required V1AuthLoginPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1AuthLoginPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AuthLoginPostRequestBuilder();
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
