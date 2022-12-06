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
  TextStyle? link;
  TextStyle? button;

  //
  // ignore: long-method
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
    this.link,
    this.button,
  }) {
    headline1 = GoogleFonts.openSans(
      fontSize: 36,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );

    headline2 = GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );
    headline3 = GoogleFonts.openSans(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );
    headline4 = GoogleFonts.openSans(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );
    headline5 = GoogleFonts.openSans(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );
    headline6 = GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );
    display1 = GoogleFonts.openSans(
      fontSize: 80,
      fontWeight: FontWeight.w100,
      height: 1.2,
    );
    display2 = GoogleFonts.openSans(
      fontSize: 72,
      fontWeight: FontWeight.w100,
      height: 1.2,
    );
    display3 = GoogleFonts.openSans(
      fontSize: 65,
      fontWeight: FontWeight.w100,
      height: 1.2,
    );
    display4 = GoogleFonts.openSans(
      fontSize: 56,
      fontWeight: FontWeight.w100,
      height: 1.2,
    );
    display5 = GoogleFonts.openSans(
      fontSize: 48,
      fontWeight: FontWeight.w100,
      height: 1.2,
    );
    display6 = GoogleFonts.openSans(
      fontSize: 40,
      fontWeight: FontWeight.w300,
      height: 1.2,
    );
    lead = GoogleFonts.openSans(
      fontSize: 20,
      fontWeight: FontWeight.w300,
      height: 1.5,
    );
    bodyText1 = GoogleFonts.openSans(
      fontSize: 20,
      fontWeight: FontWeight.w300,
      height: 1.5,
    );
    bodyText2 = GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5,
    );
    button = GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.w500);
    highlight = GoogleFonts.courierPrime(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
    small = GoogleFonts.openSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.5,
    );
    link = GoogleFonts.openSans(
      color: BTColors.blue,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5,
    );
  }
}
