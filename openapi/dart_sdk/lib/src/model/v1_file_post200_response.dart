//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_file_post200_response.g.dart';

/// V1FilePost200Response
///
/// Properties:
/// * [url]
@BuiltValue()
abstract class V1FilePost200Response
    implements Built<V1FilePost200Response, V1FilePost200ResponseBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  V1FilePost200Response._();

  factory V1FilePost200Response(
      [void updates(V1FilePost200ResponseBuilder b)]) = _$V1FilePost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1FilePost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1FilePost200Response> get serializer =>
      _$V1FilePost200ResponseSerializer();
}

class _$V1FilePost200ResponseSerializer
    implements PrimitiveSerializer<V1FilePost200Response> {
  @override
  final Iterable<Type> types = const [
    V1FilePost200Response,
    _$V1FilePost200Response
  ];

  @override
  final String wireName = r'V1FilePost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1FilePost200Response object, {
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
    V1FilePost200Response object, {
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
    required V1FilePost200ResponseBuilder result,
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
  V1FilePost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1FilePost200ResponseBuilder();
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
