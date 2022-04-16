import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  String appFontFamily;

  AppTheme(this.appFontFamily);

  ThemeData lightTheme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,

    // Define the default font family.
    fontFamily: 'Roboto',

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 57,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 45,
        color: Colors.white,
      ),
      displaySmall: TextStyle(
        fontSize: 36,
        color: Colors.white,
      ),
      headlineLarge: TextStyle(
        fontSize: 32,
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        color: Colors.white,
      ),
    ),
  );
}
