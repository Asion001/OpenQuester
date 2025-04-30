// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_oauth_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InputOauthLogin _$InputOauthLoginFromJson(Map<String, dynamic> json) =>
    _InputOauthLogin(
      token: json['token'] as String,
      tokenSchema: json['tokenSchema'] as String?,
      oauthProvider: InputOauthLoginOauthProvider.fromJson(
          json['oauthProvider'] as String),
    );

Map<String, dynamic> _$InputOauthLoginToJson(_InputOauthLogin instance) =>
    <String, dynamic>{
      'token': instance.token,
      'tokenSchema': instance.tokenSchema,
      'oauthProvider': instance.oauthProvider,
    };
