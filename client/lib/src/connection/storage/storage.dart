import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(order: 0)
class Storage {
  Future<SharedPreferences> get _prefs => SharedPreferences.getInstance();
  Future<void> put(String key, String value) async {
    final prefs = await _prefs;
    await prefs.setString(key, value);
  }

  Future<Object?> get(String key) async {
    final prefs = await _prefs;
    return prefs.get(key);
  }

  Future<void> rm(String key) async {
    final prefs = await _prefs;
    await prefs.remove(key);
    return;
  }
}
