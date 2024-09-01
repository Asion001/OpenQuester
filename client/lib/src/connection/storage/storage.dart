import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class Storage {
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
  Future<void> put(String key, String value) async {
    final prefs = await this.prefs;
    await prefs.setString(key, value);
  }

  Future<Object?> get(String key) async {
    final prefs = await this.prefs;
    return prefs.get(key);
  }

  Future<void> rm(String key) async {
    final prefs = await this.prefs;
    await prefs.remove(key);
    return;
  }
}
