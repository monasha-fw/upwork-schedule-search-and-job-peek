part of 'job_cubit.dart';

@freezed
class JobState with _$JobState {
  const factory JobState.initial() = _Initial;
  const factory JobState.success(Job job) = JobSuccess;
}
