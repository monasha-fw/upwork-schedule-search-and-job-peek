import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_search_and_job_peek/presentation/features/schedule/bloc/schedule_cubit.dart';
import 'package:schedule_search_and_job_peek/presentation/features/schedule/widgets/index.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ScheduleContainer extends StatelessWidget {
  const ScheduleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverPinnedHeader(child: ScheduleHeader()),
        BlocBuilder<ScheduleCubit, ScheduleState>(
          builder: (context, state) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => JobCard(state.jobs[index]),
                childCount: state.jobs.length,
              ),
            );
          },
        )
      ],
    );
  }
}
