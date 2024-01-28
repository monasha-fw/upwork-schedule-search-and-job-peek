import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:schedule_search_and_job_peek/presentation/common/widgets/index.dart';
import 'package:schedule_search_and_job_peek/presentation/features/home/widgets/index.dart';
import 'package:schedule_search_and_job_peek/presentation/features/schedule/pages/schedule_page.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: dynamic title
      appBar: const PageAppBar(
        title: 'Schedule',
      ),
      bottomNavigationBar: HomeNavBar(
        activeIndex: selectedIndex,
        onSelected: (i) {
          // only navigate if the selected index is a tab
          if (i != 4) setState(() => selectedIndex = i);
        },
      ),
      body: <Widget>[
        const SchedulePage(),
        const SchedulePage(),
        const SchedulePage(),
        const SchedulePage(),
      ][selectedIndex],
    );
  }
}
