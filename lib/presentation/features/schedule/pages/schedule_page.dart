import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_search_and_job_peek/injection.dart';
import 'package:schedule_search_and_job_peek/presentation/features/schedule/bloc/index.dart';
import 'package:schedule_search_and_job_peek/presentation/features/schedule/containers/index.dart';

@RoutePage()
class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ScheduleActionsCubit>(
          create: (context) => getIt<ScheduleActionsCubit>()..getData(),
          lazy: false,
        ),
        BlocProvider<ScheduleCubit>(create: (context) => getIt<ScheduleCubit>()),
      ],
      child: Builder(builder: (context) {
        return BlocListener<ScheduleActionsCubit, ScheduleActionsState>(
          listener: (context, state) {
            // set Jobs on success
            if (state is ScheduleActionsSuccess) {
              context.read<ScheduleCubit>().setJobsForDate(state.jobs);
            } else if (state is ScheduleActionsFailure) {
              // clear data on failure
              context.read<ScheduleCubit>().setJobsForDate([]);
            }
          },
          child: const ScheduleContainer(),
        );
      }),
    );
  }
}
