import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get helveticaNeue {
    return copyWith(
      fontFamily: 'HelveticaNeue',
    );
  }

  TextStyle get arial {
    return copyWith(
      fontFamily: 'Arial',
    );
  }

}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {

  static get bodyLargeInterGray400 => theme.textTheme.bodyLarge!.inter.copyWith(
    color: appTheme.gray400,
    fontWeight: FontWeight.w300,
  );
  static get bodySmallArial => theme.textTheme.bodySmall!.arial.copyWith(
    fontWeight: FontWeight.w400,
  );
  static get bodySmallArialGray500 => theme.textTheme.bodySmall!.arial.copyWith(
    color: appTheme.gray500,
    fontWeight: FontWeight.w400,
  );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray600,
  );
  static get bodySmallRalewayBlack900 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular => theme.textTheme.bodySmall!.copyWith(
    fontSize: 12.fSize,
    fontWeight: FontWeight.w400,
  );
// Title text style
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.black90001,
    fontSize: 18.fSize,
    fontWeight: FontWeight.w600,
  );
  static get titleMediumInterBlack90001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterBlack90001SemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray400 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray400.withOpacity(0.55),
        fontWeight: FontWeight.w800,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray700,
  );
  // Body text style
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumInterBlack90001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumInterBlack90001_1 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumInterBlue500 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blue500,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumInterBluegray400 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray400,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumInterGray600 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumInterGray600Regular =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumInterGray600_1 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumInterIndigo300 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.indigo300,
        fontSize: 13.fSize,
      );
// Headline style
  static get headlineLarge_1 => theme.textTheme.headlineLarge!;
// Title text style
  static get titleMediumBluegray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 16.fSize,
      );
  static get titleMediumGray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray100,
      );
  static get titleMediumRalewayBluegray40001 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 16.fSize,
      );
  static get titleSmallBlue500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue500,
      );
  static get titleSmallBluegray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterBlue500 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blue500,
        fontSize: 15.fSize,
      );
  static get titleSmallInterBluegray300 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleSmallInterGray100 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray100,
      );
  static get titleSmallInterGray500 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray500,
        fontSize: 15.fSize,
      );
  static get titleSmallInterPrimaryContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallInterSemiBold =>
      theme.textTheme.titleSmall!.inter.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
}
