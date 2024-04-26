import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.primary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.gray90001,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(31),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray90001,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(31),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 36,
        space: 36,
        color: appTheme.gray600,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 18.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w300,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 15.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w300,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: 30.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: 28.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.indigoA200,
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: 22.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 17.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.black90001,
          fontSize: 14.fSize,
          fontFamily: 'HelveticaNeue',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFFFFFFFF),
    primaryContainer: Color(0XFF3F414E),
    secondaryContainer: Color(0XFFE5E5E5),
    errorContainer: Color(0XFFCCCCCC),
    onPrimary: Color(0XFF31363A),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF0C0C0C);
  Color get black90001 => Color(0XFF000000);
// Blue
  Color get blue100 => Color(0XFFB4D9FA);
  Color get blue500 => Color(0XFF1D8CF2);
// BlueGray
  Color get blueGray300 => Color(0XFFA1A4B2);
  Color get blueGray400 => Color(0XFF7E8389);
  Color get blueGray40001 => Color(0XFF8E8E8E);
  Color get blueGray40002 => Color(0XFF888888);
// Gray
  Color get gray100 => Color(0XFFF7F7F7);
  Color get gray10001 => Color(0XFFF4F4F4);
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray30001 => Color(0XFFE1E1E1);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray50 => Color(0XFFF8FAFB);
  Color get gray500 => Color(0XFF9C9C9C);
  Color get gray5001 => Color(0XFFF6FAFF);
  Color get gray600 => Color(0XFF7E7E7E);
  Color get gray700 => Color(0XFF545454);
  Color get gray800 => Color(0XFF414141);
  Color get gray900 => Color(0XFF121212);
  Color get gray90001 => Color(0XFF262626);
  Color get gray90002 => Color(0XFF14212D);
// Indigo
  Color get indigo300 => Color(0XFF7583CA);
  Color get indigoA200 => Color(0XFF5A77FF);
// Red
  Color get red500 => Color(0XFFEB4335);
  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
  // LightGreen
  Color get lightGreen50 => Color(0XFFECFFED);
}
