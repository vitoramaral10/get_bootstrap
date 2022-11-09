import 'package:bootstrap_example/pages/content/typography_page.dart';
import 'package:flutter/cupertino.dart';

import '../pages/about/license_page.dart';
import '../pages/components/buttons_page.dart';
import '../pages/customize/customize_color_page.dart';
import '../pages/getting-started/introduction_page.dart';
import '../pages/layout/breakpoints_page.dart';

class Routes {
  static const String initialRoute = '/getting-started/introduction';

  static final Map<String, Widget Function(BuildContext)> list = {
    '/getting-started/introduction': (context) => const IntroductionPage(),
    '/customize/color': (context) => const CustomizeColorPage(),
    '/layout/breakpoints': (context) => const BreakpointsPage(),
    '/content/typography': (context) => const TypographyPage(),
    '/components/buttons': (context) => const ButtonsPage(),
    '/about/license': (context) => const LicensePage(),
  };
}
