import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  }) {
    headline1 = GoogleFonts.roboto(
      fontSize: 40,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
    headline2 = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
    headline3 = const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
    headline4 = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
    headline5 = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
    headline6 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
    display1 = const TextStyle(
      fontSize: 80,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
    display2 = const TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
    display3 = const TextStyle(
      fontSize: 65,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
    display4 = const TextStyle(
      fontSize: 56,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
    display5 = const TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
    display6 = const TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
    lead = const TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w100,
      height: 1.2,
      letterSpacing: 1,
      color: Colors.black,
    );
  }
}
