//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_user.g.dart';

/// LoginUser
///
/// Properties:
/// * [login]
/// * [password]
@BuiltValue()
abstract class LoginUser implements Built<LoginUser, LoginUserBuilder> {
  @BuiltValueField(wireName: r'login')
  String get login;

  @BuiltValueField(wireName: r'password')
  String get password;

  LoginUser._();

  factory LoginUser([void updates(LoginUserBuilder b)]) = _$LoginUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginUser> get serializer => _$LoginUserSerializer();
}

class _$LoginUserSerializer implements PrimitiveSerializer<LoginUser> {
  @override
  final Iterable<Type> types = const [LoginUser, _$LoginUser];

  @override
  final String wireName = r'LoginUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'login';
    yield serializers.serialize(
      object.login,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginUser object, {
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
    required LoginUserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'login':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.login = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoginUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginUserBuilder();
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
