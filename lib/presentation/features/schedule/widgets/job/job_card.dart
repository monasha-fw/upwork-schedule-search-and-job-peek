import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:schedule_search_and_job_peek/core/entities/index.dart';
import 'package:schedule_search_and_job_peek/presentation/common/widgets/index.dart';
import 'package:schedule_search_and_job_peek/presentation/extensions/index.dart';
import 'package:schedule_search_and_job_peek/presentation/features/job/widgets/index.dart';

class JobCard extends StatelessWidget {
  const JobCard(this.job, {super.key});

  final Job job;

  void _openJobPeek(BuildContext context) {
    // open JobPeek bottom sheet
    showModalBottomSheet<void>(
      context: context,
      builder: (context) => JobPeekBottomSheet(job),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    job.service,
                    style: context.textTheme.headlineSmall,
                  ),
                  HSB(6.h),
                  Row(
                    children: [
                      Text(
                        job.location.name,
                        style: context.textTheme.headlineSmall,
                      ),
                      WSB(4.w),
                      Text(
                        ' | ',
                        style: context.textTheme.headlineSmall,
                      ),
                      WSB(4.w),
                      Text(
                        job.location.postalCode,
                        style: context.textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  HSB(6.h),
                  Text(
                    DateFormat.Hm().format(job.startTime),
                    style: context.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () => _openJobPeek(context),
                icon: Icon(
                  Icons.remove_red_eye,
                  color: context.colorScheme.secondaryContainer,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
