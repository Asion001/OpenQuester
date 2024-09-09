//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_file_get400_response.g.dart';

/// V1FileGet400Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class V1FileGet400Response
    implements Built<V1FileGet400Response, V1FileGet400ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  V1FileGet400Response._();

  factory V1FileGet400Response([void updates(V1FileGet400ResponseBuilder b)]) =
      _$V1FileGet400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1FileGet400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1FileGet400Response> get serializer =>
      _$V1FileGet400ResponseSerializer();
}

class _$V1FileGet400ResponseSerializer
    implements PrimitiveSerializer<V1FileGet400Response> {
  @override
  final Iterable<Type> types = const [
    V1FileGet400Response,
    _$V1FileGet400Response
  ];

  @override
  final String wireName = r'V1FileGet400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1FileGet400Response object, {
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
    V1FileGet400Response object, {
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
    required V1FileGet400ResponseBuilder result,
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
  V1FileGet400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1FileGet400ResponseBuilder();
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
