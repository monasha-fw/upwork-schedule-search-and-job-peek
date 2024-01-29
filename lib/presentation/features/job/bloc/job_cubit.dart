import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:schedule_search_and_job_peek/core/entities/job/job.dart';

part 'job_cubit.freezed.dart';
part 'job_state.dart';

@injectable
class JobCubit extends Cubit<JobState> {
  JobCubit() : super(const JobState.initial());

  // set the selected job
  void setJob(Job job) => emit(JobSuccess(job));
}
