//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_auth_data.g.dart';

/// ResponseAuthData
///
/// Properties:
/// * [accessToken]
/// * [refreshToken]
@BuiltValue()
abstract class ResponseAuthData
    implements Built<ResponseAuthData, ResponseAuthDataBuilder> {
  @BuiltValueField(wireName: r'access_token')
  String get accessToken;

  @BuiltValueField(wireName: r'refresh_token')
  String get refreshToken;

  ResponseAuthData._();

  factory ResponseAuthData([void updates(ResponseAuthDataBuilder b)]) =
      _$ResponseAuthData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResponseAuthDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResponseAuthData> get serializer =>
      _$ResponseAuthDataSerializer();
}

class _$ResponseAuthDataSerializer
    implements PrimitiveSerializer<ResponseAuthData> {
  @override
  final Iterable<Type> types = const [ResponseAuthData, _$ResponseAuthData];

  @override
  final String wireName = r'ResponseAuthData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResponseAuthData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'access_token';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
    yield r'refresh_token';
    yield serializers.serialize(
      object.refreshToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ResponseAuthData object, {
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
    required ResponseAuthDataBuilder result,
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
  ResponseAuthData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResponseAuthDataBuilder();
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
