//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_auth_refresh_post_request.g.dart';

/// V1AuthRefreshPostRequest
///
/// Properties:
/// * [refreshToken]
@BuiltValue()
abstract class V1AuthRefreshPostRequest
    implements
        Built<V1AuthRefreshPostRequest, V1AuthRefreshPostRequestBuilder> {
  @BuiltValueField(wireName: r'refresh_token')
  String get refreshToken;

  V1AuthRefreshPostRequest._();

  factory V1AuthRefreshPostRequest(
          [void updates(V1AuthRefreshPostRequestBuilder b)]) =
      _$V1AuthRefreshPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AuthRefreshPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AuthRefreshPostRequest> get serializer =>
      _$V1AuthRefreshPostRequestSerializer();
}

class _$V1AuthRefreshPostRequestSerializer
    implements PrimitiveSerializer<V1AuthRefreshPostRequest> {
  @override
  final Iterable<Type> types = const [
    V1AuthRefreshPostRequest,
    _$V1AuthRefreshPostRequest
  ];

  @override
  final String wireName = r'V1AuthRefreshPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AuthRefreshPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refresh_token';
    yield serializers.serialize(
      object.refreshToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AuthRefreshPostRequest object, {
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
    required V1AuthRefreshPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refresh_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1AuthRefreshPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AuthRefreshPostRequestBuilder();
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
