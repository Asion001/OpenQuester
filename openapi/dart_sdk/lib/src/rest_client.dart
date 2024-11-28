// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';

import 'clients/file_client.dart';
import 'clients/package_client.dart';
import 'clients/user_client.dart';
import 'clients/users_client.dart';
import 'clients/auth_client.dart';

/// OpenQuester API `v0.2.9`
class RestClient {
  RestClient(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '0.2.9';

  FileClient? _file;
  PackageClient? _package;
  UserClient? _user;
  UsersClient? _users;
  AuthClient? _auth;

  FileClient get file => _file ??= FileClient(_dio, baseUrl: _baseUrl);

  PackageClient get package => _package ??= PackageClient(_dio, baseUrl: _baseUrl);

  UserClient get user => _user ??= UserClient(_dio, baseUrl: _baseUrl);

  UsersClient get users => _users ??= UsersClient(_dio, baseUrl: _baseUrl);

  AuthClient get auth => _auth ??= AuthClient(_dio, baseUrl: _baseUrl);
}
