import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray =>
      BoxDecoration(
        color: appTheme.gray10001,
      );

  static BoxDecoration get fillPrimary =>
      BoxDecoration(
        color: theme.colorScheme.primary,
      );

  static BoxDecoration get fillGray50 =>
      BoxDecoration(
        color: appTheme.gray500,
      );

  static BoxDecoration get fillGray5001 =>
      BoxDecoration(
        color: appTheme.gray500,
      );

  static BoxDecoration get fillGray90001 =>
      BoxDecoration(
        color: appTheme.gray90001,
      );

  static BoxDecoration get fillLightGreen =>
      BoxDecoration(
        color: appTheme.lightGreen50,
      );

  static BoxDecoration get fillWhiteA =>
      BoxDecoration(
        color: appTheme.whiteA700,
      );

  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [
        appTheme.black90001,
        appTheme.black90001.withOpacity(0.84),
        appTheme.black90001.withOpacity(0)
      ],
    ),
  );
// Outline decorations
 static BoxDecoration get outlineGray => BoxDecoration(
    color: appTheme.whiteA700,
    border: Border.all(
      color: appTheme.gray10001,
      width: 1.h,
    ),
  );
static  BoxDecoration get outlineGray30001 => BoxDecoration(
    border: Border.all(
      color: appTheme.gray10001,
      width: 1.h,
    ),
  );

}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );

  static BorderRadius get circleBorder22 => BorderRadius.circular(
    22.h,
  );
// Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
    1.h,
  );
  // Rounded borders

  static BorderRadius get roundedBorder39 => BorderRadius.circular(
    39.h,
  );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
    8.h,
  );
}





