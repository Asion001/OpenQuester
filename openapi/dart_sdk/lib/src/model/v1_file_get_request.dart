//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_file_get_request.g.dart';

/// V1FileGetRequest
///
/// Properties:
/// * [filename]
@BuiltValue()
abstract class V1FileGetRequest
    implements Built<V1FileGetRequest, V1FileGetRequestBuilder> {
  @BuiltValueField(wireName: r'filename')
  String? get filename;

  V1FileGetRequest._();

  factory V1FileGetRequest([void updates(V1FileGetRequestBuilder b)]) =
      _$V1FileGetRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1FileGetRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1FileGetRequest> get serializer =>
      _$V1FileGetRequestSerializer();
}

class _$V1FileGetRequestSerializer
    implements PrimitiveSerializer<V1FileGetRequest> {
  @override
  final Iterable<Type> types = const [V1FileGetRequest, _$V1FileGetRequest];

  @override
  final String wireName = r'V1FileGetRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1FileGetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.filename != null) {
      yield r'filename';
      yield serializers.serialize(
        object.filename,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1FileGetRequest object, {
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
    required V1FileGetRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'filename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filename = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1FileGetRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1FileGetRequestBuilder();
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
