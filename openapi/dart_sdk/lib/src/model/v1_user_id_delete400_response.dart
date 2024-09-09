//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_user_id_delete400_response.g.dart';

/// V1UserIdDelete400Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class V1UserIdDelete400Response
    implements
        Built<V1UserIdDelete400Response, V1UserIdDelete400ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  V1UserIdDelete400Response._();

  factory V1UserIdDelete400Response(
          [void updates(V1UserIdDelete400ResponseBuilder b)]) =
      _$V1UserIdDelete400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1UserIdDelete400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1UserIdDelete400Response> get serializer =>
      _$V1UserIdDelete400ResponseSerializer();
}

class _$V1UserIdDelete400ResponseSerializer
    implements PrimitiveSerializer<V1UserIdDelete400Response> {
  @override
  final Iterable<Type> types = const [
    V1UserIdDelete400Response,
    _$V1UserIdDelete400Response
  ];

  @override
  final String wireName = r'V1UserIdDelete400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1UserIdDelete400Response object, {
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
    V1UserIdDelete400Response object, {
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
    required V1UserIdDelete400ResponseBuilder result,
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
  V1UserIdDelete400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1UserIdDelete400ResponseBuilder();
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
