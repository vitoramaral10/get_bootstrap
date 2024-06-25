import 'package:flutter/material.dart';

import '../get_bootstrap.dart';

/// A class that defines the typography styles used in the Bootstrap theme.
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
  /// Creates a new instance of [BTTypography].
  ///
  /// The [BTTypography] class defines the typography styles used in the Bootstrap theme.
  /// Each style is represented by a [TextStyle] object.
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
    headline1 = const TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );

    headline2 = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );
    headline3 = const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );
    headline4 = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );
    headline5 = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );
    headline6 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );
    display1 = const TextStyle(
      fontSize: 80,
      fontWeight: FontWeight.w100,
      height: 1.2,
    );
    display2 = const TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.w100,
      height: 1.2,
    );
    display3 = const TextStyle(
      fontSize: 65,
      fontWeight: FontWeight.w100,
      height: 1.2,
    );
    display4 = const TextStyle(
      fontSize: 56,
      fontWeight: FontWeight.w100,
      height: 1.2,
    );
    display5 = const TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w100,
      height: 1.2,
    );
    display6 = const TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w300,
      height: 1.2,
    );
    lead = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w300,
      height: 1.5,
    );
    bodyText1 = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w300,
      height: 1.5,
    );
    bodyText2 = const TextStyle(
      fontSize: 16,
      height: 1.5,
    );
    button = const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
    highlight = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'CourierPrime',
    );
    small = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.5,
    );
    link = const TextStyle(
      color: BTColors.blue,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5,
    );
  }
}
