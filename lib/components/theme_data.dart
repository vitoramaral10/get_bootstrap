part of get_bootstrap;

class BootstrapThemeData {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    popupMenuTheme: const PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6.0),
        ),
      ),
    ),
    // ignore: prefer_const_constructors
    dividerTheme: DividerThemeData(
      color: BTColors.gray300,
      thickness: 1,
      space: 1,
    ),
    textTheme: GoogleFonts.robotoTextTheme(
      TextTheme(
        bodyText2: GetBootstrap.typography.bodyText2
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
