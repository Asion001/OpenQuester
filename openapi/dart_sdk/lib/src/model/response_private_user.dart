//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/response_private_user_permissions_inner.dart';
import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_private_user.g.dart';

/// ResponsePrivateUser
///
/// Properties:
/// * [id]
/// * [name]
/// * [email]
/// * [birthday]
/// * [avatar]
/// * [createdAt]
/// * [updatedAt]
/// * [isDeleted]
/// * [permissions]
@BuiltValue()
abstract class ResponsePrivateUser
    implements Built<ResponsePrivateUser, ResponsePrivateUserBuilder> {
  @BuiltValueField(wireName: r'id')
  num? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'birthday')
  Date? get birthday;

  @BuiltValueField(wireName: r'avatar')
  Uint8List? get avatar;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'is_deleted')
  bool? get isDeleted;

  @BuiltValueField(wireName: r'permissions')
  BuiltList<ResponsePrivateUserPermissionsInner>? get permissions;

  ResponsePrivateUser._();

  factory ResponsePrivateUser([void updates(ResponsePrivateUserBuilder b)]) =
      _$ResponsePrivateUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResponsePrivateUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResponsePrivateUser> get serializer =>
      _$ResponsePrivateUserSerializer();
}

class _$ResponsePrivateUserSerializer
    implements PrimitiveSerializer<ResponsePrivateUser> {
  @override
  final Iterable<Type> types = const [
    ResponsePrivateUser,
    _$ResponsePrivateUser
  ];

  @override
  final String wireName = r'ResponsePrivateUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResponsePrivateUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(num),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.birthday != null) {
      yield r'birthday';
      yield serializers.serialize(
        object.birthday,
        specifiedType: const FullType(Date),
      );
    }
    if (object.avatar != null) {
      yield r'avatar';
      yield serializers.serialize(
        object.avatar,
        specifiedType: const FullType(Uint8List),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.isDeleted != null) {
      yield r'is_deleted';
      yield serializers.serialize(
        object.isDeleted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType(
            BuiltList, [FullType(ResponsePrivateUserPermissionsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResponsePrivateUser object, {
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
    required ResponsePrivateUserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'birthday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.birthday = valueDes;
          break;
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Uint8List),
          ) as Uint8List;
          result.avatar = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'is_deleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDeleted = valueDes;
          break;
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ResponsePrivateUserPermissionsInner)]),
          ) as BuiltList<ResponsePrivateUserPermissionsInner>;
          result.permissions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResponsePrivateUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResponsePrivateUserBuilder();
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
