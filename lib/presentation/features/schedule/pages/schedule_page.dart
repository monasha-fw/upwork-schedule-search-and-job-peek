import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_search_and_job_peek/injection.dart';
import 'package:schedule_search_and_job_peek/presentation/features/schedule/bloc/schedule_cubit.dart';
import 'package:schedule_search_and_job_peek/presentation/features/schedule/containers/index.dart';

@RoutePage()
class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ScheduleCubit>(
      create: (context) => getIt<ScheduleCubit>(),
      child: const ScheduleContainer(),
    );
  }
}
