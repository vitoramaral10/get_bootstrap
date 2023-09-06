import 'package:flutter/cupertino.dart';

import '../pages/about/license_page.dart';
import '../pages/components/alerts_page.dart';
import '../pages/components/buttons_page.dart';
import '../pages/content/typography_page.dart';
import '../pages/customize/customize_color_page.dart';
import '../pages/example/sign_in_page.dart';
import '../pages/form/form_control_page.dart';
import '../pages/getting-started/introduction_page.dart';
import '../pages/layout/breakpoints_page.dart';
import '../pages/layout/grid_page.dart';

class Routes {
  static const String initialRoute = '/getting-started/introduction';

  static final Map<String, Widget Function(BuildContext)> list = {
    '/about/license': (final context) => const LicensePage(),
    '/components/alerts': (final context) => const AlertsPage(),
    '/components/buttons': (final context) => const ButtonsPage(),
    '/content/typography': (final context) => const TypographyPage(),
    '/customize/color': (final context) => const CustomizeColorPage(),
    '/examples/sign_in': (final context) => const SignInPage(),
    '/forms/form_control': (final context) => const FormControlPage(),
    '/getting-started/introduction': (final context) =>
        const IntroductionPage(),
    '/layout/breakpoints': (final context) => const BreakpointsPage(),
    '/layout/grid': (final context) => const GridPage(),
  };
}
