import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:schedule_search_and_job_peek/core/dtos/index.dart';
import 'package:schedule_search_and_job_peek/core/entities/index.dart';
import 'package:schedule_search_and_job_peek/core/usecases/index.dart';
import 'package:schedule_search_and_job_peek/presentation/extensions/index.dart';

part 'schedule_actions_cubit.freezed.dart';
part 'schedule_actions_state.dart';

@injectable
class ScheduleActionsCubit extends Cubit<ScheduleActionsState> {
  final GetJobsForDate _getJobsForDate;

  ScheduleActionsCubit(this._getJobsForDate) : super(const ScheduleActionsState.initial());

  Future<void> getData({DateTime? date}) async {
    final dto = GetJobsForDateDto(date: date ?? DateTime.now());
    final either = await _getJobsForDate(dto);
    if (either.isLeft()) {
      final error = either.asL.message;
      addError(error);
      return emit(ScheduleActionsFailure(error));
    }

    return emit(ScheduleActionsSuccess(either.asR));
  }
}
