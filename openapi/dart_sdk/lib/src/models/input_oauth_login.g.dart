// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_oauth_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputOauthLoginImpl _$$InputOauthLoginImplFromJson(
        Map<String, dynamic> json) =>
    _$InputOauthLoginImpl(
      token: json['token'] as String,
      tokenSchema: json['tokenSchema'] as String?,
      oauthProvider: InputOauthLoginOauthProvider.fromJson(
          json['oauthProvider'] as String),
    );

Map<String, dynamic> _$$InputOauthLoginImplToJson(
        _$InputOauthLoginImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'tokenSchema': instance.tokenSchema,
      'oauthProvider': instance.oauthProvider,
    };
