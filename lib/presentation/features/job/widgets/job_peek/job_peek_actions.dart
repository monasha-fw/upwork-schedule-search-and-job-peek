import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:schedule_search_and_job_peek/core/entities/index.dart';
import 'package:schedule_search_and_job_peek/presentation/routing/router.gr.dart';

class JobPeekActions extends StatelessWidget {
  const JobPeekActions(this.job, {super.key});

  final Job job;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: const Text('Close'),
            onPressed: () => Navigator.pop(context),
          ),
          TextButton(
            child: const Text('Open'),
            onPressed: () => context.pushRoute(JobHomeRoute(job: job)),
          ),
        ],
      ),
    );
  }
}
