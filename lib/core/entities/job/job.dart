import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_search_and_job_peek/core/entities/index.dart';

part 'job.freezed.dart';

@freezed
class Job with _$Job {
  const factory Job({
    required String id,
    required String service,
    required JobLocation location,
    required DateTime startTime,
    required DateTime endTime,
    required String? description,
  }) = _Job;
}
