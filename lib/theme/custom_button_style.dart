import 'dart:ui';
import 'package:sadid_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(8.00)),
        ),
      );
  static ButtonStyle get fillGrayTL8 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(8.00)),
        ),
      );
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(8.00)),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
