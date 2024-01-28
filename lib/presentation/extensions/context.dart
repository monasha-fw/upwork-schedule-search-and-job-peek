import 'package:flutter/material.dart';

extension BC on BuildContext {
  /// Builtin getters
  /// [Size]
  double get w => MediaQuery.of(this).size.width;

  double get h => MediaQuery.of(this).size.height;

  /// [MediaQuery]
  MediaQueryData get mq => MediaQuery.of(this);

  RenderBox? get renderBox => findRenderObject() != null ? findRenderObject() as RenderBox : null;

  EdgeInsets get padding => MediaQuery.of(this).padding;

  /// [ScaffoldMessenger]
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);

  /// [Theme]
  ThemeData get theme => Theme.of(this);

  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  TextButtonThemeData get textButtonTheme => Theme.of(this).textButtonTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
