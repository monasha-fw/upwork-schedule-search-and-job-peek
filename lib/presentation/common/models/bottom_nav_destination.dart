import 'package:flutter/material.dart';

/// Destination item in the bottom navigation bar
///
/// if the [title] is null, icon will be displayed as a full icon
class BottomNavDestination {
  const BottomNavDestination(this.index, this.icon, {this.title, this.color});
  final int index;
  final IconData icon;
  final String? title;
  final MaterialColor? color;
}
