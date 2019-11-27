import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static Color _iconColor = Colors.blueAccent.shade200;

  //-------light-------
  static Color _lightPrimaryColor = Colors.white;
  static Color _lightPrimaryVariantColor = Color(0xFFe1e1e1);
  static Color _lightSecondaryColor = Colors.green;
  static Color _lightOnPrimaryColor = Colors.black;

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: _lightPrimaryVariantColor,
      appBarTheme: AppBarTheme(
        color: _lightPrimaryVariantColor,
        iconTheme: IconThemeData(color: _lightOnPrimaryColor),
      ),
      colorScheme: ColorScheme.light(
        primary: _lightPrimaryColor,
        primaryVariant: _lightPrimaryVariantColor,
        secondary: _lightSecondaryColor,
        onPrimary: _lightOnPrimaryColor,
      ),
      iconTheme: IconThemeData(color: _iconColor),
      textTheme: _lightTextTheme);

  static final TextTheme _lightTextTheme = TextTheme(
    headline: _lightScreenHeadingTextStyle,
    body1: _lightScreenTaskNameTextStyle,
    body2: _lightScreenTaskDurationTextStyle,
  );

  static final TextStyle _lightScreenHeadingTextStyle =
      TextStyle(fontSize: 48, color: _lightOnPrimaryColor);
  static final TextStyle _lightScreenTaskNameTextStyle =
      TextStyle(fontSize: 20, color: _lightOnPrimaryColor);
  static final TextStyle _lightScreenTaskDurationTextStyle =
      TextStyle(fontSize: 16, color: Colors.grey);

  //-------dark-------
  static Color _darkPrimaryColor = Colors.white24;
  static Color _darkPrimaryVariantColor = Colors.black;
  static Color _darkSecondaryColor = Colors.white;
  static Color _darkOnPrimaryColor = Colors.white;

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkPrimaryVariantColor,
      appBarTheme: AppBarTheme(
        color: _darkPrimaryVariantColor,
        iconTheme: IconThemeData(color: _darkOnPrimaryColor),
      ),
      colorScheme: ColorScheme.light(
        primary: _darkPrimaryColor,
        primaryVariant: _darkPrimaryVariantColor,
        secondary: _darkSecondaryColor,
        onPrimary: _darkOnPrimaryColor,
      ),
      iconTheme: IconThemeData(color: _iconColor),
      textTheme: _darkTextTheme);

  static final TextTheme _darkTextTheme = TextTheme(
    headline: _darkScreenHeadingTextStyle,
    body1: _darkScreenTaskNameTextStyle,
    body2: _darkScreenTaskDurationTextStyle,
  );

  static final TextStyle _darkScreenHeadingTextStyle =
      _lightScreenHeadingTextStyle.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskNameTextStyle =
      _lightScreenTaskNameTextStyle.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskDurationTextStyle =
      _lightScreenTaskDurationTextStyle;
}
