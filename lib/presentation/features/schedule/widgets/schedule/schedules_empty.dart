import 'package:flutter/material.dart';
import 'package:schedule_search_and_job_peek/presentation/common/widgets/index.dart';
import 'package:schedule_search_and_job_peek/presentation/constants/index.dart';
import 'package:schedule_search_and_job_peek/presentation/extensions/index.dart';

class ScheduleEmpty extends StatelessWidget {
  const ScheduleEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSvgImage(
          svgEmptySchedules,
          width: context.w * 0.7,
          height: context.w * 0.7,
        ),
        HSB(12.h),
        SizedBox(
          width: context.w * 0.5,
          child: Text(
            "Nothing Scheduled, Let's get planning",
            style: context.textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
