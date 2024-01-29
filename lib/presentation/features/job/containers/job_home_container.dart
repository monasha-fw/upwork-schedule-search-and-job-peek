import 'package:flutter/material.dart';
import 'package:schedule_search_and_job_peek/presentation/common/widgets/index.dart';
import 'package:schedule_search_and_job_peek/presentation/features/job/widgets/index.dart';

class JobHomeContainer extends StatelessWidget {
  const JobHomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PageAppBar(
        title: 'Job Home',
        subTitle: '123456',
      ),
      floatingActionButton: JobHomeFab(),
    );
  }
}
