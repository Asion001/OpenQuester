//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_auth_refresh_post200_response.g.dart';

/// V1AuthRefreshPost200Response
///
/// Properties:
/// * [accessToken]
/// * [refreshToken]
@BuiltValue()
abstract class V1AuthRefreshPost200Response
    implements
        Built<V1AuthRefreshPost200Response,
            V1AuthRefreshPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'access_token')
  String? get accessToken;

  @BuiltValueField(wireName: r'refresh_token')
  String? get refreshToken;

  V1AuthRefreshPost200Response._();

  factory V1AuthRefreshPost200Response(
          [void updates(V1AuthRefreshPost200ResponseBuilder b)]) =
      _$V1AuthRefreshPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AuthRefreshPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AuthRefreshPost200Response> get serializer =>
      _$V1AuthRefreshPost200ResponseSerializer();
}

class _$V1AuthRefreshPost200ResponseSerializer
    implements PrimitiveSerializer<V1AuthRefreshPost200Response> {
  @override
  final Iterable<Type> types = const [
    V1AuthRefreshPost200Response,
    _$V1AuthRefreshPost200Response
  ];

  @override
  final String wireName = r'V1AuthRefreshPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AuthRefreshPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessToken != null) {
      yield r'access_token';
      yield serializers.serialize(
        object.accessToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.refreshToken != null) {
      yield r'refresh_token';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AuthRefreshPost200Response object, {
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
    required V1AuthRefreshPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'access_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
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
  V1AuthRefreshPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AuthRefreshPost200ResponseBuilder();
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
