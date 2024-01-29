import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_search_and_job_peek/presentation/features/schedule/bloc/index.dart';
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
            if (context.read<ScheduleActionsCubit>().state is ScheduleActionsFailure) {
              return const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: SchedulesLoadFailure(),
                ),
              );
            }

            // when list is empty
            if (state.jobs.isEmpty) {
              return const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: ScheduleEmpty(),
                ),
              );
            }

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
