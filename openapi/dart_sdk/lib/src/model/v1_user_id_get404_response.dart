//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_user_id_get404_response.g.dart';

/// V1UserIdGet404Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class V1UserIdGet404Response
    implements Built<V1UserIdGet404Response, V1UserIdGet404ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  V1UserIdGet404Response._();

  factory V1UserIdGet404Response(
          [void updates(V1UserIdGet404ResponseBuilder b)]) =
      _$V1UserIdGet404Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1UserIdGet404ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1UserIdGet404Response> get serializer =>
      _$V1UserIdGet404ResponseSerializer();
}

class _$V1UserIdGet404ResponseSerializer
    implements PrimitiveSerializer<V1UserIdGet404Response> {
  @override
  final Iterable<Type> types = const [
    V1UserIdGet404Response,
    _$V1UserIdGet404Response
  ];

  @override
  final String wireName = r'V1UserIdGet404Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1UserIdGet404Response object, {
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
    V1UserIdGet404Response object, {
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
    required V1UserIdGet404ResponseBuilder result,
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
  V1UserIdGet404Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1UserIdGet404ResponseBuilder();
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
