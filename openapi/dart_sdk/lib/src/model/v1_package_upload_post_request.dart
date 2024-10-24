//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/oq_content_structure.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_package_upload_post_request.g.dart';

/// V1PackageUploadPostRequest
///
/// Properties:
/// * [content]
@BuiltValue()
abstract class V1PackageUploadPostRequest
    implements
        Built<V1PackageUploadPostRequest, V1PackageUploadPostRequestBuilder> {
  @BuiltValueField(wireName: r'content')
  OQContentStructure get content;

  V1PackageUploadPostRequest._();

  factory V1PackageUploadPostRequest(
          [void updates(V1PackageUploadPostRequestBuilder b)]) =
      _$V1PackageUploadPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1PackageUploadPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1PackageUploadPostRequest> get serializer =>
      _$V1PackageUploadPostRequestSerializer();
}

class _$V1PackageUploadPostRequestSerializer
    implements PrimitiveSerializer<V1PackageUploadPostRequest> {
  @override
  final Iterable<Type> types = const [
    V1PackageUploadPostRequest,
    _$V1PackageUploadPostRequest
  ];

  @override
  final String wireName = r'V1PackageUploadPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1PackageUploadPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(OQContentStructure),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1PackageUploadPostRequest object, {
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
    required V1PackageUploadPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OQContentStructure),
          ) as OQContentStructure;
          result.content.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1PackageUploadPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1PackageUploadPostRequestBuilder();
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
