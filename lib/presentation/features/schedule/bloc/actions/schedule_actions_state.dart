part of 'schedule_actions_cubit.dart';

@freezed
class ScheduleActionsState with _$ScheduleActionsState {
  const factory ScheduleActionsState.initial() = _Initial;

  const factory ScheduleActionsState.processing() = ScheduleActionsProcessing;

  const factory ScheduleActionsState.success(List<Job> jobs) = ScheduleActionsSuccess;

  const factory ScheduleActionsState.failure(String error) = ScheduleActionsFailure;
}
