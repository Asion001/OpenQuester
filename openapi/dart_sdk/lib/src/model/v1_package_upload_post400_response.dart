//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_package_upload_post400_response.g.dart';

/// V1PackageUploadPost400Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class V1PackageUploadPost400Response
    implements
        Built<V1PackageUploadPost400Response,
            V1PackageUploadPost400ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  V1PackageUploadPost400Response._();

  factory V1PackageUploadPost400Response(
          [void updates(V1PackageUploadPost400ResponseBuilder b)]) =
      _$V1PackageUploadPost400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1PackageUploadPost400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1PackageUploadPost400Response> get serializer =>
      _$V1PackageUploadPost400ResponseSerializer();
}

class _$V1PackageUploadPost400ResponseSerializer
    implements PrimitiveSerializer<V1PackageUploadPost400Response> {
  @override
  final Iterable<Type> types = const [
    V1PackageUploadPost400Response,
    _$V1PackageUploadPost400Response
  ];

  @override
  final String wireName = r'V1PackageUploadPost400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1PackageUploadPost400Response object, {
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
    V1PackageUploadPost400Response object, {
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
    required V1PackageUploadPost400ResponseBuilder result,
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
  V1PackageUploadPost400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1PackageUploadPost400ResponseBuilder();
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
