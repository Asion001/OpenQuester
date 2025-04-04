extension MapExtension on Map<String, dynamic> {
  void renameKey(String from, String to) {
    final value = remove(from);
    this[to] = value;
  }
}

extension ListExtension<T> on List<T> {
  List<T> get modifiable => [...this];
}
