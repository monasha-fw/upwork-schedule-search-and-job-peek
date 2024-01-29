part of 'schedule_cubit.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState({
    required DateTime selectedDate,
    required List<Job> jobs,
  }) = _ScheduleState;

  factory ScheduleState.initial() => ScheduleState(
        selectedDate: DateTime.now(),
        jobs: [
          Job(
            id: '3',
            startTime: DateTime.now(),
            endTime: DateTime.now().add(const Duration(hours: 3)),
            service: 'Test Service',
            location: const JobLocation(
              name: 'Test Location',
              address: 'Test Address',
              postalCode: '123456',
            ),
            description: 'Test Description',
          ),
        ],
      );
}
