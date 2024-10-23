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

import 'package:openapi/src/model/input_login_user.dart';
import 'package:openapi/src/model/input_register_user.dart';
import 'package:openapi/src/model/input_update_user.dart';
import 'package:openapi/src/model/oq_answer_file.dart';
import 'package:openapi/src/model/oq_content_structure.dart';
import 'package:openapi/src/model/oq_file_content_structure.dart';
import 'package:openapi/src/model/oq_logo_file.dart';
import 'package:openapi/src/model/oq_metadata_structure.dart';
import 'package:openapi/src/model/oq_question_file.dart';
import 'package:openapi/src/model/oq_questions_structure.dart';
import 'package:openapi/src/model/oq_round_structure.dart';
import 'package:openapi/src/model/oq_theme_structure.dart';
import 'package:openapi/src/model/response_auth_data.dart';
import 'package:openapi/src/model/response_private_user.dart';
import 'package:openapi/src/model/response_private_user_permissions_inner.dart';
import 'package:openapi/src/model/v1_auth_login_post400_response.dart';
import 'package:openapi/src/model/v1_auth_refresh_post400_response.dart';
import 'package:openapi/src/model/v1_auth_refresh_post_request.dart';
import 'package:openapi/src/model/v1_auth_register_post400_response.dart';
import 'package:openapi/src/model/v1_file_delete204_response.dart';
import 'package:openapi/src/model/v1_file_get200_response.dart';
import 'package:openapi/src/model/v1_file_get400_response.dart';
import 'package:openapi/src/model/v1_file_get_request.dart';
import 'package:openapi/src/model/v1_file_post200_response.dart';
import 'package:openapi/src/model/v1_package_upload_post200_response.dart';
import 'package:openapi/src/model/v1_package_upload_post400_response.dart';
import 'package:openapi/src/model/v1_package_upload_post_request.dart';
import 'package:openapi/src/model/v1_user_id_delete400_response.dart';
import 'package:openapi/src/model/v1_user_id_get400_response.dart';
import 'package:openapi/src/model/v1_user_id_get404_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  InputLoginUser,
  InputRegisterUser,
  InputUpdateUser,
  OQAnswerFile,
  OQContentStructure,
  OQFileContentStructure,
  OQLogoFile,
  OQMetadataStructure,
  OQQuestionFile,
  OQQuestionsStructure,
  OQRoundStructure,
  OQThemeStructure,
  ResponseAuthData,
  ResponsePrivateUser,
  ResponsePrivateUserPermissionsInner,
  V1AuthLoginPost400Response,
  V1AuthRefreshPost400Response,
  V1AuthRefreshPostRequest,
  V1AuthRegisterPost400Response,
  V1FileDelete204Response,
  V1FileGet200Response,
  V1FileGet400Response,
  V1FileGetRequest,
  V1FilePost200Response,
  V1PackageUploadPost200Response,
  V1PackageUploadPost400Response,
  V1PackageUploadPostRequest,
  V1UserIdDelete400Response,
  V1UserIdGet400Response,
  V1UserIdGet404Response,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ResponsePrivateUser)]),
        () => ListBuilder<ResponsePrivateUser>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
