import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:schedule_search_and_job_peek/infrastructure/constants/index.dart';
import 'package:schedule_search_and_job_peek/infrastructure/extensions/index.dart';

part 'schedule_datasource.mock.freezed.dart';
part 'schedule_datasource.mock.g.dart';

void scheduleMock(DioAdapter dioAdapter) {
  /// Login
  /// Success - 200
  dioAdapter
    ..onGet(
      getJobsForDateUrl,
      queryParameters: {'date': DateTime.now().startOfDay.toString()},
      (server) => server.reply(
        200,
        jobsForDate(DateTime.now().startOfDay!),
        delay: const Duration(milliseconds: 300),
      ),
    )

    /// Fail - 401
    ..onGet(
      getJobsForDateUrl,
      queryParameters: {
        'date': DateTime.now().startOfDay?.subtract(const Duration(days: 1)).toString()
      },
      (server) => server.reply(
        400,
        {'error': 'Something went wrong'},
        delay: const Duration(milliseconds: 300),
      ),
    );
}

List<Map<String, dynamic>> jobsForDate(DateTime date) =>
    allJobs.where((j) => DateTime.tryParse(j['startTime'])?.eqvDay(date) == true).toList();

final allJobs = <Map<String, dynamic>>[
  JobServerModel(
    id: '1',
    service: 'service1',
    jobName: 'job1',
    jobAddress: 'address1',
    jobPostalCode: '11111111',
    startTime: DateTime.now(),
    endTime: DateTime.now(),
    description: 'description1',
  ).toJson(),
  JobServerModel(
    id: '2',
    service: 'service2',
    jobName: 'job2',
    jobAddress: 'address2',
    jobPostalCode: '12121212',
    startTime: DateTime.now(),
    endTime: DateTime.now(),
    description: 'description2',
  ).toJson(),
  JobServerModel(
    id: '3',
    service: 'service3',
    jobName: 'job3',
    jobAddress: 'address3',
    jobPostalCode: '123123123',
    startTime: DateTime.now().add(const Duration(days: 1)),
    endTime: DateTime.now(),
    description: 'description3',
  ).toJson(),
];

@freezed
class JobServerModel with _$JobServerModel {
  const JobServerModel._();

  const factory JobServerModel({
    required String id,
    required String service,
    required String jobName,
    required String jobAddress,
    required String jobPostalCode,
    required DateTime startTime,
    required DateTime endTime,
    required String? description,
  }) = _JobServerModel;

  factory JobServerModel.fromJson(Map<String, dynamic> json) => _$JobServerModelFromJson(json);
}
