//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_file_delete204_response.g.dart';

/// V1FileDelete204Response
///
/// Properties:
/// * [message]
@BuiltValue()
abstract class V1FileDelete204Response
    implements Built<V1FileDelete204Response, V1FileDelete204ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  V1FileDelete204Response._();

  factory V1FileDelete204Response(
          [void updates(V1FileDelete204ResponseBuilder b)]) =
      _$V1FileDelete204Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1FileDelete204ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1FileDelete204Response> get serializer =>
      _$V1FileDelete204ResponseSerializer();
}

class _$V1FileDelete204ResponseSerializer
    implements PrimitiveSerializer<V1FileDelete204Response> {
  @override
  final Iterable<Type> types = const [
    V1FileDelete204Response,
    _$V1FileDelete204Response
  ];

  @override
  final String wireName = r'V1FileDelete204Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1FileDelete204Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1FileDelete204Response object, {
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
    required V1FileDelete204ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1FileDelete204Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1FileDelete204ResponseBuilder();
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
