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
      labelStyle: const TextStyle(color: BTColors.dark, fontSize: 16),
      hintStyle: const TextStyle(color: BTColors.gray600, fontSize: 16),
      fillColor: Colors.transparent,
      hoverColor: Colors.transparent,
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: BTColors.gray400,
        ),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: BTColors.danger),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: BTColors.gray400,
        ),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: BTColors.blue500.withOpacity(0.3), width: 4),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        borderSide: BorderSide(
          color: BTColors.gray400,
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
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
      TextTheme(
        headline1: GetBootstrap.typography.headline1,
        headline2: GetBootstrap.typography.headline2,
        headline3: GetBootstrap.typography.headline3,
        headline4: GetBootstrap.typography.headline4,
        headline5: GetBootstrap.typography.headline5,
        headline6: GetBootstrap.typography.headline6,
        bodyText1: GetBootstrap.typography.bodyText1,
        bodyText2: GetBootstrap.typography.bodyText2,
        subtitle1: GetBootstrap.typography.small,
      ),
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
