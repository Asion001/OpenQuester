//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_auth_login_post400_response.g.dart';

/// V1AuthLoginPost400Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class V1AuthLoginPost400Response
    implements
        Built<V1AuthLoginPost400Response, V1AuthLoginPost400ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  V1AuthLoginPost400Response._();

  factory V1AuthLoginPost400Response(
          [void updates(V1AuthLoginPost400ResponseBuilder b)]) =
      _$V1AuthLoginPost400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AuthLoginPost400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AuthLoginPost400Response> get serializer =>
      _$V1AuthLoginPost400ResponseSerializer();
}

class _$V1AuthLoginPost400ResponseSerializer
    implements PrimitiveSerializer<V1AuthLoginPost400Response> {
  @override
  final Iterable<Type> types = const [
    V1AuthLoginPost400Response,
    _$V1AuthLoginPost400Response
  ];

  @override
  final String wireName = r'V1AuthLoginPost400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AuthLoginPost400Response object, {
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
    V1AuthLoginPost400Response object, {
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
    required V1AuthLoginPost400ResponseBuilder result,
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
  V1AuthLoginPost400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AuthLoginPost400ResponseBuilder();
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
