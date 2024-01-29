import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_search_and_job_peek/core/entities/index.dart';
import 'package:schedule_search_and_job_peek/injection.dart';
import 'package:schedule_search_and_job_peek/presentation/features/job/bloc/index.dart';
import 'package:schedule_search_and_job_peek/presentation/features/job/containers/index.dart';

@RoutePage()
class JobHomePage extends StatelessWidget {
  const JobHomePage({required this.job, super.key});
  final Job job;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<JobCubit>(
      create: (context) => getIt<JobCubit>()..setJob(job),
      child: const JobHomeContainer(),
    );
  }
}
