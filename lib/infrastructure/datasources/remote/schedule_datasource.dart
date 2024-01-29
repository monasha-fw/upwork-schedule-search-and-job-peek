import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:schedule_search_and_job_peek/core/dtos/index.dart';
import 'package:schedule_search_and_job_peek/core/entities/index.dart';
import 'package:schedule_search_and_job_peek/core/errors/index.dart';
import 'package:schedule_search_and_job_peek/infrastructure/constants/index.dart';
import 'package:schedule_search_and_job_peek/infrastructure/errors/index.dart';
import 'package:schedule_search_and_job_peek/infrastructure/models/index.dart';
import 'package:schedule_search_and_job_peek/infrastructure/network/index.dart';

abstract class ScheduleRemoteDataSource {
  /// Get List of jobs for the given [date]
  /// [search], [offset] and [limit] are optional
  Future<Either<Failure, List<Job>>> getJobsForDate(GetJobsForDateDto dto);
}

@Singleton(as: ScheduleRemoteDataSource)
class ScheduleRemoteDataSourceImpl implements ScheduleRemoteDataSource {
  final IHttpClient _client;

  const ScheduleRemoteDataSourceImpl(this._client);

  @override
  Future<Either<Failure, List<Job>>> getJobsForDate(GetJobsForDateDto dto) async {
    try {
      // TODO: final params = GetJobsForDateModelDto.fromDomain(dto).toJson();
      final params = {'date': dto.date};

      final res = await _client.get(getJobsForDateUrl, queryParameters: params);

      final listJson = List<Map<String, dynamic>>.from(res.data as List<dynamic>);
      final data = List<Job>.from(listJson.map((c) => JobModel.fromJson(c).toDomain()));

      return Right(data);
    } catch (e) {
      return Left(InfraExceptions.exceptionToFailure(e));
    }
  }
}
