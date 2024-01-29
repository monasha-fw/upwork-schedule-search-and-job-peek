import 'package:flutter/material.dart';
import 'package:schedule_search_and_job_peek/presentation/extensions/index.dart';

part 'app_colors.dart';
part 'theme_sizes.dart';

/// AppTheme Colors
///
/// [Primary] - base color
/// [OnPrimary] - is applied to content (icons, text, etc.) that sits on top of primary
/// [PrimaryContainer] - is applied to elements needing less emphasis than primary
/// [OnPrimaryContainer] - is applied to content (icons, text, etc.) that sits on top of primary container
///
/// [Neutral] roles are used for surfaces and backgrounds, as well as high emphasis text and icons.
/// https://m3.material.io/styles/color/the-color-system/color-roles

ThemeData get lightTheme {
  return _lightThemeData;
}

ThemeData get darkTheme {
  return _darkThemeData;
}

/// text themes
final _h1 = TextStyle(
  fontSize: 36.sp,
  height: 1.25,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);
final _h2 = TextStyle(
  fontSize: 30.sp,
  height: 1.25,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);
final _h3 = TextStyle(
  fontSize: 22.sp,
  height: 1.25,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);
final _h4 = TextStyle(
  fontSize: 18.sp,
  height: 1.25,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);
final _p1r = TextStyle(
  fontSize: 16.sp,
  height: 1.5,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);
final _p1b = TextStyle(
  fontSize: 16.sp,
  height: 1.5,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);
final _l1 = TextStyle(
  fontSize: 16.sp,
  height: 1.25,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);
final _l2 = TextStyle(
  fontSize: 12.sp,
  height: 1.25,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);

/// Input decoration theme for,
/// TextField, TextFormField, DropDownMenu
final _inputDecorationTheme = InputDecorationTheme(
  fillColor: Colors.white,
  filled: true,
  isDense: true,
  contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
  labelStyle: const TextStyle(
    // color: kOnSurface,
    fontSize: 14,
  ),
  hintStyle: const TextStyle(
    // color: kOnSurface,
    fontSize: 12,
  ),
  // hintStyle: const TextStyle(color: kTextHint),
  border: OutlineInputBorder(
    // borderSide: const BorderSide(color: kOutline),
    borderRadius: BorderRadius.circular(4),
  ),
  enabledBorder: OutlineInputBorder(
    // borderSide: const BorderSide(color: kOutline),
    borderRadius: BorderRadius.circular(4),
  ),
  disabledBorder: OutlineInputBorder(
    // borderSide: const BorderSide(color: kDisabled),
    borderRadius: BorderRadius.circular(4),
  ),
  focusedBorder: OutlineInputBorder(
    // borderSide: const BorderSide(color: kOutlineFocused),
    borderRadius: BorderRadius.circular(4),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: kError),
    borderRadius: BorderRadius.circular(4),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: kError),
    borderRadius: BorderRadius.circular(4),
  ),
);

/// Light theme
final _lightThemeData = ThemeData.light().copyWith(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    /* primary */
    primary: kPrimary,
    onPrimary: kOnPrimary,
    /* secondary */
    secondary: kSecondary,
    onSecondary: kOnSecondary,
    /* accents */
    primaryContainer: accent1,
    secondaryContainer: accent2,

    /* tertiary */
    // tertiary: kTertiary,

    /* background colors */
    background: kBackground,
    onBackground: kOnBackground,

    /* outline (border) */
    // outline: kOutline,
    // outlineVariant: kOutlineVariant,

    /* statuses */
    error: kError,
    inversePrimary: kSuccess,
  ),
  textTheme: TextTheme(
    headlineLarge: _h1,
    headlineMedium: _h2,
    headlineSmall: _h3,
    titleLarge: _h4,
    bodyLarge: _p1r,
    bodyMedium: _p1b,
    labelLarge: _l1,
    labelSmall: _l2,
  ),
  /* Widget colors */
  appBarTheme: AppBarTheme(
    backgroundColor: kPrimary,
    titleTextStyle: _h1.copyWith(
      color: kOnPrimary,
    ),
  ),
  dialogTheme: const DialogTheme(
    backgroundColor: kBackground,
  ),
  // dividerTheme: const DividerThemeData(color: kOutline),
  dropdownMenuTheme: DropdownMenuThemeData(
    textStyle: const TextStyle(
      // color: kOnSurface,
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ),
    inputDecorationTheme: _inputDecorationTheme,
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      textStyle: const TextStyle(color: kOnPrimary, fontWeight: FontWeight.bold, fontSize: 18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: kPrimary,
    foregroundColor: accent1,
  ),
  iconTheme: const IconThemeData(color: accent1),
  inputDecorationTheme: _inputDecorationTheme,
  listTileTheme: ListTileThemeData(
    selectedTileColor: accent1,
    dense: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    // TODO
  ),
  navigationBarTheme: const NavigationBarThemeData(indicatorColor: accent1),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      textStyle: const TextStyle(
        // color: kOnPrimaryContainer,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
  ),
);

/// TODO Dark theme
final _darkThemeData = ThemeData.dark();
