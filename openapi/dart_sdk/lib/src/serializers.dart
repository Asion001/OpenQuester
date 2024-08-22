//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/auth_data.dart';
import 'package:openapi/src/model/login_user.dart';
import 'package:openapi/src/model/private_user.dart';
import 'package:openapi/src/model/private_user_permissions_inner.dart';
import 'package:openapi/src/model/register_user.dart';
import 'package:openapi/src/model/update_user.dart';
import 'package:openapi/src/model/v1_auth_refresh_post_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  AuthData,
  LoginUser,
  PrivateUser,
  PrivateUserPermissionsInner,
  RegisterUser,
  UpdateUser,
  V1AuthRefreshPostRequest,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PrivateUser)]),
        () => ListBuilder<PrivateUser>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
