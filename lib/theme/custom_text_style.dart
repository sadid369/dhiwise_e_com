import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMedium14_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumBluegray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumGray6000114 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumGray60001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumGray60002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60002,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumMontserrat => theme.textTheme.bodyMedium!.montserrat;
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumPrimaryContainer14 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallGray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray200,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  // Display text style
  static get displayMediumMontserratGray200 =>
      theme.textTheme.displayMedium!.montserrat.copyWith(
        color: appTheme.gray200,
      );
  static get displaySmallGray400 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.gray400,
        fontSize: getFontSize(
          35,
        ),
        fontWeight: FontWeight.w400,
      );
  static get displaySmallLatoGray200 =>
      theme.textTheme.displaySmall!.lato.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w500,
      );
  // Headline text style
  static get headlineSmallGray900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeGray900Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeGray900_2 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeWhiteA700_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleMediumLatoWhiteA700 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLatoWhiteA700Medium =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray10002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray10002,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray60002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallMontserratPrimary =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get playfairDisplay {
    return copyWith(
      fontFamily: 'Playfair Display',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
