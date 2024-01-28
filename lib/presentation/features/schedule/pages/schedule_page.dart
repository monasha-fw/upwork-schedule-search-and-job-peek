import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:schedule_search_and_job_peek/presentation/features/schedule/widgets/index.dart';

@RoutePage()
class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: ScheduleHeader()),
      ],
    );
  }
}
