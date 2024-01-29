import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_search_and_job_peek/core/dtos/index.dart';

part 'get_jobs_for_date_dto.freezed.dart';

@freezed
class GetJobsForDateDto with _$GetJobsForDateDto {
  const factory GetJobsForDateDto({
    required DateTime date,
    GetParamsDto? params,
  }) = _GetJobsForDateDto;
}
