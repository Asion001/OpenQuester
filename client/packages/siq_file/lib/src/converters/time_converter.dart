import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String value) {
    final parts = value.split('.').map(int.parse).toList();
    return DateTime(parts[2], parts[1], parts[0]);
  }

  @override
  String toJson(DateTime object) => object.toIso8601String();
}
