//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_file_get200_response.g.dart';

/// V1FileGet200Response
///
/// Properties:
/// * [url]
@BuiltValue()
abstract class V1FileGet200Response
    implements Built<V1FileGet200Response, V1FileGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  V1FileGet200Response._();

  factory V1FileGet200Response([void updates(V1FileGet200ResponseBuilder b)]) =
      _$V1FileGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1FileGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1FileGet200Response> get serializer =>
      _$V1FileGet200ResponseSerializer();
}

class _$V1FileGet200ResponseSerializer
    implements PrimitiveSerializer<V1FileGet200Response> {
  @override
  final Iterable<Type> types = const [
    V1FileGet200Response,
    _$V1FileGet200Response
  ];

  @override
  final String wireName = r'V1FileGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1FileGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1FileGet200Response object, {
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
    required V1FileGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1FileGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1FileGet200ResponseBuilder();
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
