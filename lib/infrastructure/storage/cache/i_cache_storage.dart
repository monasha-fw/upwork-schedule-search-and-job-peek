abstract class ICacheStorage {
  Future<void> upsert({required String key, required String data});

  Future<String?> read({required String key});

  Future delete({required String key});
}
