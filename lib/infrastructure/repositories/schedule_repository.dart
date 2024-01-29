import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:schedule_search_and_job_peek/core/dtos/schedule/get_jobs_for_date_dto.dart';
import 'package:schedule_search_and_job_peek/core/entities/index.dart';
import 'package:schedule_search_and_job_peek/core/errors/index.dart';
import 'package:schedule_search_and_job_peek/core/repositories/index.dart';
import 'package:schedule_search_and_job_peek/infrastructure/datasources/index.dart';

@Singleton(as: IScheduleRepository)
class ScheduleRepository implements IScheduleRepository {
  final ScheduleRemoteDataSource _remote;

  const ScheduleRepository(this._remote);

  @override
  Future<Either<Failure, List<Job>>> getJobsForDate(GetJobsForDateDto dto) {
    return _remote.getJobsForDate(dto);
  }
}
