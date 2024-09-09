//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_auth_refresh_post400_response.g.dart';

/// V1AuthRefreshPost400Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class V1AuthRefreshPost400Response
    implements
        Built<V1AuthRefreshPost400Response,
            V1AuthRefreshPost400ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  V1AuthRefreshPost400Response._();

  factory V1AuthRefreshPost400Response(
          [void updates(V1AuthRefreshPost400ResponseBuilder b)]) =
      _$V1AuthRefreshPost400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AuthRefreshPost400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AuthRefreshPost400Response> get serializer =>
      _$V1AuthRefreshPost400ResponseSerializer();
}

class _$V1AuthRefreshPost400ResponseSerializer
    implements PrimitiveSerializer<V1AuthRefreshPost400Response> {
  @override
  final Iterable<Type> types = const [
    V1AuthRefreshPost400Response,
    _$V1AuthRefreshPost400Response
  ];

  @override
  final String wireName = r'V1AuthRefreshPost400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AuthRefreshPost400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AuthRefreshPost400Response object, {
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
    required V1AuthRefreshPost400ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1AuthRefreshPost400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AuthRefreshPost400ResponseBuilder();
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
