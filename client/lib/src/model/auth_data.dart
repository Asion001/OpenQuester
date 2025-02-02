import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openquester/common_imports.dart';

part 'auth_data.freezed.dart';
part 'auth_data.g.dart';

@freezed
class AuthData with _$AuthData {
  factory AuthData({
    required String accessToken,
    required String refreshToken,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);

  const AuthData._();

  factory AuthData.fromAuthData(ResponseAuthData data) {
    return AuthData(
      accessToken: data.accessToken,
      refreshToken: data.refreshToken,
    );
  }

  Map<String, dynamic>? tokenData() {
    if (accessToken.isEmptyOrNull) return null;

    final tokenData = accessToken.split('.')[1];
    final decodedBase = base64Decode(base64.normalize(tokenData));
    final data =
        jsonDecode(String.fromCharCodes(decodedBase)) as Map<String, dynamic>;

    return data;
  }

  int? userId() {
    try {
      final data = tokenData();
      final id = data?['id'];

      return id as int?;
    } catch (e) {
      return null;
    }
  }

  bool expired() {
    final data = tokenData();
    final expiredAt = data?['exp'].toString() ?? '';
    final expiredAtms = int.tryParse(expiredAt);
    if (expiredAtms == null) return true;

    final now = DateTime.now();
    final exp = DateTime.fromMillisecondsSinceEpoch(expiredAtms * 1000);
    final result = now.add(const Duration(minutes: 1)).isAfter(exp);
    return result;
  }
}
