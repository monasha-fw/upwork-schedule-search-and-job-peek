import 'package:injectable/injectable.dart';
import 'package:schedule_search_and_job_peek/infrastructure/storage/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: ICacheStorage)
class SharedPreferencesImpl implements ICacheStorage {
  final SharedPreferences _prefs;

  const SharedPreferencesImpl(this._prefs);

  @override
  Future delete({required String key}) {
    return _prefs.remove(key);
  }

  @override
  Future<String?> read({required String key}) {
    return Future.value(_prefs.getString(key));
  }

  @override
  Future<void> upsert({required String key, required String data}) {
    return _prefs.setString(key, data);
  }
}
