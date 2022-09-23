import 'package:flutter/material.dart';

class BootstrapThemeData {
  static ThemeData light = ThemeData(
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          textStyle: const TextStyle(
        fontSize: 16,
      )),
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
      textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
    );
  }
}
