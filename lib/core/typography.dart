import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../get_bootstrap.dart';

class BTTypography {
  TextStyle? headline1;
  TextStyle? headline2;
  TextStyle? headline3;
  TextStyle? headline4;
  TextStyle? headline5;
  TextStyle? headline6;
  TextStyle? display1;
  TextStyle? display2;
  TextStyle? display3;
  TextStyle? display4;
  TextStyle? display5;
  TextStyle? display6;
  TextStyle? lead;
  TextStyle? bodyText1;
  TextStyle? bodyText2;
  TextStyle? small;
  TextStyle? highlight;

  BTTypography({
    this.headline1,
    this.headline2,
    this.headline3,
    this.headline4,
    this.headline5,
    this.headline6,
    this.display1,
    this.display2,
    this.display3,
    this.display4,
    this.display5,
    this.display6,
    this.lead,
    this.bodyText1,
    this.bodyText2,
    this.small,
    this.highlight,
  }) {
    headline1 = GoogleFonts.roboto(
      fontSize: 40,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    headline2 = GoogleFonts.roboto(
      fontSize: 32,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    headline3 = GoogleFonts.roboto(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    headline4 = GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    headline5 = GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    headline6 = GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    display1 = GoogleFonts.roboto(
      fontSize: 80,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    display2 = GoogleFonts.roboto(
      fontSize: 72,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    display3 = GoogleFonts.roboto(
      fontSize: 65,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    display4 = GoogleFonts.roboto(
      fontSize: 56,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    display5 = GoogleFonts.roboto(
      fontSize: 48,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    display6 = GoogleFonts.roboto(
      fontSize: 40,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    lead = GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.w300,
      height: 1.5,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    bodyText1 = GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.w300,
      height: 1.5,
      letterSpacing: 1,
      color: BTColors.gray900,
    );
    bodyText2 = GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: BTColors.gray900,
    );
    highlight = GoogleFonts.robotoMono(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: BTColors.gray900,
    );
    small = GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: BTColors.gray900,
    );
  }
}
