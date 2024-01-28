import 'package:flutter/material.dart';
import 'package:schedule_search_and_job_peek/presentation/common/models/index.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({required this.activeIndex, super.key, required this.onSelected});

  final int activeIndex;
  final ValueChanged<int> onSelected;

  static const List<BottomNavDestination> allDestinations = <BottomNavDestination>[
    BottomNavDestination(0, Icons.calendar_month, title: 'Schedule'),
    BottomNavDestination(1, Icons.edit_document, title: 'Reports'),
    BottomNavDestination(2, Icons.currency_pound, title: 'Proposals'),
    BottomNavDestination(3, Icons.person, title: 'Profile'),
    BottomNavDestination(4, Icons.add),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      // indicatorColor: Colors.amber,
      selectedIndex: activeIndex,
      onDestinationSelected: onSelected,
      destinations: allDestinations.map((destination) {
        if (destination.title == null) {
          return Center(
            child: FloatingActionButton(
              onPressed: () {
                // TODO
              },
              child: Icon(destination.icon),
            ),
          );
        }
        return NavigationDestination(
          icon: Icon(destination.icon),
          label: destination.title!,
        );
      }).toList(),
    );
  }
}
