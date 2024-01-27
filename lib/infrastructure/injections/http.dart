import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:injectable/injectable.dart';
import 'package:schedule_search_and_job_peek/infrastructure/constants/index.dart';

@module
abstract class HttpExternalLibraryInjectableModule {
  @lazySingleton
  Dio get dio {
    return Dio(
      BaseOptions(
        baseUrl: httpBaseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
  }

  @lazySingleton
  DioAdapter get dioAdapter => DioAdapter(dio: dio);
}
