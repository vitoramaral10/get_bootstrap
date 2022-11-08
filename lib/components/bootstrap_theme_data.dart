part of get_bootstrap;

class BootstrapThemeData {
  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    popupMenuTheme: const PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6.0),
        ),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: BTColors.dark,
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      contentPadding: const EdgeInsets.all(16),
      labelStyle: const TextStyle(
        color: BTColors.dark,
      ),
      hintStyle: const TextStyle(
        color: BTColors.dark,
      ),
      fillColor: BTColors.orange,
      border: const OutlineInputBorder(),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: BTColors.danger),
      ),
      enabledBorder: const OutlineInputBorder(),
      focusedBorder: const OutlineInputBorder(),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: BTColors.gray400,
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: BTColors.danger),
      ),
      errorStyle: GoogleFonts.inter(
        color: BTColors.danger,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: BTColors.gray900,
      thickness: 1,
      space: 16,
    ),
    textTheme: GoogleFonts.openSansTextTheme(
      TextTheme(bodyText2: GetBootstrap.typography.bodyText2),
    ),
  );

  static ButtonStyle navLink({Color color = BTColors.white}) {
    return TextButton.styleFrom(
      foregroundColor: color.withOpacity(0.85),
    );
  }

  static ButtonStyle navLinkActive({Color color = BTColors.white}) {
    return TextButton.styleFrom(
      foregroundColor: color,
      textStyle: light.textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
