import 'package:flutter/material.dart';
import 'package:schedule_search_and_job_peek/core/entities/index.dart';
import 'package:schedule_search_and_job_peek/presentation/extensions/index.dart';
import 'package:schedule_search_and_job_peek/presentation/features/job/widgets/index.dart';

class JobPeekBottomSheet extends StatelessWidget {
  const JobPeekBottomSheet(this.job, {super.key});

  final Job job;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: context.colorScheme.secondary,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          ),
          width: double.infinity,
          child: Center(
            child: Text(
              'Job Peek',
              style: context.textTheme.headlineLarge,
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(height: context.h * 0.2, child: const JobPeekMap()),
            JobPeekInfo(job),
            JobPeekActions(job),
          ],
        ),
      ],
    );
  }
}
