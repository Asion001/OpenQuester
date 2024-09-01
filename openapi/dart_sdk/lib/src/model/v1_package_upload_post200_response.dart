//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_package_upload_post200_response.g.dart';

/// V1PackageUploadPost200Response
///
/// Properties:
/// * [content]
@BuiltValue()
abstract class V1PackageUploadPost200Response
    implements
        Built<V1PackageUploadPost200Response,
            V1PackageUploadPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'content')
  JsonObject? get content;

  V1PackageUploadPost200Response._();

  factory V1PackageUploadPost200Response(
          [void updates(V1PackageUploadPost200ResponseBuilder b)]) =
      _$V1PackageUploadPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1PackageUploadPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1PackageUploadPost200Response> get serializer =>
      _$V1PackageUploadPost200ResponseSerializer();
}

class _$V1PackageUploadPost200ResponseSerializer
    implements PrimitiveSerializer<V1PackageUploadPost200Response> {
  @override
  final Iterable<Type> types = const [
    V1PackageUploadPost200Response,
    _$V1PackageUploadPost200Response
  ];

  @override
  final String wireName = r'V1PackageUploadPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1PackageUploadPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1PackageUploadPost200Response object, {
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
    required V1PackageUploadPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.content = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1PackageUploadPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1PackageUploadPost200ResponseBuilder();
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
