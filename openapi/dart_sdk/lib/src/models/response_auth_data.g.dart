// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_auth_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseAuthDataImpl _$$ResponseAuthDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseAuthDataImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$ResponseAuthDataImplToJson(
        _$ResponseAuthDataImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
