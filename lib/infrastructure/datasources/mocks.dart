import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:schedule_search_and_job_peek/infrastructure/datasources/index.dart';

void mockData(DioAdapter dioAdapter) {
  scheduleMock(dioAdapter);
}
