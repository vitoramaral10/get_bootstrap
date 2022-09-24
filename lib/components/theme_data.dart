import 'package:flutter/material.dart';

class BootstrapThemeData {
  static ThemeData light = ThemeData(
    fontFamily: 'DejaVu',
    
    popupMenuTheme: const PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6.0),
        ),
      ),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w500,
        height: 1.5,
        letterSpacing: 1,
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w500,
        height: 1.5,
        letterSpacing: 1,
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.5,
        letterSpacing: 1,
        color: Colors.black,
      ),
      displayLarge: TextStyle(
        fontSize: 80,
        fontWeight: FontWeight.w300,
        height: 1.2,
        letterSpacing: 1,
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.w300,
        height: 1.2,
        letterSpacing: 1,
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w300,
        height: 1.2,
        letterSpacing: 1,
        color: Colors.black,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        height: 1.2,
        letterSpacing: 1,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        height: 1.2,
        letterSpacing: 1,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        height: 1.2,
        letterSpacing: 1,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        height: 1.2,
        letterSpacing: 1,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  static ButtonStyle navLink({Color color = Colors.white}) {
    return TextButton.styleFrom(
      foregroundColor: color.withOpacity(0.85),
    );
  }

  static ButtonStyle navLinkActive({Color color = Colors.white}) {
    return TextButton.styleFrom(
      foregroundColor: color,
      textStyle: light.textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
