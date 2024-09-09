//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_user_id_get400_response.g.dart';

/// V1UserIdGet400Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class V1UserIdGet400Response
    implements Built<V1UserIdGet400Response, V1UserIdGet400ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  V1UserIdGet400Response._();

  factory V1UserIdGet400Response(
          [void updates(V1UserIdGet400ResponseBuilder b)]) =
      _$V1UserIdGet400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1UserIdGet400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1UserIdGet400Response> get serializer =>
      _$V1UserIdGet400ResponseSerializer();
}

class _$V1UserIdGet400ResponseSerializer
    implements PrimitiveSerializer<V1UserIdGet400Response> {
  @override
  final Iterable<Type> types = const [
    V1UserIdGet400Response,
    _$V1UserIdGet400Response
  ];

  @override
  final String wireName = r'V1UserIdGet400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1UserIdGet400Response object, {
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
    V1UserIdGet400Response object, {
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
    required V1UserIdGet400ResponseBuilder result,
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
  V1UserIdGet400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1UserIdGet400ResponseBuilder();
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
