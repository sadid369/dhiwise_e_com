import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray10001,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray200,
          width: getHorizontalSize(1),
        ),
      );

  // Primary decorations
  static BoxDecoration get primary => BoxDecoration(
        color: appTheme.gray900,
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray200,
          width: getHorizontalSize(1),
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder28 => BorderRadius.circular(
        getHorizontalSize(28),
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        getHorizontalSize(50),
      );

  // Custom borders
  static BorderRadius get customBorderTL200 => BorderRadius.vertical(
        top: Radius.circular(getHorizontalSize(200)),
      );
  static BorderRadius get customBorderTL279 => BorderRadius.vertical(
        top: Radius.circular(getHorizontalSize(279)),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        getHorizontalSize(12),
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        getHorizontalSize(4),
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        getHorizontalSize(8),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
