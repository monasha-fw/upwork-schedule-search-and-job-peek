import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:schedule_search_and_job_peek/core/dtos/index.dart';
import 'package:schedule_search_and_job_peek/core/entities/index.dart';
import 'package:schedule_search_and_job_peek/core/errors/failures.dart';
import 'package:schedule_search_and_job_peek/core/repositories/index.dart';
import 'package:schedule_search_and_job_peek/core/usecases/usecase.dart';

@singleton
class GetJobsForDate implements Usecase<List<Job>, GetJobsForDateDto> {
  final IScheduleRepository _repository;

  const GetJobsForDate(this._repository);

  @override
  Future<Either<Failure, List<Job>>> call(GetJobsForDateDto dto) {
    return _repository.getJobsForDate(dto);
  }
}
