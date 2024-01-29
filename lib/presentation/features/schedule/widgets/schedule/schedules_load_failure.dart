import 'package:flutter/material.dart';
import 'package:schedule_search_and_job_peek/presentation/common/widgets/index.dart';
import 'package:schedule_search_and_job_peek/presentation/constants/index.dart';
import 'package:schedule_search_and_job_peek/presentation/extensions/index.dart';

class SchedulesLoadFailure extends StatelessWidget {
  const SchedulesLoadFailure({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSvgImage(
          svgErrorSchedules,
          width: context.w * 0.7,
          height: context.w * 0.7,
        ),
        HSB(12.h),
        SizedBox(
          width: context.w * 0.5,
          child: Text(
            'Error occurred, Please try again',
            style: context.textTheme.headlineLarge?.copyWith(color: context.colorScheme.error),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
