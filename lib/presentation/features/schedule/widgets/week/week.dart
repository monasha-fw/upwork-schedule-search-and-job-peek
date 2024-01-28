import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:schedule_search_and_job_peek/presentation/extensions/index.dart';

class WeekView extends StatelessWidget {
  const WeekView({required this.selectedDate, required this.days, super.key});

  final DateTime selectedDate;
  final List<DateTime> days;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: days
          .map(
            (d) => Column(
              children: [
                Text(
                  DateFormat('EEE').format(d),
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.colorScheme.secondary,
                  ),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: selectedDate.isAtSameMomentAs(d)
                      ? context.colorScheme.secondary
                      : Colors.transparent,
                  child: Text(
                    DateFormat('d').format(d),
                    style: TextStyle(
                      color: selectedDate.isAtSameMomentAs(d)
                          ? context.colorScheme.onSecondary
                          : context.colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
