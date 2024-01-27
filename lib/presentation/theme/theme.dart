import 'package:flutter/material.dart';

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

/// Input decoration theme for,
/// TextField, TextFormField, DropDownMenu
final _inputDecorationTheme = InputDecorationTheme(
  fillColor: Colors.white,
  filled: true,
  isDense: true,
  contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
  labelStyle: const TextStyle(color: kOnSurface, fontSize: 14),
  hintStyle: const TextStyle(color: kOnSurface, fontSize: 12),
  // hintStyle: const TextStyle(color: kTextHint),
  border: OutlineInputBorder(
    borderSide: const BorderSide(color: kOutline),
    borderRadius: BorderRadius.circular(4),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: kOutline),
    borderRadius: BorderRadius.circular(4),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: kDisabled),
    borderRadius: BorderRadius.circular(4),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: kOutlineFocused),
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
    primaryContainer: kPrimaryContainer,
    onPrimaryContainer: kOnPrimaryContainer,

    // /* secondary */
    // secondary: kSecondary,
    // onSecondary: kOnSecondary,
    // secondaryContainer: kSecondaryContainer,

    // /* tertiary */
    // tertiary: kTertiary,
    // onTertiary: kOnTertiary,
    // tertiaryContainer: kTertiaryContainer,
    // onTertiaryContainer: kOnTertiaryContainer,

    /* background colors */
    // background: kBackground,
    // // on hover
    surface: kSurface,
    onSurface: kOnSurface,
    surfaceVariant: kSurfaceContainer,

    /* outline (border) */
    outline: kOutline,
    outlineVariant: kOutlineVariant,

    /* statuses */
    error: kError,
  ),
  /* Widget colors */
  dialogTheme: const DialogTheme(
    backgroundColor: kSurface,
  ),
  dividerTheme: const DividerThemeData(color: kOutline),
  drawerTheme: const DrawerThemeData(
    backgroundColor: kSurfaceContainer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.zero),
    ),
  ),
  listTileTheme: ListTileThemeData(
    selectedTileColor: kPrimaryContainer,
    dense: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    // TODO
  ),
  inputDecorationTheme: _inputDecorationTheme,
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      textStyle: const TextStyle(color: kOnPrimary, fontWeight: FontWeight.bold, fontSize: 18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      textStyle: const TextStyle(
        color: kOnPrimaryContainer,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    textStyle: const TextStyle(color: kOnSurface, fontSize: 15, fontWeight: FontWeight.w600),
    inputDecorationTheme: _inputDecorationTheme,
  ),
);

/// TODO Dark theme
final _darkThemeData = ThemeData.dark();
