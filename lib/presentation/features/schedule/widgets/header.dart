import 'package:flutter/material.dart';
import 'package:schedule_search_and_job_peek/presentation/extensions/index.dart';
import 'package:schedule_search_and_job_peek/presentation/features/schedule/widgets/index.dart';

class ScheduleHeader extends StatefulWidget {
  const ScheduleHeader({super.key});

  @override
  State<ScheduleHeader> createState() => _ScheduleHeaderState();
}

class _ScheduleHeaderState extends State<ScheduleHeader> {
  List<DateTime> visibleDays = <DateTime>[];
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();

    selectedDate = DateTime.now();

    _getTheVisibleDays(selectedDate);
  }

  void _getTheVisibleDays(DateTime date) {
    final dates = <DateTime>[];
    final monday = selectedDate.subtract(Duration(days: selectedDate.weekday - 1));
    for (var i = 0; i < 7; i++) {
      dates.add(monday.add(Duration(days: i)));
    }

    setState(() => visibleDays = dates);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'November 2023',
                style: context.textTheme.titleMedium?.copyWith(
                  color: context.colorScheme.secondary,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () async {
                      final picked = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101),
                      );
                      if (picked != null && picked != selectedDate) {
                        setState(() => selectedDate = picked);
                        _getTheVisibleDays(picked);
                      }
                    },
                    icon: const Icon(Icons.calendar_month),
                  ),
                  IconButton(
                    onPressed: () {
                      // TODO
                    },
                    icon: const Icon(Icons.chevron_left),
                  ),
                  IconButton(
                    onPressed: () {
                      // TODO
                    },
                    icon: const Icon(Icons.chevron_right),
                  )
                ],
              )
            ],
          ),

          // Calender view for the selected week
          WeekView(selectedDate: selectedDate, days: visibleDays),
        ],
      ),
    );
  }
}
