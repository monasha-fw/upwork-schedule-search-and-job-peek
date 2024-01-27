part of 'theme.dart';

/// Notes on Colors
///
/// [Primary] - base color
/// [OnPrimary] - is applied to content (icons, text, etc.) that sits on top of primary
/// [PrimaryContainer] - is applied to elements needing less emphasis than primary
/// [OnPrimaryContainer] - is applied to content (icons, text, etc.) that sits on top of primary container
///
/// [Neutral] roles are used for surfaces and backgrounds, as well as high emphasis text and icons.
/// https://m3.material.io/styles/color/the-color-system/color-roles

/* primary */
const kPrimary = Color.fromRGBO(34, 151, 243, 1);
const kOnPrimary = Color.fromRGBO(255, 255, 255, 1);
const kPrimaryContainer = Color.fromRGBO(215, 235, 255, 1);
const kOnPrimaryContainer = Color.fromRGBO(29, 37, 57, 1);

/* surface colors */
const kSurface = Color.fromRGBO(255, 255, 255, 1);
const kOnSurface = Color.fromRGBO(51, 51, 51, 1);
const kSurfaceContainer = Color.fromRGBO(238, 247, 255, 1);

/* outline colors */
const kOutline = Color.fromRGBO(42, 42, 42, 1);
const kOutlineFocused = Color.fromRGBO(26, 26, 26, 1);
const kOutlineVariant = Color.fromRGBO(228, 236, 245, 1);

/* statuses */
const kError = Color.fromRGBO(244, 124, 124, 1);
const kInfo = Color.fromRGBO(56, 193, 225, 1);
const kSuccess = Color.fromRGBO(86, 198, 170, 1);
const kDisabled = Color.fromRGBO(176, 183, 191, 1);
