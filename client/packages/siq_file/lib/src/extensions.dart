import 'package:archive/archive_io.dart';

extension MapExtension on Map<String, dynamic> {
  void renameKey(String from, String to) {
    final value = remove(from);
    this[to] = value;
  }
}

extension ListExtension<T> on List<T> {
  List<T> get modifiable => [...this];
}

extension StringX on String? {
  String? get nullOnEmpty => (this?.trim()).isEmptyOrNull ? null : this;

  bool get isEmptyOrNull =>
      this == null ||
      (this != null && this!.isEmpty) ||
      (this != null && this! == 'null');
}

extension ArchiveFileX on ArchiveFile {
  String get path => Uri.decodeFull(name);
}
