part of 'schedule_cubit.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState({
    required DateTime selectedDate,
    required List<Job> jobs,
  }) = _ScheduleState;

  factory ScheduleState.initial() => ScheduleState(
        selectedDate: DateTime.now(),
        jobs: [],
      );
}
