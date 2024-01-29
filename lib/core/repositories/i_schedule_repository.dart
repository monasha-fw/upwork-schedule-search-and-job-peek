import 'package:fpdart/fpdart.dart';
import 'package:schedule_search_and_job_peek/core/dtos/schedule/get_jobs_for_date_dto.dart';
import 'package:schedule_search_and_job_peek/core/entities/job/job.dart';
import 'package:schedule_search_and_job_peek/core/errors/failures.dart';

abstract class IScheduleRepository {
  /// Get List of jobs for the given [date]
  /// [search], [offset] and [limit] are optional
  Future<Either<Failure, List<Job>>> getJobsForDate(GetJobsForDateDto dto);
}
